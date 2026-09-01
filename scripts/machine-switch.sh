#!/usr/bin/env bash
# Machine-switch status (and optional safe sync) for the active-set manifest.
#
# Usage:
#   ./scripts/machine-switch.sh              # review only (default)
#   ./scripts/machine-switch.sh --apply      # ff-only pull on clean notes/capture
#   ./scripts/machine-switch.sh --role pop   # force host role (pop | satellite)
#
# Env:
#   ACTIVE_SET  — path to active-set.yaml
#   MACHINE_ROLE — pop | satellite (auto-detect if unset)
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PACK_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
APPLY=0
ROLE="${MACHINE_ROLE:-}"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --apply) APPLY=1; shift ;;
    --role) ROLE="${2:?}"; shift 2 ;;
    -h|--help)
      sed -n '2,12p' "$0"
      exit 0
      ;;
    *) echo "Unknown arg: $1" >&2; exit 2 ;;
  esac
done

resolve_config() {
  if [[ -n "${ACTIVE_SET:-}" && -f "$ACTIVE_SET" ]]; then
    echo "$ACTIVE_SET"
    return
  fi
  if [[ -f "${HOME}/.config/opack/active-set.yaml" ]]; then
    echo "${HOME}/.config/opack/active-set.yaml"
    return
  fi
  if [[ -f "${PACK_ROOT}/config/active-set.yaml" ]]; then
    echo "${PACK_ROOT}/config/active-set.yaml"
    return
  fi
  echo "${PACK_ROOT}/config/active-set.example.yaml"
}

detect_role() {
  if [[ -n "$ROLE" ]]; then
    echo "$ROLE"
    return
  fi
  case "$(uname -s)" in
    MINGW*|MSYS*|CYGWIN*) echo satellite ;;
    *) echo pop ;;
  esac
}

CONFIG="$(resolve_config)"
ROLE="$(detect_role)"

export CONFIG ROLE APPLY PACK_ROOT
python3 - "$CONFIG" "$ROLE" "$APPLY" <<'PY'
import os, re, subprocess, sys
from pathlib import Path

config_path, role, apply_s = sys.argv[1], sys.argv[2], sys.argv[3] == "1"

def expand(p: str) -> str:
    return str(Path(os.path.expanduser(p)))

def parse_yaml(path: Path):
    text = path.read_text(encoding="utf-8")
    repos, cur, in_paths = [], {}, False
    for raw in text.splitlines():
        line = raw.split("#", 1)[0].rstrip()
        if not line.strip():
            continue
        if re.match(r"\s*-\s+name:\s*", line):
            if cur:
                repos.append(cur)
            cur = {"name": line.split(":", 1)[1].strip()}
            in_paths = False
            continue
        m = re.match(r"\s+class:\s*(\S+)", line)
        if m and cur is not None:
            cur["class"] = m.group(1)
            continue
        m = re.match(r"\s+family:\s*(.+)", line)
        if m and cur is not None:
            cur["family"] = m.group(1).strip()
            continue
        if re.match(r"\s+paths:\s*$", line):
            in_paths = True
            cur.setdefault("paths", {})
            continue
        if in_paths:
            m = re.match(r"\s+(pop|satellite):\s*(.+)", line)
            if m:
                val = m.group(2).strip()
                cur["paths"][m.group(1)] = None if val in ("null", "~", '""', "''") else val
    if cur:
        repos.append(cur)
    return repos

def git(args, cwd):
    return subprocess.run(
        ["git", *args],
        cwd=cwd,
        capture_output=True,
        text=True,
        check=False,
    )

