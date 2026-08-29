# Prompt-family follow-ups (parked)

**Status:** parked · 2026-08-25  
**From:** Exploration → quartet → seats → phase-pipeline chat (closed YES)  
**Habit:** on close-out, land optional follow-ups like this so a **new** chat can `@` the path (`CLOSE_CHAT.md` § Optional follow-ups).  
**Not a backlog to grind** — open only when pain shows or you choose a field test.

---

## Done (do not re-open as “left to build”)

Modes A–D · Audit · Explore · Seat openers · Research / Plan-gate / Phase pipeline · Day #1/#5 sync · anti-failure harden · install/index/smoke · pushed to `origin/master`.

Canonical front doors: `optional/WORKFLOW_LAB_DIGEST.md` · `optional/PASTEABLES_INDEX.md` · seats `SEAT_PROMPTS.md`.

---

## Optional follow-ups

### 1. Field test (highest leverage)

Run the gated pipeline once on a real product repo:

1. `RESEARCH_REPORT.md` (no edits)  
2. Human gate  
3. `PLAN_APPROVAL.md` → APPROVE / NARROW / REJECT  
4. Engineer E1 / `SPEC_BUILD`  
5. Verify (E2 / day #2)

**DoD:** Note what failed in practice (section filler, skipped gates, weak cites) → patch only those kits.  
**Where to log results:** this file § Field-test log, or a dated row in `OPERATOR_WORKFLOW.md` Log.

### 2. Re-install lab into product repos

On machines/repos that should receive kits:

```bash
./install.sh /path/to/project --with-workflow-lab
# and/or
./install.sh /path/to/project --with-seats
```

Windows satellite had **no** `docs/workflow-lab/` installs when checked (2026-08-20). Pop / product trees may still be stale until re-run.

### 3. Specialist openers (twice-bitten only)

Parked until the same gap bites ~2×:

| Specialist | Trigger example |
|------------|-----------------|
| Docs | Repeated doc↔code drift passes needing a dedicated paste |
| Tests | “What proofs to add” without full Audit |
| Migration / data-safety | High-blast migrate asks |
| Incident / bisect | Runtime debug genre (≠ Attacker falsify) |
| PR packet | Beyond Engineer E3 handoff |
| Release / ship checklist | Ship DoD / stop |
| Perf investigation | Evidence-led perf, not rewrite |
| Security pass (scoped) | Beyond Attacker K1–K4 |

**Home if built:** extend `SEAT_PROMPTS.md` or thin `SPECIALIST_PROMPTS.md` — not new seats, not Mode E.

### 4. Old cloud Audit draft

Chat-only “Full Repository Audit” draft was never recovered. Current `REPOSITORY_AUDIT.md` stands. Only reopen if the old paste surfaces and a diff is worth merging.

### 5. Hygiene R1/R8

Older overlay parked item (gather evidence). Unrelated to prompt-family completeness — keep parked until chosen.

### 6. Desktop layout — `Projects` + `Cursor Workspaces` (2026-08-13 talk)

**From:** opack / Desktop hygiene chat (closed). Talk-only — **not executed**.

**Decided framing (recommendation, not done):**
- Universal **layout**, not identical absolute paths across OSes.
- Repos visible under a parent folder; saved Cursor `.code-workspace` files in a **named** shelf.
- Prefer: `~/Desktop/Projects/` (git trees) + sibling or child **`Cursor Workspaces/`** (workspace files only).
- **NOT:** project symlinks · putting git trees inside `Cursor Workspaces` · half-move (some Desktop, some Projects).

**Open when:** operator schedules a quiet hygiene pass (moves break Cursor chat binding — one coordinated migrate + path pass).  
**Where to log results:** this § + `OPERATOR_WORKFLOW.md` Log/Pickup.

---

## Explicit NOT

- Mode E  
- Mega-prompt merging all kits  
- Review fleets  
- Renaming seats to “Research/Analysis Agent”  
- Authoring more kits for their own sake

---

## Field-test log

| Date | Repo | What broke / what worked | Kit patched? |
|------|------|--------------------------|--------------|
| — | — | — | — |

---

## Open when

| Signal | Open |
|--------|------|
| “Did the pipeline work?” | §1 Field test |
| Product repo missing kits | §2 Re-install |
| Same specialist ask twice | §3 |
| Found old Audit paste | §4 |
