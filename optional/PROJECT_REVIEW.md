# Project Review — What Is Happening (Mode D engine)

**Status:** active · 2026-08-20 · workflow-lab pasteable  
**Job:** deep ownership-grade understanding of the project as it exists  
**NOT:** PR nitpick · audit-only defect hunt · roadmap · possibility-space exploration  
**Phrase lock:** “please review this project” / fine-tooth / full review → this kit + `INTENT_EXPAND.md` coverage bar — **do not ask which mode**  
**Cold-lead thin opener:** `MODE_D.md`  
**Complements:** **this** (what is) · Audit (`REPOSITORY_AUDIT.md`) · Planning (`EXECUTION_ROADMAP.md`) · Exploration (`EXPLORATORY_ANALYSIS.md`)  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

Paste for a full project / architecture review: purpose, structure, coherence, strengths, gaps, preserve/do-not, decide-next — without unlocking builds.

**Seat hint:** Reviewer or Engineer · Multitask **off** · Plan **no**.

---

## Paste

```text
# Project Review — Mode D (full)

Perform a full project / architecture review of this repository.

This is not primarily a bug hunt (use Repository Audit for that), not a roadmap (use Execution Roadmap), and not a possibility-space exploration (use Exploratory Analysis).

Your job is to understand what is happening here deeply enough to take ownership: what it is, how it fits together, what is strong, what is weak, what to preserve, and what to decide next.

Do not unlock builds unless I explicitly ask.
Do not invent scope. Prefer consolidation and simplification.
Skip empty sections. Depth over coverage.

## Operating rules (read first)

* Evidence from this repo first. No loyalty to prior chat conclusions.
* Label: Verified · Strongly inferred · Uncertain.
* Cite paths for important claims.
* Too large → semantic chunks → synthesize before conclusions. Chunk for processing, never for understanding.
* Author ≠ sole reviewer on scary irreversible recommendations — flag them.
* Interesting ≠ valuable. Do not recommend expansion that fails the restraint litmus below.

## Restraint litmus (before recommending expansion)

1. Does this belong in this repo’s stated purpose?
2. Can an existing piece absorb it?
3. Is the gap capability, or integration/docs/config?
4. Would do nothing / archive / exercise win?

---

## 0. Runtime

Mode=D · Seat=Reviewer (or Engineer) · Multitask=off · Plan=no

State what you inspected and what you skipped.

---

## 1. Purpose & Intended Behavior

* What this project is for
* Intended behavior vs observed behavior
* Who/what depends on it
* Non-goals / refuses (stated or evidenced)

---

## 2. Structure & Entry Points

* Major components and boundaries
* Real entry points (not aspirational)
* How an operator actually runs / uses it
* Dependency / integration edges

Optional: Mermaid of actual architecture (label intent separately if it differs).

---

## 3. Critical Paths

Trace the load-bearing workflows. Note where understanding is solid vs thin.

---

## 4. What Tests Actually Prove

* What is proven
* What is only asserted in docs
* Gaps in proof on critical paths
* Run tests when practical; if not, say what remains unverified

---

## 5. Doc ↔ Code Drift

Where docs, names, and code disagree — and which side is authoritative.

---

## 6. Coherence

* Duplication
* Mixed responsibilities
* Dead or orphaned parts
* Complexity without leverage
* Organism vs collection

---

## 7. Maturity & Quality (review lens)

Without turning into a full audit:

* Maturity level
* Quality hotspots (brief)
* Fragility that an owner must know
* Blind spots

If defect density is the main need, say so and recommend Repository Audit next.

---

## 8. Strengths to Preserve

What should survive any future change.

---

## 9. Gaps & Missing Pieces (review lens)

Genuine gaps vs optional improvements. Do not invent requirements to enlarge the project.

---

## 10. Preserve / Do Not Touch

### Preserve
### Do not touch yet
### Candidates to archive or delete (evidence required)

---

## 11. Build vs Polish vs Stop

Given current evidence:

* Build — only if a real capability gap demands it
* Polish — strengthen what exists
* Stop — already good enough for stated purpose

---

## 12. Decide-Next

* Do now / next / later / do not
* Milestone proof
* What would change the recommendation
* Stop evidence

Do not produce a multi-week roadmap here unless asked; hand off to Execution Roadmap for that.

---

## Final Questions

1. What is this project, in one honest sentence?
2. What is the load-bearing core?
3. What is the biggest coherence problem?
4. What should we preserve at all costs?
5. What should we stop touching?
6. What is the highest-leverage next decision (not necessarily a build)?
7. Is the correct move build, polish, consolidate, or stop?
```

---

## Phrase lock (optional short invoke)

```text
Please review this project.
Mode D — follow optional/PROJECT_REVIEW.md + INTENT_EXPAND coverage bar.
Do not ask which mode. No builds unlocked. Multitask=off.
```

---

## Map

| Kit | Job |
|-----|-----|
| `MODE_D.md` | Thin cold-lead opener |
| **this file** | Full review paste engine |
| `REPOSITORY_AUDIT.md` | Defect / systems diagnosis |
| `EXECUTION_ROADMAP.md` | Ordered plan |
| `EXPLORATORY_ANALYSIS.md` | Possibility space |
| `DAY_PROMPTS.md` #1 | Lighter daily cousin |

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-20 | Initial full review engine | Mode D was thin opener only; peer to audit/exploration |
