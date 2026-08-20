# Ownership Takeover — Where Are We Now (Mode A engine)

**Status:** active · 2026-08-20 · workflow-lab pasteable  
**Job:** take ownership of the project’s current state — status, alignment, debt, and what to do this week  
**NOT:** defect-only audit · architecture Mode D · possibility-space exploration · feature wishlist  
**Phrase family:** where are we / status / takeover  
**Complements:** **this** (status ownership) · Review (`PROJECT_REVIEW.md`) · Audit (`REPOSITORY_AUDIT.md`) · Plan (`EXECUTION_ROADMAP.md`) · Explore (`EXPLORATORY_ANALYSIS.md`) · Notebook (`DESIGN_NOTEBOOK.md`)  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

Paste when you need a cold or warm **ownership brief**: what this is, where it stands, what’s drifting, what to do next week — without unlocking builds by default.

**Seat hint:** Engineer or Reviewer · Multitask **off** · Plan **soft** (brief next-week only; full plan → Execution Roadmap).

**Philosophy:** Thin status is a failure mode. Ownership means knowing what to preserve, what to ignore, and what is actually blocking progress.

---

## Paste

```text
# Ownership Takeover — Mode A

Produce an ownership-grade status brief for this project.

This is not primarily a bug hunt (Repository Audit), not a full architecture review (Project Review / Mode D), not a possibility-space exploration, and not a full execution roadmap.

Your job is to answer: Where are we now? What matters? What should an owner do next — and what should they refuse?

Do not unlock builds unless I explicitly ask.
Do not invent a backlog to look thorough.
Skip empty sections. Depth over coverage.
Progress is not activity.

## Operating rules (read first)

* Evidence from this repo (and this conversation) first. Cite paths for important claims.
* Label: Verified · Strongly inferred · Uncertain.
* Recommendations get confidence: High / Medium / Low.
* Prefer consolidate / finish / stop over new surface area.
* Too large → chunk → synthesize. Chunk for processing, never for understanding.
* Do not fill unknowns with assumptions.
* A finding is not automatically a task.

---

## 0. Runtime

Mode=A · Seat=Engineer (or Reviewer) · Multitask=off · Plan=soft

State what you inspected and what you skipped.

---

## 1. Intent

* What this project is trying to accomplish
* Who/what it serves
* Stated non-goals / refuses
* Success criteria if any exist

---

## 2. Current State

* What is actually working
* What is incomplete
* What is broken or fragile (brief — hand heavy defect lists to Audit)
* Maturity: prototype · lab · product · archive · mixed

---

## 3. Progress

* What has moved recently (evidence: commits, docs, artifacts)
* What has stalled
* What looks like activity without progress

---

## 4. Alignment

* Does current work match stated intent?
* Where has the project drifted?
* Any contradictions between docs, code, and operator priorities?

---

## 5. Coherence

* Organism vs collection
* Major duplication or mixed responsibilities (brief)
* Complexity vs surface area — intrinsic vs self-inflicted (brief)

---

## 6. Architecture (ownership lens)

* Load-bearing core
* Entry points an owner must know
* Critical paths (name them; do not fully re-trace unless needed)
* Integration / environment constraints

If a deep structural review is needed, say so and point to Project Review — do not expand into Mode D here.

---

## 7. Debt (ownership register)

Top debts only (cap ~7). For each: name · type · evidence · cost of leaving · recommendation confidence.

Do not dump every nit.

---

## 8. Consolidate

* What should be merged, deleted, or finished instead of extended?
* What obsolete pieces are still consuming attention?

---

## 9. Missing

Genuine missing pieces that block ownership or stated intent — not optional nice-to-haves.

---

## 10. Build vs Polish vs Stop

Pick the primary dial now: build · polish · consolidate · stop.
Justify with evidence. Prefer stop/consolidate when warranted.

---

## 11. Roadmap Tiers (brief)

* Now (≤3)
* Next
* Later
* Do not

Observable proof for “Now” items. No calendar theater.
If a full ordered plan is needed, hand off to Execution Roadmap.

---

## 12. Should-Not

* What must not be started
* What must not be casually rewritten
* What must not be discussed until evidence arrives

---

## 13. Blind Spots & Unknowns

* What you did not inspect
* What an owner is most likely to misjudge
* What would change this brief if missing evidence differed

---

## 14. Critique

Candor: weakest leverage in the current approach; where the project is kidding itself; where sunk cost is steering.

---

## 15. Executive Close + Next Week

* One-sentence state of the project
* Single most important owner decision
* Focused next-week outcome (or “stop / observe”)
* Completion threshold — what “enough” looks like
* Recommendation confidence

---

## Final Questions

1. What is this project, honestly, right now?
2. What is the load-bearing core?
3. What is the biggest alignment or coherence problem?
4. What should we stop touching?
5. What is the single next owner action?
6. Build, polish, consolidate, or stop?
7. What remains unknown that most affects trust in this brief?
```

---

## Phrase lock

```text
Where are we / ownership takeover.
Mode A — follow optional/OWNERSHIP_TAKEOVER.md.
Thin status is a failure mode. No build unlock. Multitask=off.
```

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-20 | Initial Mode A engine | AGENTS outline only → peer pasteable |
