# Project review — read-only (GitHub / cold open)

**Status:** active kit · 2026-09-20 · workflow-lab pasteable  
**Job:** honest technical model of one repo · execution/data-flow trace · **no writes**  
**NOT:** PR nitpick-only · roadmap · close-out (`CLOSE_CHAT.md`) · session land  
**Pairs with:** Mode D · `PROJECT_REVIEW.md` (workspace ownership review) · `INTENT_EXPAND.md` coverage when phrase-locked  
**Phrase lock:** none — operator pastes explicitly or `@` this file  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

- **New chat** after closing the prior thread (`CLOSE_CHAT.md` → **go**).
- Repo named by **GitHub URL** or **workspace already open** (omit URL).
- **Read-only** until you explicitly ask to implement.

**Seat hint:** Reviewer · Multitask **off** · Plan **no**.

**Chain from close-out:** On **go**, land repo URL · local path · branch · one line: *cold lead — prior chat not evidence.* Then open this paste in a **new** chat.

---

## Paste (operator) — full

```text
# Project review — read-only (full)

Review this GitHub repo/project in depth.

Runtime: Mode=D · Seat=Reviewer · Multitask=off · Plan=no

This is a READ-ONLY review. Do not modify files, create commits, open PRs, run migrations, change configuration, or otherwise alter project state unless I explicitly ask later. Inspect broadly before forming conclusions.

Evidence from this repository first. Do not treat prior chats, README claims, or my handoff notes as authoritative unless confirmed in the repo or in landed git docs I @-reference.

Repository:
[PASTE GITHUB URL — or say “this workspace” if the repo is already open]

Optional handoff (non-authoritative):
[Prior close-out path/commit · branch · one-line intent · leftover system state — or “none”]

Your job is to understand the actual system as it exists—not to assume the README, stated product goal, architecture diagrams, or prior plans are correct.

Review the repo as a system. Trace important behavior through the actual code, configuration, data flow, dependencies, tests, scripts, and deployment/runtime assumptions.

Philosophy: The reviewer is not paid to find work. The reviewer is paid to determine whether work is warranted. Analysis is not authorization.

State up front what you inspected and what you skipped (directories, workflows, tests/CI not run).

---

## 1. PROJECT INTENT

* What does the project appear intended to do?
* What is its stated goal?
* What does the implementation actually do?
* Where do those diverge?
* Identify the apparent current product/system boundary.
* Do not invent missing intent.

Label: Verified · Strongly inferred · Uncertain.

---

## 2. REPOSITORY MAP

Build a concise map of:

* major directories/files
* application/runtime entry points
* core modules and responsibilities
* data models/storage
* APIs/interfaces
* frontend/UI, if present
* background jobs/workers, if present
* external services/integrations
* configuration and environment handling
* build/test/deployment infrastructure

For each important component, explain what depends on it and what it depends on.

---

## 3. EXECUTION / DATA FLOW

Trace the important paths end-to-end.

For the core use cases, show:

input → transformations → state/data → business logic → outputs/side effects

Identify:

* authoritative state
* derived state
* boundaries between subsystems
* synchronization/async behavior
* error handling
* persistence
* external dependencies
* important invariants

Prefer causal explanations over feature lists.

---

## 4. ACTUAL ARCHITECTURE

Reverse-engineer the architecture from the implementation.

Separate:

* documented architecture
* architecture actually implemented
* architectural intent visible in the code
* accidental/coupled structure

Identify major abstractions and whether they genuinely provide isolation or are mostly organizational.

---

## 5. CURRENT STATE

Classify significant areas as:

* done
* partial
* not started
* broken
* unclear/unverified
* parked/dead code

Do not call something “done” merely because code exists. Look for evidence in implementation, integration, tests, and runtime paths.

---

## 6. QUALITY / CORRECTNESS

Look specifically for:

* correctness bugs
* broken or incomplete flows
* race conditions/state inconsistencies
* error-handling gaps
* invalid assumptions
* dead code
* duplicated logic
* excessive coupling
* abstraction problems
* security/privacy concerns
* performance risks
* reliability risks
* maintainability problems
* dependency/version risks
* test gaps

Distinguish confirmed problems from plausible risks.

For every important finding, give:

* evidence (paths)
* why it matters
* affected path/component
* confidence: high / medium / low

---

## 7. TESTS AND VERIFICATION

Determine:

* what is actually tested
* what tests prove
* what is only mocked
* what important behavior is untested
* whether tests appear trustworthy
* whether CI/build checks cover the critical paths

Run tests when practical; if not, say what remains unverified. Do not equate test presence with correctness.

---

## 8. GIT / PROJECT HYGIENE

Inspect relevant repository history and project metadata where available.

Look for:

* recent direction of development
* abandoned approaches
* suspicious or stale code
* unfinished migrations/refactors
* TODO/FIXME markers that matter
* generated artifacts
* secrets or sensitive configuration risks
* dependency drift
* inconsistencies between code and documentation

Do not overinterpret commit history; use it as supporting evidence.

---

## 9. SYSTEM RISKS

Identify the small number of risks that could materially affect the project.

Separate:

* blocking issues
* important but non-blocking issues
* cleanup
* speculative/future concerns

Do not turn every imperfection into a blocker.

---

## 10. PRODUCT / SYSTEM READ

Without prescribing what the product should become, explain:

* what system exists today
* what it is actually capable of
* what its strongest internal design assumptions are
* where the system is coherent
* where it is internally inconsistent
* what remains unverified

---

## 11. TRAJECTORY & LEVERAGE

From current code and structure (not alternate futures):

* implied direction of development
* whether trajectory matches apparent purpose
* what strengthened the core vs increased surface area without capability
* whether complexity is growing faster than capability
* natural stopping point vs “keep building by default”

Restraint litmus before recommending expansion:

1. Does this belong in this repo’s stated purpose?
2. Can an existing piece absorb it?
3. Is the gap capability, or integration/docs/config?
4. Would do nothing / archive / exercise win?

---

## 12. REVIEW VERDICT

End with a compact state report:

INTENDED GOAL
[What the project appears to be trying to accomplish.]

ACTUAL STATE
[What exists and works based on evidence.]

GOAL STATUS
* MET
* PARTIAL
* NOT MET
* UNDETERMINED

CRITICAL FACTS
[Only the facts necessary to understand the current state.]

CONFIRMED RISKS
[Concrete evidence-backed risks.]

UNVERIFIED
[Things that cannot be established from the available evidence.]

LEFTOVER SYSTEM STATE
[Incomplete migrations, generated files, local state, configuration assumptions, etc.]

DO NOT TOUCH
[Anything that should not be changed merely as cleanup.]

OPEN QUESTIONS
[Maximum 3. Only questions that materially affect understanding or next action.]

BUILD vs POLISH vs CONSOLIDATE vs STOP
[Pick one primary dial with one sentence: effort vs leverage.]

RECOMMENDED NEXT STEP
[Factual next step based on evidence. Do not implement unless I explicitly ask.]

---

## IMPORTANT REVIEW RULES

* Read before proposing changes.
* No writes unless I explicitly ask later.
* No “best practice” recommendations detached from this project's actual constraints.
* Do not redesign the system merely because you would architect it differently.
* Do not assume TODOs are requirements.
* Do not assume README claims are true.
* Do not assume missing documentation means missing implementation.
* Do not assume implementation means working behavior.
* Prefer tracing real execution paths.
* Label inference explicitly.
* Separate confirmed facts, interpretation, and speculation.
* When evidence conflicts, show the conflict rather than silently choosing one.
* If the repo is too large for complete inspection, say exactly what was inspected and what remains unverified.
* Do not manufacture certainty.
* Do not begin a coding phase unless explicitly asked.

The desired output is an honest technical model of the repository, not a generic code review.
```

---

## Map

| Kit | Job |
|-----|-----|
| `CLOSE_CHAT.md` | End prior chat · land pickup · **go** |
| **this file** | Cold-open read-only repo model (URL or workspace) |
| `PROJECT_REVIEW.md` | Full Mode D ownership review (workspace · trajectory · decide-next) |
| `MODE_D.md` | Thin opener → `PROJECT_REVIEW.md` |
| `REPOSITORY_AUDIT.md` | Defect / systems diagnosis |

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-09-20 | Initial kit | Durable GitHub/cold read-only review paste; close → new chat chain |
