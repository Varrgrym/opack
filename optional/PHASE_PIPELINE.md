# Phase pipeline — Research → Plan → Code → Verify

**Status:** active · 2026-08-20 · workflow-lab pasteable  
**Job:** thin orchestration so phases stay separated (Copilot-style gates without new seats)  
**NOT:** Mode E · mega-prompt · review fleets · replace Mode A–D / Audit / Explore  
**Sibling:** which *analysis* kit next (not build phases) → `PROMPT_BUNDLES.md`  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## Idea

```text
RESEARCH (read-only report)
        ↓ human gate
PLAN (plan only → APPROVE/NARROW/REJECT)
        ↓ human gate
CODE (Engineer slice)
        ↓
VERIFY (tests / smoke / Reviewer if scary)
```

**Seat ≠ phase.** Seats are who may think how (`SEAT_PROMPTS.md`). Phases are what is allowed right now.

| Phase | Allowed | Forbidden | Default seat | Primary kit |
|-------|---------|-----------|--------------|-------------|
| Research | Investigate, cite, report | Edit, roadmap-as-backlog, build | Archivist / Reviewer | `RESEARCH_REPORT.md` |
| Plan | Ordered plan, DoD, NOT | Code, silent start | Engineer | `PLAN_APPROVAL.md` (+ Roadmap/SPEC as needed) |
| Code | Implement approved slice | Redesign, widen scope | Engineer | E1 · `SPEC_BUILD.md` |
| Verify | Prove / falsify | New features | Engineer / Reviewer | E2 · day #2 · R1 if scary |

**Skip phases when appropriate:** typo fix → Code+Verify. Unfamiliar repo / high blast → full pipeline. Possibility space → `EXPLORATORY_ANALYSIS.md` *before* Plan (not instead of Research when the question is “what exists”).

---

## Paste — pipeline conductor

```text
Phase pipeline. Follow optional/PHASE_PIPELINE.md.

Current phase: Research | Plan | Code | Verify
(pick one)

Rules:
* Research never edits.
* Plan never codes; stop for APPROVE | NARROW | REJECT.
* Code only the approved slice; narrow DoD; fail-closed.
* Verify: reading ≠ working; run checks when practical.
* Do not self-advance phases. I name the phase or verdict.
* No review fleets. Active ≤3 seats; declare idle.

Seat: <Archivist|Reviewer|Engineer|Finisher|Attacker>
Open the matching kit for this phase only.
```

---

## Phrase locks (short)

```text
Phase: Research — optional/RESEARCH_REPORT.md — no edits.
```

```text
Phase: Plan — optional/PLAN_APPROVAL.md — stop for APPROVE/NARROW/REJECT.
```

```text
Phase: Code — Seat: Engineer — approved slice only — SEAT_PROMPTS E1.
```

```text
Phase: Verify — Seat: Engineer (or Reviewer) — E2 / day #2 — reading ≠ working.
```

---

## Compose with existing engines

| If you need… | Use after / beside phase |
|--------------|---------------------------|
| What’s wrong | Audit (often before Plan) |
| What is / trajectory | Project Review |
| What next (week) | Execution Roadmap inside/after Plan |
| What haven’t we considered | Explore *before* Plan |
| Which analysis kit / named sequence | `PROMPT_BUNDLES.md` (router · STOP) |
| Stuck mid-code | Finisher F1 |
| Regret on scary code | Reviewer R1 after Code |

---

## Anti-patterns

- Research that “helpfully” starts coding  
- Plan that continues into implementation without APPROVE  
- Code without a DoD  
- Verify that only re-reads the diff  
- Spawning Research+Plan+Code as three parallel agents (fleet)  

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-20 | Initial | Steal Copilot Research→Plan→Code gates; keep opack seats/modes |
| 2026-08-21 | Sibling link | `PROMPT_BUNDLES` — analysis sequences vs build phases |
