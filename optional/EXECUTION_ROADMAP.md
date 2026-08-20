# Execution Roadmap — What Should We Do Next (Mode C engine)

**Status:** active · 2026-08-20 · workflow-lab pasteable  
**Job:** turn current understanding into an ordered, stoppable plan  
**NOT:** possibility-space exploration · full architecture review · feature wishlist · PRP for a single feature (`SPEC_BUILD.md`)  
**Complements:** Review (`PROJECT_REVIEW.md`) · Audit (`REPOSITORY_AUDIT.md`) · **this** (what next) · Exploration (`EXPLORATORY_ANALYSIS.md`)  
**Related short paste:** `DAY_PROMPTS.md` #5  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

Paste after you already understand the project (review/audit/exploration done or unnecessary) and need a **focused execution plan** with DoD, deps, stops, and explicit NOT work.

**Seat hint:** Engineer · Multitask **off** · Plan **yes** (this *is* the plan).

**Philosophy:** The planner is paid for useful progress with stop points — not maximum activity.

---

## Paste

```text
# Execution Roadmap — Mode C

Based on the current state of this project, produce an execution roadmap.

This is not a brainstorm, not a possibility-space tour, and not a second architecture review.
Assume we are ready to decide what to do next.

Do not produce a generic backlog.
Do not equate progress with maximum activity.
Prefer fewer moving parts, consolidation, finishing unfinished work, and strengthening foundations over new features.
Skip empty sections. Depth over coverage.

## Philosophy

The planner is paid for useful progress with stop points — not maximum activity.
Interesting work ≠ warranted work. If the best plan is stop or consolidate-only, say so.

## Operating rules (read first)

* Ground priorities in evidence from the repo and recent findings. Label Uncertain when evidence is thin.
* Label each recommended action with confidence:
  - High — supported by multiple independent pieces of evidence
  - Medium — strong interpretation but some ambiguity
  - Low — plausible option requiring operator judgment
* Every action needs a definition of done.
* Explicitly name what we will NOT do.
* Include stop points — when to pause and reassess.
* Prefer experiments when uncertainty is high; bets only when evidence supports commitment.
* If the best plan is “do nothing / consolidate only,” say so.
* One focused week beats an aspirational quarter.
* Do not fill planning gaps with invented certainty — name what evidence is missing.

---

## 0. Runtime

Mode=C · Seat=Engineer · Multitask=off · Plan=yes

State the inputs you are planning from (review, audit, exploration, or fresh repo read).
Name any critical unknowns that limit plan confidence.

---

## 1. Current State

Brief, honest state of the project:

* What works
* What is broken or incomplete
* Constraints
* Open decisions blocking progress

---

## 2. Dial — What Kind of Progress?

First choose the primary mode of progress (pick one primary, optional secondary):

* build
* fix
* simplify
* consolidate
* clean
* document
* test
* review
* experiment
* archive
* stop

Explain why this dial is correct now.

---

## 3. Immediate Actions (Now)

Ordered list. For each action:

* Priority (P0 / P1 / …)
* Action
* Why it matters
* Dependencies
* Approximate scope
* Definition of done
* Risks
* What it unlocks (if anything)
* Confidence (High / Medium / Low)
* Effort vs leverage (Low/Med/High — one line)

Cap this list. If you have more than ~7 “immediate” items, you are not prioritizing.

Optional summary table for the top actions only:

| Action | Effort | Leverage | Confidence |
| --- | --- | --- | --- |

---

## 4. Milestones

A small number of milestones after the immediate slice.

For each:

* Outcome
* Proof that it is done
* What is explicitly NOT in this milestone

---

## 5. This Week (focused)

If useful, compress into one focused week:

* Day-by-day or ordered slices
* Expected proof at week end
* Where to stop early if blocked

---

## 6. Stop Points

Where should we pause and reassess?

* After which milestone?
* What evidence triggers a stop?
* What would cause a plan rewrite?

---

## 7. Consolidate / Wait / Park

* What should be consolidated instead of extended?
* What should wait on external input?
* What is parked and why?

---

## 8. Risks to the Plan

* What could invalidate this roadmap?
* What assumptions is it resting on?
* What is the failure mode of over-executing?

---

## 9. Explicit NOT

List:

* What we will not build
* What we will not refactor yet
* What we will not discuss further until evidence arrives

---

## 10. Numbered Order

Single numbered sequence of the work (the real plan).

No parallel fantasy unless tasks are truly independent and a synthesis owner is named.

---

## 11. Experiments vs Bets

For uncertain items:

**Question** · **Smallest experiment** · **Success** · **Failure** · **Then what** · **Confidence**

Do not promote experiments into commitments without evidence.

---

## 12. Evidence Gaps Blocking the Plan

List what you do not know that would change ordering, DoD, or the build/fix/stop dial.
Do not invent answers to fill these gaps.

---

## 13. Roadmap Verdict

Answer directly:

1. What is the single next action? (confidence?)
2. What does “enough progress” look like for this cycle?
3. What should we ignore even if it is interesting?
4. What would change your mind about this plan?
5. Should we stop instead of starting?
6. Which planned item has the best leverage per unit effort?
```

---

## Phrase lock (optional short invoke)

```text
Execution roadmap — what should we do next.
Follow optional/EXECUTION_ROADMAP.md (or docs/workflow-lab/EXECUTION_ROADMAP.md).
Ordered plan with DoD, NOT list, stop points, and recommendation confidence. No wishlist.
```

---

## Map

| Kit | Job |
|-----|-----|
| **this file** | Mode C execution plan |
| `DAY_PROMPTS.md` #5 | Shorter daily cousin |
| `SPEC_BUILD.md` | Single feature PRP → build |
| `PROJECT_REVIEW.md` / Audit / Exploration | Inputs that often precede this |

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-20 | Initial pasteable | Mode C was AGENTS outline + day #5 only |
| 2026-08-20 | Confidence · leverage · evidence gaps | Parity with Review/Audit judgment upgrades |