def status_line(repo_path: Path):
    if not repo_path.is_dir():
        return None
    if not (repo_path / ".git").exists():
        return {"state": "not-git", "path": str(repo_path)}
    branch = git(["rev-parse", "--abbrev-ref", "HEAD"], repo_path).stdout.strip()
    dirty = bool(git(["status", "--porcelain"], repo_path).stdout.strip())
    upstream = git(["rev-parse", "--abbrev-ref", "@{upstream}"], repo_path)
    if upstream.returncode != 0:
        return {
            "state": "ok",
            "path": str(repo_path),
            "branch": branch,
            "dirty": dirty,
            "ahead": 0,
            "behind": 0,
            "no_upstream": True,
            "last": git(["log", "-1", "--format=%h %s (%cr)"], repo_path).stdout.strip(),
        }
    ahead = int(git(["rev-list", "--count", "@{upstream}..HEAD"], repo_path).stdout.strip() or 0)
    behind = int(git(["rev-list", "--count", "HEAD..@{upstream}"], repo_path).stdout.strip() or 0)
    return {
        "state": "ok",
        "path": str(repo_path),
        "branch": branch,
        "dirty": dirty,
        "ahead": ahead,
        "behind": behind,
        "no_upstream": False,
        "last": git(["log", "-1", "--format=%h %s (%cr)"], repo_path).stdout.strip(),
    }

def recommend(cls, st):
    if st.get("state") == "not-git":
        return "skip — not a git repo"
    if st.get("state") != "ok":
        return "skip"
    if st.get("no_upstream"):
        return "set upstream or push -u"
    d, a, b = st["dirty"], st["ahead"], st["behind"]
    if d and (a or b):
        return "STOP — dirty + diverged; commit/stash before sync"
    if d:
        return "dirty — review diff; notes/capture: commit+push when leaving machine"
    if b and a:
        return "diverged — pull --rebase or merge manually"
    if b:
        return "behind — pull --ff-only" + (" (apply ok)" if cls in ("notes", "capture") else " (report only)")
    if a:
        if cls in ("notes", "capture"):
            return "ahead — push before leaving machine"
        return "ahead — push when you land a slice (product)"
    return "in sync"

def maybe_apply(cls, st):
    if not apply_s or cls not in ("notes", "capture"):
        return ""
    if st.get("dirty") or st.get("ahead") or not st.get("behind"):
        return ""
    path = st["path"]
    r = git(["pull", "--ff-only"], path)
    if r.returncode == 0:
        return "APPLIED: pull --ff-only"
    return f"APPLY FAILED: {r.stderr.strip() or r.stdout.strip()}"

cfg = Path(config_path)
if not cfg.is_file():
    print(f"ERROR: config not found: {cfg}", file=sys.stderr)
    sys.exit(1)

repos = parse_yaml(cfg)
print(f"config: {cfg}")
print(f"role:   {role}")
print(f"mode:   {'apply (notes/capture ff-only pull)' if apply_s else 'review only'}")
print()
print(f"{'NAME':<22} {'CLASS':<8} {'SYNC':<12} {'BRANCH':<16} {'RECOMMENDATION'}")
print("-" * 100)

for repo in repos:
    paths = repo.get("paths", {})
    raw = paths.get(role)
    if raw is None:
        print(f"{repo.get('name','?'):<22} {repo.get('class','?'):<8} {'—':<12} {'—':<16} workhorse-only on this role")
        continue
    path = expand(raw)
    st = status_line(Path(path))
    if st is None:
        print(f"{repo.get('name','?'):<22} {repo.get('class','?'):<8} {'missing':<12} {'—':<16} path not found: {path}")
        continue
    if st.get("state") == "not-git":
        print(f"{repo.get('name','?'):<22} {repo.get('class','?'):<8} {'not-git':<12} {'—':<16} {path}")
        continue
    sync = "dirty" if st["dirty"] else (
        f"+{st['ahead']}/-{st['behind']}" if st["ahead"] or st["behind"] else "ok"
    )
    rec = recommend(repo.get("class", "product"), st)
    applied = maybe_apply(repo.get("class", "product"), st)
    if applied:
        rec = f"{rec} | {applied}"
    print(f"{repo.get('name','?'):<22} {repo.get('class','?'):<8} {sync:<12} {st['branch']:<16} {rec}")
    if st.get("last"):
        print(f"{'':22} {'':8} {'':12} {'':16} last: {st['last']}")

print()
print("product repos: report only unless you ask to land a slice.")
PY
