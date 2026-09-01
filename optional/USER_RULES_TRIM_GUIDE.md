# User rules trim guide (manual)

**Status:** active · 2026-09-01 · opack-local operator note  
**Job:** reduce duplicate instructions between **global Cursor user rules** and the installed pack  
**NOT:** a second Layer A · not copied by install

---

## Why

Agents load **user rules + project rules + AGENTS.md + overlay + `.mdc`** every chat. When all five repeat “Mode D on review” or “≤300 lines,” models overweight conflicting phrasing and under-weight the actual task.

**Target:** user rules = **personal tooling deltas only**. Project behavior = `AGENTS.md` + overlay + `follow-operator-pack.mdc`.

---

## Keep in global user rules

| Category | Examples |
|----------|----------|
| Git / PR workflow | commit-when-asked protocol · `gh pr create` steps |
| Communication taste | prose quality · citation format · no engagement bait |
| Personal coding prefs **not** in AGENTS | only if you deliberately want them on *every* repo regardless of install |
| Tool-specific habits | “use gh for GitHub” · “run commands yourself” |

---

## Remove or shorten (already in pack)

If your user rules contain any of these, **delete or one-line pointer** — they live in `AGENTS.md` / `follow-operator-pack.mdc`:

- Radical candor · evidence over narrative · idea labels (fact/decided/NOT)
- Mode A–D phrase locks · “review this project” → Mode D
- Runtime stanza · seats · Auto ≠ seats · multitask off · no review fleets
- Chunk for processing never for understanding · 5W1H on substantial work
- Decide-low / ask-high · DoD stop · close-out protocol
- ≤300 lines/module · fail-closed · tests (unless you want *stricter* personal bar — then say “stricter than AGENTS” in one line)
- INTENT_EXPAND · EXTRACT_AND_ORGANIZE · WORKFLOW_LAB references
- Honest Cursor / Canopy review modes (duplicate of AGENTS review table)
- `.cursorrules` pointer if project uses `AGENTS.md` + `.mdc` instead

**Reply protocol (`TLDR:` / `Next steps:`):** keep **out** of user rules unless you want it on every repo every turn. In opack, `@optional/OPERATOR_REPLY_PROTOCOL.md` when you want that shape.

---

## Quick audit

1. Open Cursor Settings → Rules (user rules).  
2. Highlight any paragraph that appears verbatim (or near-verbatim) in `AGENTS.md`.  
3. Delete or replace with: `Follow project AGENTS.md and .cursor/rules/`  
4. Re-test one chat on opack and one on a thin product repo.

---

## After trim

| Layer | Role |
|-------|------|
| User rules | Personal git/PR/comms/tooling only (~few hundred words max) |
| `follow-operator-pack.mdc` | Thin always-on digest (~57 lines) |
| `AGENTS.md` | Full Layer A constitution |
| `OPERATOR_WORKFLOW.md` | Project overlay (thin; opack uses `OPACK_OPERATOR_CONTEXT.md` on demand) |
| `optional/*` kits | Paste / `@` when the job needs depth |
