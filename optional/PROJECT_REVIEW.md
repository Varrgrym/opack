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

Paste for a full project / architecture review: purpose, structure, coherence, **trajectory**, strengths, gaps, preserve/do-not, unknowns, decide-next — without unlocking builds.

**Seat hint:** Reviewer or Engineer · Multitask **off** · Plan **no**.

**Philosophy:** The reviewer is not paid to find work. The reviewer is paid to determine whether work is warranted.

---

## Paste

```text
# Project Review — Mode D (full)

Perform a full project / architecture review of this repository.

This is not primarily a bug hunt (use Repository Audit for that), not a roadmap (use Execution Roadmap), and not a possibility-space exploration (use Exploratory Analysis).

Your job is to understand what is happening here deeply enough to take ownership: what it is, how it fits together, where it is heading, what is strong, what is weak, what to preserve, what remains unknown, and whether further work is warranted.

Do not unlock builds unless I explicitly ask.
Do not invent scope. Prefer consolidation and simplification.
Skip empty sections. Depth over coverage.

## Philosophy

The reviewer is not paid to find work. The reviewer is paid to determine whether work is warranted.
Analysis is not authorization. Trajectory and leverage answer whether continuing is warranted — not what to build next.

## Operating rules (read first)

* Evidence from this repo first. No loyalty to prior chat conclusions.
* Label evidence: Verified · Strongly inferred · Uncertain.
* Label recommendations separately with confidence:
  - High — supported by multiple independent pieces of evidence
  - Medium — strong interpretation but some ambiguity
  - Low — plausible option requiring operator judgment
* Cite paths for important claims.
* Too large → semantic chunks → synthesize before conclusions. Chunk for processing, never for understanding.
* Author ≠ sole reviewer on scary irreversible recommendations — flag them.
* Interesting ≠ valuable. Do not recommend expansion that fails the restraint litmus below.
* Distinguish project complexity (intrinsic to the problem) from project surface area (self-inflicted sprawl). File count alone proves neither.
* Do not fill unknowns with assumptions. State what you did not inspect.

## Restraint litmus (before recommending expansion)

1. Does this belong in this repo’s stated purpose?
2. Can an existing piece absorb it?
3. Is the gap capability, or integration/docs/config?
4. Would do nothing / archive / exercise win?

---

## 0. Runtime

Mode=D · Seat=Reviewer (or Engineer) · Multitask=off · Plan=no

State what you inspected and what you skipped (directories, workflows, integrations, tests not run).

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
* Organism vs collection
* Complexity vs surface area:
  - Is complexity intrinsic to the problem, or self-inflicted?
  - Which parts increase capability, and which merely increase surface area?
* Complexity without leverage (brief)

---

## 7. Maturity & Quality (review lens)

Without turning into a full audit:

* Maturity level
* Quality hotspots (brief)
* Fragility that an owner must know
* Blind spots

If defect density is the main need, say so and recommend Repository Audit next.

---

## 8. Trajectory

Describe the implied direction from current code and structure — not alternate futures (that is Exploratory Analysis).

* Where is the project heading based on current code and structure?
* Is that trajectory consistent with its apparent purpose?
* Which recent additions strengthened the core?
* Which additions increased surface area without increasing capability?
* Is complexity growing faster than capability?
* Is the project converging toward a stable system or accumulating features?
* What would likely happen if development continued unchanged for another 3–6 iterations?
* Is the project approaching a natural stopping point?

---

## 9. Strengths to Preserve

What should survive any future change. Prefer specific subsystems/patterns over slogans.

---

## 10. Gaps & Missing Pieces (review lens)

Genuine gaps vs optional improvements. Do not invent requirements to enlarge the project.

---

## 11. Preserve / Do Not Touch

Create negative space around the project — things that should not casually be modified.

### Preserve
What should not be casually rewritten (and why).

### Do not touch yet
High blast / low evidence / low leverage — leave alone for now (and why).

### Candidates to archive or delete
Only with evidence. Attach recommendation confidence (High / Medium / Low).

---

## 12. Build vs Polish vs Stop

Given current evidence — pick the primary dial:

* Build — only if a real capability gap demands it
* Polish — strengthen what exists
* Consolidate — reduce surface area / duplication
* Stop — already good enough for stated purpose

For the chosen dial: effort vs leverage in one sentence. Trajectory may favor stop/consolidate even when defects exist.

---

## 13. Unknowns & Unverified Areas

Mandatory on non-trivial repos. Do not fill gaps with assumptions.

Identify:

* files/directories not inspected
* workflows not executed
* integrations not tested
* assumptions that could not be verified
* documentation that appears authoritative but was not confirmed against implementation
* areas where your understanding is weak
* conclusions that would change if missing evidence were different

---

## 14. Decide-Next

* Do now / next / later / do not
* For each recommendation: confidence (High / Medium / Low) and why
* Milestone proof
* What would change the recommendation
* Stop evidence

If useful, one small leverage table for the top recommendations only:

| Recommendation | Effort (Low/Med/High) | Leverage (Low/Med/High/Unknown) | Confidence |
| --- | --- | --- | --- |

Do not produce a multi-week roadmap here unless asked; hand off to Execution Roadmap for that.
Do not use this section to invent work — only to judge whether work is warranted.

---

## Final Questions

1. What is this project, in one honest sentence?
2. What is the load-bearing core?
3. What is the biggest coherence problem?
4. What is the trajectory if nothing changes for 3–6 iterations?
5. What should we preserve at all costs?
6. What should we stop touching?
7. What remains unknown that most affects trust in this review?
8. What is the highest-leverage next decision (not necessarily a build)? Confidence?
9. Is the correct move build, polish, consolidate, or stop?
```

---

## Phrase lock (optional short invoke)

```text
Please review this project.
Mode D — follow optional/PROJECT_REVIEW.md + INTENT_EXPAND coverage bar.
Do not ask which mode. No builds unlocked. Multitask=off.
Reviewer is paid to determine whether work is warranted — not to find work.
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
| 2026-08-20 | Trajectory · unknowns · rec confidence · leverage | Directional review + trustworthy close; keep Audit/Explore separate |
