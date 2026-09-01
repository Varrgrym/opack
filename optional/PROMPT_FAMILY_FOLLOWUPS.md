# Prompt-family follow-ups (parked)

**Status:** parked · 2026-08-25  
**From:** Exploration → quartet → seats → phase-pipeline chat (closed YES)  
**Habit:** on close-out, land optional follow-ups like this so a **new** chat can `@` the path (`CLOSE_CHAT.md` § Optional follow-ups).  
**Not a backlog to grind** — open only when pain shows or you choose a field test.

---

## Done (do not re-open as “left to build”)

Modes A–D · Audit · Explore · Seat openers · Research / Plan-gate / Phase pipeline · Day #1/#5 sync · anti-failure harden · install/index/smoke · pushed to `origin/master`.

**2026-09-01 (prompt efficiency chat):** Single always-on digest · thin overlay · `OPACK_OPERATOR_CONTEXT.md` · user rules 13→6 on Pop · commits `ca178a6` · `1fca4d8` · `afb140b` on `origin/master`.

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

### 7. Seat habit proof (2026-08-23 seats / Auto chat)

**From:** pull · seats vs Auto · Attacker 4.6 · `think hard` / `check this` chat (closed YES).

**Habit (ongoing):**
- Default **Engineer** (Auto or pin GPT-5.6 Sol).
- **`check this`** / scary → **pin Reviewer** (Opus 5 High) on the artifact — not `Seat: Reviewer` on Auto.
- **Label without pin = theater** (`OPERATOR_WORKFLOW.md` phrase locks).

**Optional proof (one spike, not a roster expansion):**
- Run **one** on-call seat on a **real** ask when it appears:
  - **Archivist** — pin Gemini 3.1 Pro · named question → cite paths → compress → hand off (`SEAT_PROMPTS.md` A1).
  - **Attacker** — pin Grok 4.6 High · falsify one load-bearing claim (`SEAT_PROMPTS.md` K1).
- **DoD:** One line in Field-test log below or overlay Log: seat used · ask · enough / not worth repeating.
- **If never triggered:** leave on-call idle — **not** failure; promotion rule still ~3× same gap.

**NOT:** staff all five toggles · Auto as second mind · review fleets.

### 8. Digest consolidation verify (2026-09-01)

**From:** prompt-bloat review chat (closed YES). Landed on `origin/master`.

**What changed:**
- One always-on `.mdc` (`follow-operator-pack.mdc`); `workflow-lab.mdc` removed from install
- Opack overlay thinned → `@optional/OPACK_OPERATOR_CONTEXT.md`
- Global user rules on Pop: 13 duplicate rules removed, 6 tooling-only via `cursor_dialog`

**Open when (optional verify, not blocking):**
1. **New chat smoke** — trivial code ask on opack: no Mode D theater; say "review this project" → Mode D without mode quiz
2. **Satellite** — Cursor Settings → Rules → User: confirm 6 rules synced (or re-run trim from `USER_RULES_MINIMAL_PASTE.md`)
3. **Stale installs** — on lab-enabled product repos: delete `.cursor/rules/workflow-lab.mdc` if present; re-run `./install.sh … --with-workflow-lab` when you want kit files refreshed

**DoD:** One line in Field-test log or overlay Log: "agents feel less lost" yes/no + which test failed.

**NOT:** re-expand always-on digests · promote reply protocol to always-on without confirm.

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
| Desktop / workspace hygiene | §6 |
| Prove seats vs Auto theater | §7 Seat habit proof |
| After digest consolidation | §8 Verify (new chat · satellite rules · stale workflow-lab.mdc) |
