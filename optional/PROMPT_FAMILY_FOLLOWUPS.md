# Prompt-family follow-ups (parked)

**Status:** parked · 2026-08-25  
**From:** Exploration → quartet → seats → phase-pipeline chat (closed YES)  
**Habit:** opack pinned close land target — on **go**, append Must-land + follow-ups here (`CLOSE_CHAT.md`). New chat `@` this path.  
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
**Optional add-on (2026-09-06):** same repo, one pass with `Stage: Scout · Shape: scatter` → funnel → `Soldier/sniper` using `EXPANSION_LIFECYCLE.md` + `ENGAGEMENT_SHAPES.md` — log in Field-test log.  
**Where to log results:** this file § Field-test log, or a dated row in `OPERATOR_WORKFLOW.md` Log.

### 2. Re-install lab into product repos

On machines/repos that should receive kits:

```bash
./install.sh /path/to/project --with-workflow-lab
# and/or
./install.sh /path/to/project --with-seats
```

**Pop Desktop (2026-09-02):** reinstalled from current opack into 11 targets (baseline / seats / seats+garden / seats+lab as each already had). Verified match on `AGENTS.md` · `follow-operator-pack.mdc` · `CLOSE_CHAT.md`; removed stale `workflow-lab.mdc` on UAH + MHCOS. Windows satellite still unchecked from Pop — re-run there when on that machine.

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
3. **Stale installs** — Pop lab repos refreshed 2026-09-02 (see §2). Satellite / new clones: delete `.cursor/rules/workflow-lab.mdc` if present; re-run `./install.sh …` with prior dials.

**DoD:** One line in Field-test log or overlay Log: "agents feel less lost" yes/no + which test failed.

**NOT:** re-expand always-on digests · promote reply protocol to always-on without confirm.

---

## Session close · 2026-09-06

**From:** opack currency check → make installs current (Sep 2 work) · close-out this thread.  
**Intended goal:** Know if local installs matched opack; make Desktop installs current.  
**Outcome:** done (this chat)  
**Gap:** Windows satellite not refreshed from Pop; no personal `~/.config/opack/active-set.yaml` (still example). Product pack commits were ask-high — several product trees may still be dirty for *other* work.  
**Leftover state:** none from install (no overrides/flags).  
**Follow-ups (next chat):** satellite reinstall when on Windows · optional personal active-set · commit product pack diffs only when landing a slice.  
**NOT pursuing now:** day #10 · invent backlog from product dirtiness.

---

## Session close · 2026-09-06 (expansion lifecycle · engagement shapes)

**From:** repo sync · Attacker prompt · RTS expansion metaphor · gun I/O shapes · framework router chat (closed YES).  
**Intended goal:** Repos current; land reusable doctrine (lifecycle · shapes · router · runtime stanza).  
**Outcome:** done  
**Gap:** Frameworks **documented, not field-tested** on a real fork. Installed product repos lack new kits until `--with-workflow-lab` re-run. Machine-wide repo sync not re-verified since Sep 4 sync pass.  
**Leftover state:** none (opack clean vs `origin`).  
**Landed (origin):** `EXPANSION_LIFECYCLE.md` · `ENGAGEMENT_SHAPES.md` · Attacker overlay · `PROMPT_BUNDLES` § Framework router · `RUNTIME.md` Stage·Shape stanza · `PHASE_PIPELINE` phase⊂lifecycle map (commits through `04eaf9c`+).  
**Follow-ups (next chat):** §1 field test — add `Stage: Scout · Shape: scatter` → funnel → Soldier on **real** fork · §2 re-install lab on targets needing new kits · §7 seat proof with explicit Stage·Shape · optional repo re-audit.  
**decided:** Scout owns target; two layers (lifecycle + shapes); core five shapes; no new seats.  
**parked:** `Territory claimed?` / `Shape:` to always-on `.mdc` (twice-seen not met) · hard “Soldier before Settler” rule until field test.  
**NOT pursuing now:** day #10 · Layer A promotion · sixth seat.

---

## Session close · 2026-09-06 (phase routing #11)

