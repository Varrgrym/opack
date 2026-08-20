# Execution Roadmap — What Should We Do Next (Mode C engine)

**Status:** active · 2026-08-20 · workflow-lab pasteable  
**Job:** turn current understanding into an ordered, stoppable plan  
**NOT:** possibility-space exploration · full architecture review · feature wishlist · PRP for a single feature (`SPEC_BUILD.md`) · reopening architecture debates  
**Complements:** Review (`PROJECT_REVIEW.md`) · Audit (`REPOSITORY_AUDIT.md`) · **this** (what next) · Exploration (`EXPLORATORY_ANALYSIS.md`)  
**Related short paste:** `DAY_PROMPTS.md` #5  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

Paste after you already understand the project (review/audit/exploration done or unnecessary) and need a **focused execution plan** with DoD, deps, stops, and explicit NOT work.

Answers: *Given what we now know, what should we actually do, in what order, and when should we stop?*

**Seat hint:** Engineer · Multitask **off** · Plan **yes** (this *is* the plan).

**Philosophy:** Progress is not activity. Never create work merely because capacity exists.

**Keep separate:** Auditor finds truth · Reviewer understands organism · Explorer expands map · Roadmap converts understanding into stoppable action · Engineer implements the selected slice. Do not collapse into one mega-prompt.

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
Do not reopen Audit/Review/Exploration debates — plan from what is already known, and name residual unknowns.

## Philosophy

The planner is paid for useful progress with stop points — not maximum activity.
Interesting work ≠ warranted work. If the best plan is stop or consolidate-only, say so.

## Progress is not activity

Do not fill available capacity.

If the highest-value action is to:
* wait
* observe
* gather evidence
* let a system run
* consolidate
* archive
* ask the operator
* stop

then that is the correct execution outcome.

Never create work merely because there is time available.

Achieve the objective → verify → stop.
Do not treat “find another thing to do” as the implicit objective.

## Operating rules (read first)

* Ground priorities in evidence from the repo and recent findings. Label Uncertain when evidence is thin.
* Label each recommended action with confidence:
  - High — supported by multiple independent pieces of evidence
  - Medium — strong interpretation but some ambiguity
  - Low — plausible option requiring operator judgment
* Every action needs an observable definition of done (see below).
* Prefer high leverage / low effort over large impressive projects with uncertain payoff.
* Explicitly name what we will NOT do.
* Include stop points and a completion threshold — when to pause and reassess.
* Prefer experiments when uncertainty is high; bets only when evidence supports commitment.
* If the best plan is “do nothing / consolidate only,” say so.
* One focused cycle beats an aspirational quarter. Do not invent calendar theater.
* Do not fill planning gaps with invented certainty — name what evidence is missing.

## Observable definition of done

Definition of done must be observable.

Prefer:
* test passes
* workflow executes end-to-end
* documented behavior matches implementation
* artifact exists and is verified
* operator can perform X successfully
* metric reaches Y

Avoid bare terms such as:
* improve
* optimize
* clean up
* make better
* address concerns
* improve robustness

unless accompanied by measurable / observable proof.

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
* wait / observe
* stop

Explain why this dial is correct now.
Name which form of progress this cycle optimizes for:
* reduce uncertainty
* increase capability
* reduce complexity

---

## 3. Priority Gate

Before an item enters the roadmap, test it against:

1. Is it necessary for the stated goal?
2. Is it blocking something more valuable?
3. Is there evidence it needs doing now?
4. Can an existing component or workflow solve it?
5. Is consolidation, deletion, configuration, or documentation sufficient?
6. What happens if we do nothing?

An item that fails this gate must not enter the immediate plan.
“We should improve X” is not enough to become “P1 — Improve X.”

List rejected candidates briefly (failed gate → why) so rejected work does not silently reappear later.

---

## 4. Immediate Actions (Now)

Only items that passed the Priority Gate.

Ordered list. For each action:

* Priority (P0 / P1 / …)
* Action
* Why it matters
* Dependency class: prerequisite · dependent · independent · blocked by evidence · blocked by human decision
* Dependencies (specific)
* Approximate scope
* Effort: Small / Medium / Large
* Leverage: Low / Medium / High
* Definition of done (observable)
* Risks
* What it unlocks (if anything)
* Confidence (High / Medium / Low)

Prefer high leverage / Small effort.
Do not order by apparent importance alone.
If a task has no meaningful dependency and can safely wait, do not artificially elevate it.

Cap this list. If you have more than ~7 “immediate” items, you are not prioritizing.

Optional summary table for the top actions only:

| Action | Effort | Leverage | Confidence | Dependency class |
| --- | --- | --- | --- | --- |

---

## 5. Milestones

A small number of milestones after the immediate slice.

For each:

* Outcome
* Proof that it is done (observable)
* What is explicitly NOT in this milestone
* Completion threshold — once proof is satisfied, stop and reassess; do not automatically advance

---

## 6. This Cycle (focused)

If useful, compress into one focused cycle (often ~one week of real work, not calendar theater):

* Ordered slices; use day labels only when timing is genuinely useful
* Expected proof at cycle end
* Where to stop early if blocked

A three-hour task must not become “Day 1” merely because a calendar slot exists.
Finish the thing — do not perform productivity theater.

---

## 7. Completion Threshold

Define what “enough” means for this cycle.

Do not continue improving a milestone merely because additional improvements are possible.

Once the defined proof is satisfied:
* stop
* reassess
* do not automatically advance to the next milestone

---

## 8. Stop Points

Where should we pause and reassess?

* After which milestone?
* What evidence triggers a stop?
* What would cause a plan rewrite?

---

## 9. Consolidate / Wait / Park

* What should be consolidated instead of extended?
* What should wait on external input or observation?
* What is parked and why?

---

## 10. Risks to the Plan

* What could invalidate this roadmap?
* What assumptions is it resting on?
* What is the failure mode of over-executing?

---

## 11. Explicit NOT

List:

* What we will not build
* What we will not refactor yet
* What we will not discuss further until evidence arrives

---

## 12. Numbered Order

Single numbered sequence of the work (the real plan).

Respect dependency classes. No parallel fantasy unless tasks are truly independent and a synthesis owner is named.

---

## 13. Experiments vs Bets

For uncertain items:

**Question** · **Smallest experiment** · **Success** · **Failure** · **Then what** · **Confidence**

Do not promote experiments into commitments without evidence.

---

## 14. Evidence Gaps Blocking the Plan

List what you do not know that would change ordering, DoD, or the build/fix/stop dial.
Do not invent answers to fill these gaps.

---

## 15. Roadmap Verdict

Answer directly:

1. What is the single next action? (confidence?)
2. What does “enough progress” look like for this cycle? (completion threshold)
3. What should we ignore even if it is interesting?
4. What would change your mind about this plan?
5. Should we stop instead of starting?
6. Which planned item has the best leverage per unit effort?
7. Did / will this cycle primarily reduce uncertainty, increase capability, or reduce complexity? Which one — and why is that the right form of progress now?
```

---

## Phrase lock (optional short invoke)

```text
Execution roadmap — what should we do next.
Follow optional/EXECUTION_ROADMAP.md (or docs/workflow-lab/EXECUTION_ROADMAP.md).
Priority gate. Observable DoD. Progress is not activity. Completion threshold → stop.
High leverage / low effort over impressive uncertain work. No wishlist.
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
| 2026-08-20 | Anti-backlog controls | Priority gate · dependency class · observable DoD · completion threshold · progress≠activity |
