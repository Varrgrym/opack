# Research Report — Deep investigation, no edits

**Status:** active · 2026-08-20 · workflow-lab pasteable  
**Job:** thorough, cited research report as a durable artifact — **never implement**  
**NOT:** Mode D full review · Audit defect hunt · Explore possibility space · plan or code  
**Inspired by:** Copilot `/research` (phase separation) — adapted to opack evidence rules  
**Seat hint:** Archivist (preferred) or Reviewer · Multitask **off** · Plan **no**  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

Broad or deep questions that need investigation and a **saved report**, not a chat-only answer and not code changes.

**Pipeline:** Research (this) → human gate → Plan (`PLAN_APPROVAL.md`) → Code (Engineer) → Verify. See `PHASE_PIPELINE.md`.

---

## Paste

```text
# Research Report — read-only

Produce a research report. Do not edit application code. Do not open a plan or implement fixes.

## Phase rules

* Research never edits (except writing the report file if I ask).
* Prefer depth over speed. Cite paths for important claims.
* Document assumptions explicitly. Never silently promote assumption → fact.
* If evidence contradicts itself, report the contradiction.
* Do not interrupt with clarifying questions unless blocked; make reasonable assumptions and list them under Confidence Assessment.
* Web / other-repos: only if I explicitly allow. Default = this repository (+ conversation).
* When done: short summary in chat + full Markdown report structure below.
* Hand off: recommend next phase (Plan / Audit / Review / Explore / stop) — do not start it.

## Query type (pick one; shape the report accordingly)

* Process / how-to — step-by-step; minimal code
* Conceptual — narrative + trade-offs
* Technical deep-dive — architecture, components, cited snippets, optional Mermaid of *actual* structure

Question: <named research question>
Query type: <process | conceptual | deep-dive>

## Evidence discipline

Label: Direct evidence · Corroborating · Inference · Unknown.
Important claims: Claim · Evidence (paths) · Reasoning · Confidence.

## Report structure

# Research: <title>
## Question
## Query type
## Executive summary (≤10 lines)
## Method (what inspected / executed / skipped)
## Findings (cited)
## Architecture / flow (if deep-dive)
## Assumptions made
## Confidence assessment
## Contradictions & unknowns
## What this does NOT recommend building
## Suggested next phase
Plan | Audit | Review | Explore | Verify | Stop — and why
## Citations (paths)

## Stop

End after the report. Do not implement. Do not produce a roadmap unless I ask for Plan phase next.
```

---

## Phrase lock

```text
Research report — read-only. Follow optional/RESEARCH_REPORT.md.
Named question. Cite paths. No edits. Confidence assessment. Suggest next phase only.
```

---

## Map

| Need | Use instead |
|------|-------------|
| Ownership status | `OWNERSHIP_TAKEOVER.md` |
| Full architecture review | `PROJECT_REVIEW.md` |
| Defect systems | `REPOSITORY_AUDIT.md` |
| Possibility space | `EXPLORATORY_ANALYSIS.md` |
| Mega-map spike | Archivist `SEAT_PROMPTS` A1–A4 |
| Then plan | `PLAN_APPROVAL.md` |

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-20 | Initial | Copilot research-phase pattern: artifact + no edits + gate before plan/code |
