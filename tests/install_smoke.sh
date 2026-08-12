#!/usr/bin/env bash
# Tiny install.sh smoke — no deps. Exit 0 on pass.
# Usage: from opack root → ./tests/install_smoke.sh
set -euo pipefail

PACK_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
INSTALL="$PACK_ROOT/install.sh"
FAIL=0

pass() { echo "PASS: $*"; }
fail() { echo "FAIL: $*" >&2; FAIL=1; }

need() {
  local path="$1" msg="$2"
  if [[ -e "$path" ]]; then
    pass "$msg"
  else
    fail "$msg (missing $path)"
  fi
}

forbid() {
  local path="$1" msg="$2"
  if [[ -e "$path" ]]; then
    fail "$msg (unexpected $path)"
  else
    pass "$msg"
  fi
}

[[ -x "$INSTALL" ]] || { echo "install.sh missing/not executable" >&2; exit 1; }

# --- dry-run shows ORGANISM copy ---
DRY_OUT="$(mktemp)"
"$INSTALL" "$(mktemp -d)" --with-workflow-lab --dry-run >"$DRY_OUT"
if grep -q 'ORGANISM_PLACEMENT.md' "$DRY_OUT"; then
  pass "dry-run lists ORGANISM_PLACEMENT"
else
  fail "dry-run missing ORGANISM_PLACEMENT"
fi

# --- live baseline + lab ---
LIVE="$(mktemp -d /tmp/opack-smoke.XXXXXX)"
"$INSTALL" "$LIVE" --with-workflow-lab >/dev/null

need "$LIVE/AGENTS.md" "baseline AGENTS"
need "$LIVE/OPERATOR_WORKFLOW.md" "baseline OPERATOR_WORKFLOW"
need "$LIVE/.cursor/rules/follow-operator-pack.mdc" "always-on digest"
need "$LIVE/docs/workflow-lab/ORGANISM_PLACEMENT.md" "lab ships ORGANISM_PLACEMENT"
need "$LIVE/docs/workflow-lab/PASTEABLES_INDEX.md" "lab ships PASTEABLES"
forbid "$LIVE/docs/workflow-lab/CREATIVE_OPERATOR_KIT.md" "lab does not ship creative kit"
forbid "$LIVE/docs/workflow-lab/RUNTIME_HYGIENE_IDEAS.md" "lab does not ship hygiene ideas"
forbid "$LIVE/docs/workflow-lab/archive" "lab does not ship archive/"

if grep -q 'After install (paths)' "$LIVE/AGENTS.md"; then
  pass "AGENTS includes path-aware notes"
else
  fail "AGENTS missing After install (paths)"
fi

# --- seats dial ---
SEATS="$(mktemp -d /tmp/opack-smoke-seats.XXXXXX)"
"$INSTALL" "$SEATS" --with-seats >/dev/null
need "$SEATS/docs/CURSOR_MODEL_SEATS.md" "seats dial copies picker"
forbid "$SEATS/docs/workflow-lab" "seats-only does not create workflow-lab"

# --- preserve existing overlay ---
PRESERVE="$(mktemp -d /tmp/opack-smoke-wf.XXXXXX)"
echo "CUSTOM_OVERLAY_MARKER" >"$PRESERVE/OPERATOR_WORKFLOW.md"
"$INSTALL" "$PRESERVE" >/dev/null
if grep -q 'CUSTOM_OVERLAY_MARKER' "$PRESERVE/OPERATOR_WORKFLOW.md"; then
  pass "keeps existing OPERATOR_WORKFLOW without --force-workflow"
else
  fail "clobbered OPERATOR_WORKFLOW without --force-workflow"
fi

# --- bad profile fail-closed ---
set +e
"$INSTALL" "$LIVE" --profile totally-fake >/dev/null 2>&1
ec=$?
set -e
if [[ "$ec" -eq 2 ]]; then
  pass "unknown --profile exits 2"
else
  fail "unknown --profile exit=$ec (want 2)"
fi

if [[ "$FAIL" -ne 0 ]]; then
  echo "install smoke FAILED" >&2
  exit 1
fi
echo "install smoke OK"
exit 0