**From:** “what is left” prompt ask → generalize Garden/UAH multi-repo routing → land `DAY_PROMPTS` #11 → commit+push (`96f86fa`).  
**Intended goal:** Durable paste for routing multi-phase arcs across repos/chats/life — not whole-plan L5 handoffs.  
**Outcome:** done (this chat)  
**Workaround:** Combined “what is left” paste delivered in chat only — **not** a separate kit; user pivoted to phase routing; `#3` / `#10` remain adjacent.  
**Gap:** `#11` **documented, not field-tested** on a live multi-repo arc (Garden table was source material, not execution). Installed product repos lack `#11` until `--with-workflow-lab` re-run.  
**Leftover state:** none (opack clean vs `origin`).  
**Landed (origin):** `DAY_PROMPTS.md` #11 · `PASTEABLES_INDEX` · `WORKFLOW_LAB_DIGEST` · `PHASE_PIPELINE` sibling link · `PROMPT_BUNDLES` multi-repo arc bundle (`96f86fa`).  
**Follow-ups (next chat):** field-test `#11` on real fork (e.g. Garden Phase 1 UAH → Phase 3 launcher handoff) · §2 re-install lab if product trees stale · optional standalone “what is left” kit only if `#3`/`#10` prove thin twice.  
**decided:** `#11` = *where* · `PHASE_PIPELINE` = *in-slice gates* · one handoff = one JOB · one REPO · one DONE · phrase lock: `Phase routing — this chat only. No whole-arc handoff.` · compose: `#11` → slice → `PHASE_PIPELINE` → `CLOSE_CHAT`.  
**parked:** Garden Phase 1 alone smoke (UAH) · Phase 3 ticket spec (garden-launcher + `@~/Desktop/thoughts/by-family/garden/garden-launcher-overnight-discussion-2026-09-04.md`) · Phase 0 habit (daily life).  
**NOT pursuing now:** day #10 · execute Garden work in opack chat · whole-arc L5.

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
| 2026-09-01 | opack | §8 verify: trivial ask → no Mode D theater (install smoke OK, single digest). "Review this project" → Mode D + runtime stanza, no mode quiz (phrase lock in digest + INTENT_EXPAND + PROJECT_REVIEW). Agents less lost: **yes** — one front door, lab `@`-only, opack context out of always-on. Satellite rules count not checked (Pop workhorse). | no |
| 2026-09-06 | opack | Close-out kit: read → **go** (honest land) · **fix** rare · day #10 separate · product NOT DONE OK at close. **Not field-tested** on live closes yet (Sober/trivial/broken). | kits landed |

---

## Session close · 2026-09-06 (close-out kit chat)

**Intended goal:** Close-out workflow — leave thread cleanly without exit backlog or false “done.”

**Outcome:** **done** (kit). Read → honest state → **go** lands → close. `optional/CLOSE_CHAT.md` + cross-refs + overlay pin.

**Gap:** Attacker field test (3 real closes) not run. Sober chat paste given but not executed there.

**Leftover state:** None on machine. opack docs committed on `master`.

**Follow-ups (next chat):**
- Run close + **go** on Sober chat (land to `SOBER.md`)
- Field-test close on trivial / broken sessions when ready
- `@` this file § Field-test log row 2026-09-06

**NOT pursuing now:** Re-litigating set-and-forget vs split prompts — decided.

---

## Session close · 2026-09-06 (ChatGPT general prompts)

**Intended goal:** General prompts to use ChatGPT better; then a personal cheat sheet assuming all use cases (work · coding · writing · learning · planning).

**Outcome:** **done** (in-chat delivery). Meta-prompt · daily five · per-use-case one-liners · understand→skeptical→double-check→done loop.

**Gap:** Prompts never landed as a durable personal note / Custom Instructions — chat-only unless user copies later.

**Leftover state:** none (no code/config edits).

**Follow-ups (next chat):** none blocking. Optional: paste cheat sheet into a personal note or ChatGPT Custom Instructions if wanted outside this thread.

**decided:** Assume all five use cases true for the cheat sheet.

**NOT pursuing now:** day #10 · packing prompts into opack kits · inventing exit backlog.

---

## Session close · 2026-09-06 (950QDB satellite context)

**From:** Windows satellite (950QDB) post-cleanup context chat (closed YES). TALK ONLY — no product work.

**Intended goal:** Capture standing 950QDB satellite layout after repo cleanup as durable context.

**Outcome:** done (this chat)

**Gap:** Canonical map `machine-config-samsung-950QDB/docs/SATELLITE-REPOS.md` not verified from this opack workspace (lives in machine-config repo). Duplicate `opack` Cursor workspace entry not confirmed cleared.

**Leftover state:** none (no writes or commands from agent).

**950QDB layout (decided):**
- **Keeps:** `mhcos` (product) · `thoughts` + `opack` (assistants) · `FC`, `care-center`, `machine-config`, `library-organizer` (utilities)
- **Removed (~7.4 GB):** `fbt`, `UAH`, `google-doc-scrape`, `Varrs-Game-Bot` — recover via thoughts garden bridge pin
- **FC:** local-only sensitive — never bulk-delete or push

**Follow-ups (next chat):** restart Cursor → `Prune-CursorWorkspaces.ps1` if duplicate `opack` entry persists · `@` canonical map from machine-config when on 950QDB.

**parked:** land full layout in `machine-config-samsung-950QDB/docs/SATELLITE-REPOS.md` if not already current there.

**NOT pursuing now:** day #10 · assume removed clones exist locally · bulk-delete or push FC.

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
| Expansion/shapes untested | Session close 2026-09-06 (expansion) · §1 field test add-on |
| Multi-repo arc / “what belongs here?” | Session close 2026-09-06 (phase routing) · `DAY_PROMPTS.md` #11 |
