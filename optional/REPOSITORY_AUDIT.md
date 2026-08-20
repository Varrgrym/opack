# Full Repository Audit — What’s Here, How Well It Works, What’s Wrong

**Status:** active · 2026-08-20 · workflow-lab pasteable  
**Job:** evidence-based diagnosis of the repository as a system  
**NOT:** feature brainstorm · possibility-space exploration · Mode C roadmap · drive-by style nitpicks  
**Complements:** Review (`PROJECT_REVIEW.md` / Mode D) · **this** (what’s wrong / weak) · Planning (`EXECUTION_ROADMAP.md`) · Exploration (`EXPLORATORY_ANALYSIS.md`)  
**Related:** Mode D cold-lead · `INTENT_EXPAND.md` coverage bar · `DAY_PROMPTS.md` #1/#2/#4  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

Paste when you want a **full-scale, evidence-based systems analysis**: inventory, quality, failure modes, debt, and ranked defects — before planning or exploring new directions.

**Seat hint:** Reviewer (preferred) or Engineer · Multitask **off** · Plan **no** until after the audit.

**Philosophy:** The auditor is paid to diagnose with evidence — not to invent a backlog of interesting fixes.

---

## Paste

```text
# Full Repository Audit & Systems Analysis

Perform a full-scale, evidence-based analysis of this repository.

This is not a normal code review of a single PR, not a feature brainstorm, and not a strategic possibility-space exploration.

Your job is to answer three questions with evidence:

1. What is here?
2. How well does it work?
3. What is wrong, weak, fragile, misleading, or incomplete?

Do not invent problems to fill sections. Skip empty sections. Depth over coverage.
Do not turn the audit into a feature wishlist. Diagnosis first; prescriptions only after evidence.
Do not unlock builds unless I explicitly ask after the audit.

## Philosophy

The auditor is paid to diagnose with evidence — not to invent a backlog of interesting fixes.
A finding without a path cite is not a finding. A recommendation without confidence is not advice — it is a guess wearing authority.

## Operating rules (read first)

* Ground every important claim in files, tests, docs, configs, or runnable checks. Cite paths.
* Label findings: Verified · Strongly inferred · Uncertain.
* Label recommendations with confidence:
  - High — supported by multiple independent pieces of evidence
  - Medium — strong interpretation but some ambiguity
  - Low — plausible option requiring operator judgment
* Severity for defects: Critical · High · Medium · Low · Nit.
* Prefer consolidation and simplification over new subsystems.
* Distinguish: bug · design flaw · doc drift · missing test proof · operational risk · incomplete work · intentional deferral.
* Distinguish intrinsic complexity from self-inflicted surface area. Do not treat file count as proof of either.
* If something looks abandoned, say so and cite evidence (staleness, TODOs, dead entry points, broken refs).
* If the repo is too large: chunk by subsystem → investigate → synthesize before project-level conclusions. Chunk for processing, never for understanding.
* Author ≠ sole reviewer on irreversible recommendations — flag where a second pass is warranted.
* Do not fill unknowns with assumptions.
* End with decide-next, but do not smuggle a full roadmap into the audit.

---

## 0. Runtime

Open with:

Mode=Audit · Seat=Reviewer (or Engineer) · Multitask=off · Plan=no

State briefly what you inspected and what you did not (directories, workflows, tests not run, integrations not exercised).

---

## 1. Project Identity (evidence)

Establish from the repo itself:

* What this project is
* What it claims to do (README, docs, entry points)
* Who/what it serves
* Stated non-goals / refuses if any
* Apparent maturity (prototype · lab · product · archive · mixed)

Flag contradictions between marketing docs and actual code.

---

## 2. Inventory — What Is Here

Map the repository as a system:

* Top-level layout and purpose of major directories
* Major components / modules / services / packages
* Entry points (CLIs, apps, APIs, scripts, notebooks)
* Data stores, configs, env/secrets patterns (do not print secrets)
* External dependencies and integration boundaries
* Test layout and how tests are run
* Docs that matter vs docs that are stale theater
* Generated / vendored / archived areas (and whether they matter)

Produce a short architecture picture of what actually exists (not the aspirational architecture).

---

## 3. Critical Paths — How Work Flows

Identify the most important workflows and trace them:

* Happy path(s)
* Operator / user journeys
* Build · test · run · deploy (as applicable)
* Failure / recovery paths if present

For each critical path: does it work end-to-end, partially, or only on paper?

---

## 4. What Works

Explicitly name strengths worth preserving:

* Reliable subsystems
* Clear boundaries
* Good tests that actually prove something
* Docs that match reality
* Patterns worth reusing

Do not skip this section. Audits that only list problems are incomplete.

---

## 5. Correctness & Behavior

Find evidence of incorrect or fragile behavior:

* Bugs and likely bugs
* Edge cases ignored
* Error handling gaps
* Race / concurrency / idempotency issues (if relevant)
* Silent failures / fail-open where fail-closed is needed
* Incomplete migrations or half-finished refactors

For each: evidence · impact · severity · how you would verify a fix.

---

## 6. Tests & Proof

Answer: what do the tests actually prove?

* What is well covered
* What is tested only cosmetically
* Critical paths with no proof
* Flaky or environment-coupled tests
* Whether CI (if present) gates what it claims to gate

Prefer running tests when practical; if not run, say why and what remains unverified.

---

## 7. Doc ↔ Code Drift

Compare documentation, comments, READMEs, and ADRs to reality.

* Claims that are false
* Missing essential docs for real entry points
* Instructions that would mislead a cold operator
* Names/terms that no longer match the code

---

## 8. Architecture & Coherence

Evaluate structure:

* Clear vs mixed responsibilities
* Duplication / near-duplicates
* Coupling that will punish change
* Dead code / unreachable features
* Boundary violations
* Complexity theater (impressive structure without leverage)
* Organism vs collection (coherent system vs pile of parts)
* Complexity vs surface area: which parts increase capability vs merely increase surface area?

Prefer simplify. Do not recommend rewrites without strong evidence.

---

## 9. Reliability, Safety, Operations

As applicable to this repo:

* Failure modes
* Secrets handling / credential hygiene (no secret values in the report)
* Permissions / auth assumptions
* Logging / observability gaps
* Backup / recovery / rollback
* Performance hotspots only if evidenced
* Environment assumptions (local-only, single-machine, etc.)

---

## 10. Incomplete, Abandoned, Deferred

Identify:

* Incomplete features
* Abandoned experiments
* Parked work that is still referenced
* TODOs that hide real risk
* Compatibility shims that should die or be documented

Separate intentional postponement from neglect.

---

## 11. Debt Register

Produce a debt register (not a brainstorm):

For each item:
* Name
* Type (tech · product · docs · test · process)
* Evidence
* Cost of leaving it
* Cost of fixing it (rough)
* Severity
* Recommendation: Fix now / Fix soon / Contain / Accept / Delete

---

## 12. Risks

List the highest-leverage risks if nothing changes:

* What is most likely to break
* What is most likely to confuse the next operator
* What is most likely to waste time
* What looks fine but is load-bearing and fragile

---

## 13. Preserve / Do Not Touch

Explicit lists:

### Preserve
What should not be casually rewritten.

### Do not touch yet
Areas where change is high blast / low evidence / low leverage.

### Safe to delete or archive
Only with evidence. Attach recommendation confidence (High / Medium / Low).

---

## 14. Findings by Severity

Roll up defects and weaknesses:

### Critical
### High
### Medium
### Low / Nit

Each finding: one sentence claim · evidence path(s) · impact · suggested verification.

---

## 15. Unknowns & Unverified Areas

Mandatory on non-trivial repos. Do not fill gaps with assumptions.

* files/directories not inspected
* workflows not executed
* integrations not tested
* assumptions that could not be verified
* documentation that appears authoritative but was not confirmed against implementation
* areas where understanding is weak
* conclusions that would change if missing evidence were different

---

## 16. Audit Verdict

Give a direct systems verdict:

* Overall health: Healthy / Mixed / Fragile / Unsound (pick one; justify)
* Maturity match: does the repo’s ambition match its proof?
* Biggest structural problem
* Biggest operational problem
* Biggest documentation problem
* Single highest-leverage fix (one) — with recommendation confidence

---

## 17. Decide-Next (audit close — not a full roadmap)

End with:

* Do now (≤3)
* Do next
* Later
* Do not
* For each recommendation: confidence (High / Medium / Low) and why
* What would change these recommendations
* Stop evidence — when is the audit “acted on enough” to pause?

If useful, one small leverage table for the top recommendations only:

| Recommendation | Effort (Low/Med/High) | Leverage (Low/Med/High/Unknown) | Confidence |
| --- | --- | --- | --- |

If I want a week plan after this, I will run Execution Roadmap separately.
If I want possibility space, I will run Exploratory Analysis separately.

---

## Final Questions

Answer directly:

1. What is the single most important thing wrong with this repository?
2. What is the most important thing that is already working well?
3. What claim in the docs is most misleading?
4. What critical path has the weakest proof?
5. What should we stop touching?
6. What should we delete or archive? (confidence?)
7. What should we fix before adding anything new?
8. What remains uncertain because evidence was missing?
9. What is the highest-leverage fix that is actually warranted — not merely interesting?
```

---

## Phrase lock (optional short invoke)

```text
Full repository audit — what’s here, how well it works, what’s wrong.
Follow optional/REPOSITORY_AUDIT.md (or docs/workflow-lab/REPOSITORY_AUDIT.md).
Evidence first. No feature wishlist. Skip empty sections. Label Verified/Inferred/Uncertain.
Recommendations need confidence. Unknowns stay unknown.
```

---

## Map to nearby kits

| Need | Use |
|------|-----|
| Architecture / vision / “review this project” | `PROJECT_REVIEW.md` / Mode D + `INTENT_EXPAND.md` |
| Defect-heavy systems diagnosis | **this file** |
| Ordered next-week plan | `EXECUTION_ROADMAP.md` |
| Possibility space / missed questions | `EXPLORATORY_ANALYSIS.md` |
| Short daily cousin | `DAY_PROMPTS.md` #1 |

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-20 | Initial pasteable | Peer to exploration; land audit as first-class kit (draft was chat-only) |
| 2026-08-20 | Unknowns · rec confidence · leverage | Parity with Mode D judgment upgrades; still diagnosis not roadmap |
