# Plan Approval Gate — Plan only; wait for APPROVE

**Status:** active · 2026-08-20 · workflow-lab pasteable  
**Job:** produce an implementation plan and **stop** until the operator approves  
**NOT:** research · code · Mode D review · Explore · silent start-coding  
**Seat hint:** Engineer · Multitask **off** · Plan **yes** (plan artifact only)  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

After Research (or when the problem is already understood) and **before** any implementation. Forces the cheapest correction point: redirect the plan, not the PR.

**Pipeline:** Research → **Plan (this)** → human APPROVE/NARROW/REJECT → Code → Verify. See `PHASE_PIPELINE.md`.

**Compose with:** `EXECUTION_ROADMAP.md` (week plan) or `SPEC_BUILD.md` (feature PRP) — still **stop before code**.

---

## Paste

```text
# Plan Approval Gate

Produce an implementation plan only. Do not edit code. Do not run drive-by refactors.
Stop when the plan is ready and wait for my verdict: APPROVE | NARROW | REJECT.

## Phase rules

* Plan never codes.
* Every action needs an observable definition of done.
* Explicit NOT list required.
* Prefer smallest plan that meets the goal.
* Prefer high leverage / small effort.
* Priority gate: necessary · blocking · evidenced now · absorbable by existing piece · consolidate/docs enough? · what if we do nothing?
* Label confidence High / Medium / Low on the overall plan and on risky steps.
* If research/review/audit inputs exist, ground the plan in them; name residual unknowns.
* After emitting the plan: STOP. Do not implement until I say APPROVE (or NARROW with constraints).

## Goal

Goal: <what success looks like>
Constraints / non-goals: <…>
Inputs: <research report path / audit / review / none>

## Plan output

### Approach
What we will do and why (short).

### Steps (ordered)
For each:
* Action
* Paths likely touched
* Dependency class (prerequisite / dependent / independent / blocked)
* Effort · Leverage · Confidence
* Observable DoD

### NOT in this plan
…

### Risks & blast radius
Flag irreversible / auth / data / public API for Reviewer if needed.

### Verify plan (after code — do not run yet)
How we will know it worked.

### Open questions
Only blockers. If you assumed answers, list them under Assumptions.

### Assumptions

### Operator verdict required

Reply with one of:
* APPROVE — implement as planned (Engineer E1 / SPEC)
* NARROW — implement with these changes: …
* REJECT — do not implement; reason: …

## Stop

End here. Await verdict. Progress is not activity.
```

---

## Phrase lock

```text
Plan approval gate — plan only, then stop.
Follow optional/PLAN_APPROVAL.md.
Wait for APPROVE | NARROW | REJECT. Do not code.
```

---

## After verdict

| Verdict | Next |
|---------|------|
| APPROVE | `SEAT_PROMPTS` E1 or `SPEC_BUILD` execute |
| NARROW | Revise plan once, or Engineer with narrowed DoD |
| REJECT | Stop, Research again, or Explore — do not code |

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-20 | Initial | Copilot plan-before-code gate; cheapest correction before implementation |
