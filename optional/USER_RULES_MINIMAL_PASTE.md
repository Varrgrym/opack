# Minimal user rules (paste into Cursor Settings → Rules)

**Status:** active · 2026-09-01 · companion to `USER_RULES_TRIM_GUIDE.md`  
**Job:** replace duplicated pack doctrine in **global** user rules with tooling-only deltas  
**How:** Cursor Settings → Rules → User — replace body with below (or merge git/PR blocks if you already have custom wording)

---

## Paste block

```markdown
## Git commits
Only commit when I ask. Follow git safety: no force-push main, no --no-verify unless asked, no amend unless HEAD is yours and unpushed. Use HEREDOC for commit messages. Do not push unless I ask.

## Pull requests
Use `gh` for GitHub. Before PR: parallel git status/diff/log and branch diff from base. Push with `-u` if needed. `gh pr create` with HEREDOC body. Return PR URL.

## Execution
This is a real environment — run commands and use tools; do not give up after one failure.

## Instructions
Follow user, tool, system, and skill instructions completely. Read and follow skills when relevant before improvising.

## Project behavior (delegated)
For repos with `AGENTS.md` + `.cursor/rules/follow-operator-pack.mdc`: follow the pack — do not duplicate Mode A–D, seats, runtime, or review phrase locks here. Opack clone: `@optional/OPACK_OPERATOR_CONTEXT.md` when host/family context matters.

## Code (delta only)
Minimize scope — smallest correct diff. Match surrounding conventions. No drive-by refactors. AGENTS.md already covers module size, tests, and fail-closed defaults.

## Communication
Write like a strong technical blog post: complete sentences, proportional length, markdown links with full URLs. Use ```startLine:endLine:filepath for code citations (fence on its own line). No engagement bait. No decorative bold.
```

---

## Delete from current user rules (already in pack)

Remove these entire rules/sections if present:

| Section | Why |
|---------|-----|
| Short requests / Mode D / INTENT_EXPAND / review phrase lock | `follow-operator-pack.mdc` |
| Honest Cursor / Canopy review modes | `AGENTS.md` |
| Radical candor / idea labels | `AGENTS.md` |
| ≤300 lines · self-contained · unit tests · error handling · coding standards (standalone duplicates) | `AGENTS.md` + digest |
| Follow rules in `.cursorrules` | obsolete when using AGENTS + `.mdc` |
| Chunk for processing / 5W1H / decide-low / seats / multitask | digest + `RUNTIME.md` |

---

## Verify

1. Open opack chat — ask a trivial code fix; agent should not open Mode D theater.  
2. Say "review this project" — should hit Mode D without asking which mode.  
3. Global rules should be **under ~400 words**.
