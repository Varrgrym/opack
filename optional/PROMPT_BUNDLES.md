# Prompt bundles — operations graph (thin)

**Status:** active · 2026-08-21 · workflow-lab pasteable  
**Job:** relate existing engines — which kit when, in what order, when to **STOP**  
**NOT:** Mode E · mega-prompt · review fleets · duplicate Audit/Review/Explore/Roadmap bodies · auto-run every short ask  
**Evidence:** thoughts `sources/2026-08-21-prompt-formation-chatgpt.md`  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`  
**Companions:** `PHASE_PIPELINE.md` (build gates) · `PASTEABLES_INDEX.md` · `DAY_PROMPTS.md` · `INTENT_EXPAND.md`

---

## Idea

You already have the **engines**. This kit is the **relation layer**:

```text
GOAL → STATE → CHEAPEST USEFUL NEXT → BUNDLE or SINGLE KIT → EVIDENCE → UPDATE STATE → STOP or NEXT
```

**STOP is a valid transition.** Healthy / enough evidence / wait / consolidate / do nothing beats running another mode for theater.

**Seat ≠ mode ≠ bundle.** Seats = who thinks how. Modes/engines = what thinking is allowed. Bundles = short named sequences of engines.

---

## Ladder (climb only as far as pain)

| Level | Unit | Question | Opack today |
|------:|------|----------|-------------|
| 0 | Raw ask | What do I say? | Chat |
| 1 | Prompt object | What does this kit do? | Pasteables |
| 2 | Relations | Best after / before? | This file + complements tables |
| 3 | **Bundle** | Recurring job package? | § Bundles below |
| 4 | Workflow | Branches + gates? | `PHASE_PIPELINE` · Mode C stop points |
| 5 | State | Where are we? | Runtime stanza · project notes |
| 6 | Router | What next? | § Router paste |
| 7–10 | System / adaptive / meta / goal-OS | — | **Parked** until volume hurts |

**Pin:** Value peaks at **L2–L6**. Do not build L8+ as product.

---

## Operation metadata (stub — fill when editing a kit)

When touching a pasteable, keep these fields thin (one line each):

| Field | Meaning |
|-------|---------|
| Purpose | One sentence job |
| Consumes | What must exist (repo, prior findings, goal) |
| Produces | Artifact shape (verdict, findings, plan — not essays) |
| Best after | Kits that make this stronger |
| Best before | Kits that naturally consume output |
| Conflicts with | Don’t stack (e.g. Explore + immediate Build) |
| Stop condition | When this kit is done enough |
| When NOT | Situations where another kit wins |

Handoffs prefer **structured artifacts** (findings → priorities → actions), not “reread the previous wall of text.”

---

## Engines map (don’t fork)

| Need | Kit |
|------|-----|
| What is / trajectory / preserve | `PROJECT_REVIEW.md` (Mode D) |
| What’s wrong / weak | `REPOSITORY_AUDIT.md` |
| What next / stop points | `EXECUTION_ROADMAP.md` (Mode C) |
| Possibility space | `EXPLORATORY_ANALYSIS.md` |
| Where are we (takeover) | `OWNERSHIP_TAKEOVER.md` (Mode A) |
| Organize by concept | `DESIGN_NOTEBOOK.md` (Mode B) |
| Research → Plan → Code → Verify | `PHASE_PIPELINE.md` |
| Daily light cousins | `DAY_PROMPTS.md` |
| Short ask → rigor | `INTENT_EXPAND.md` |

Second-tier **lenses** (compose inside engines; promote to kits only if twice-bitten): Discovery · Gap · Boundary · Deletion · Verification · Handoff · Retrospective · Question Generator.

---

## Bundles

Each row: **when** · **sequence** · **stop**. Open the named kit for that step — do not invent a parallel prompt body.

### New project / cold start

**When:** unfamiliar repo, handoff in, “what is this?”  
**Sequence:** Orient (`INTENT_EXPAND` / day #8) → Review (`PROJECT_REVIEW`) → Discovery lens (gaps in Review) → Boundary (preserve/do-not in Review) → Baseline note  
**Stop:** one-page mental model exists; entry points known; no build unlocked.

### Stagnation

**When:** “don’t know what to do next” / busy but unclear  
**Sequence:** Review or Audit (pick by symptom) → Explore (`EXPLORATORY_ANALYSIS`) → Decision (pick one direction) → Roadmap (`EXECUTION_ROADMAP`) or **STOP**  
**Stop:** one next action + explicit NOT list; or “use what exists.”

### Major change

**When:** scary / cross-cutting edit already decided  
**Sequence:** Review (impact) → Plan (`PLAN_APPROVAL` / Roadmap) → human APPROVE → Code → Verify (day #2 / Reviewer)  
**Stop:** DoD proven; no scope widen. Use `PHASE_PIPELINE`.

### Cleanup / coherence

**When:** duplication, drift, “smaller not bigger”  
**Sequence:** Audit → Review coherence → Deletion/archive candidates (evidence) → Consolidate → Verify nothing critical broke  
**Stop:** fewer sources of truth; no new features.

### Pre-release / ship gate

**When:** “ready?”  
**Sequence:** Audit (critical paths) → Verify (tests/smoke) → day #10 Done? → Handoff note if transferring  
**Stop:** Ready / Ready-with-conditions / Not ready — no polish theater.

### Handoff / independence

**When:** another human/agent must take over; decouple question  
**Sequence:** Review → Docs↔code drift → Independence (standalone?) → Cold-start: can a stranger run it?  
**Stop:** handoff packet written; hidden deps named; or “not ready to separate.”

### Dump / video extract

**When:** ChatGPT export, notes pile, YouTube  
**Sequence:** `EXTRACT_AND_ORGANIZE` or `VIDEO_EXTRACT` → Mode B land Keep → **STOP** (no feature invent)  
**Stop:** net-new landed or “already covered.”

---

## Paste — router (pick next; don’t run everything)

```text
Prompt bundles / router. Follow optional/PROMPT_BUNDLES.md (or docs/workflow-lab/PROMPT_BUNDLES.md).

Given:
- Overarching goal (one sentence)
- Current state (known / unknown / last result)
- Constraints (blast, time, seats)

Do NOT run every mode. Do NOT invent Mode E or a mega-prompt.

Output:
1. Cheapest useful next learn (one sentence)
2. Bundle name OR single kit (from PASTEABLES_INDEX)
3. Why this beats the alternatives
4. Stop condition for this step
5. What would make you choose STOP instead of another kit

Rules:
* Prefer one kit over a long chain when one answer suffices.
* Prefer consolidate / verify / stop over expand when evidence supports it.
* Active ≤3 seats; Multitask=off unless synthesis owner named.
* Open only the chosen kit next — I paste or confirm before the next hop.
```

---

## Phrase locks

```text
Bundle: Stagnation — optional/PROMPT_BUNDLES.md — then open the named kit only.
```

```text
Router: cheapest useful next — STOP allowed — optional/PROMPT_BUNDLES.md
```

---

## Anti-patterns

- Audit → Explore → Review → Roadmap on every short ask  
- Bundle that rewrites engine doctrine  
- Treating “interesting” as “must run next”  
- Self-advancing the whole ladder without a stop gate  
- Review fleets (parallel Review+Audit+Explore)

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-21 | Initial | Prompt Formation re-export delta — relation layer after 2026-08-20 engines |
