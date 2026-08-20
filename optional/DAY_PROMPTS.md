# Day prompts (Cursor paste kit)

**Status:** active · 2026-08-09 · workflow-lab pasteables  
**Use:** day-to-day Cursor prompts — inspect → reason → challenge → verify → report  
**NOT:** Layer A · Mode E · replace Modes A–D · always-on mega-prompt  
**Doctrine already elsewhere:** 5W1H → `INTENT_EXPAND.md` · chunk/synthesize → `CHUNKING.md` · full project → Mode D / `MODE_D.md` · build gate → `SPEC_BUILD.md` · agent leash → `AGENTIC_INTERACTION.md`

---

## Daily five (keep these hot)

| # | Name | When | Seat hint |
|---|------|------|-----------|
| 1 | Deep review | Investigate without knowing what’s wrong | Engineer → Reviewer if scary |
| 2 | Double-check | After a change lands | Reviewer / Attacker |
| 4 | Skeptical pass | After a confident answer | Reviewer / Attacker |
| 5 | Next actions | Turn analysis into ordered plan | Engineer (Mode C cousin) |
| 10 | Are we done? | Before calling work finished | Engineer / Reviewer |

**Loop:** Understand → inspect → challenge → prioritize → verify completion.

**Also reach for:** #9 Chunked investigation on large repos · meta-prompt when you want silent expansion of short asks.

### Full TOC

| # | Section |
|---|---------|
| — | [Daily five](#daily-five-keep-these-hot) · [Map to pack](#map-to-existing-pack-dont-duplicate-doctrine) |
| 1 | [Deep review](#1--deep-review) |
| 2 | [Double-check my work](#2--double-check-my-work) |
| 3 | [Find what we're missing](#3--find-what-were-missing) |
| 4 | [Skeptical reviewer / adversarial pass](#4--skeptical-reviewer--adversarial-pass) |
| 5 | [What should we do next?](#5--what-should-we-do-next) |
| 6 | [Should we build this?](#6--should-we-build-this) |
| 7 | [Find consolidation opportunities](#7--find-consolidation-opportunities) |
| 8 | [Who / what / why / when / where / how](#8--who--what--why--when--where--how) |
| 9 | [Chunked investigation](#9--chunked-investigation) |
| 10 | [Are we actually done?](#10--are-we-actually-done) |
| — | [Meta — expand short asks](#meta--expand-short-asks-standing-paste) · [Operator tips](#operator-tips) · [Log](#log) |

---

## Map to existing pack (don’t duplicate doctrine)

| Prompt | Already covered by | This kit adds |
|--------|-------------------|---------------|
| #1 Deep review | Mode D / INTENT_EXPAND | Pasteable “no fix yet” investigation shape |
| #2 Double-check | Reviewer seat · fail-closed verify | Explicit PASS / REVISE / FAIL verdict |
| #3 Missing pieces | Mode D gaps · SPEC · full engine `EXPLORATORY_ANALYSIS.md` | Gap-only lens (short); use exploratory kit for possibility-space passes |
| #4 Skeptical | Attacker / Reviewer | Falsify-previous-analysis paste |
| #5 Next actions | Mode C | Build/fix/simplify/stop dial |
| #6 Should we build? | SPEC / never-build | BUILD / DEFER / REJECT |
| #7 Consolidate | Mode D coherence | Consolidation-only pass |
| #8 5W1H | `INTENT_EXPAND.md` | Compact paste (optional) |
| #9 Chunked | `CHUNKING.md` | Compact paste |
| #10 Done? | DoD/stop · RUNTIME | DONE / NOT DONE rubric |
| Meta | INTENT_EXPAND depth dial | Silent expand + simple answer |

---

## 1 — Deep review

```text
Do a deep review of this project/area.

Do not jump straight to fixing things. First understand what exists and how it fits together.

Analyze:
- What this is supposed to do
- What it actually does
- Who/what depends on it
- Why it exists
- Where it is used
- How the pieces interact
- What assumptions it makes
- What constraints it operates under
- What has changed recently, if history is available

Look for:
- Bugs and incorrect behavior
- Missing functionality
- Dead or redundant code
- Duplication
- Contradictions between code and documentation
- Fragile assumptions
- Poor error handling
- Security/safety risks
- Performance problems
- Unnecessary complexity
- Places where responsibilities are mixed
- Things that are harder to understand than they need to be
- Gaps between the intended design and implementation

Also ask:
- What am I not noticing?
- What would a skeptical reviewer challenge?
- What would break under unusual conditions?
- What looks correct but may actually be wrong?
- What has been solved already and should NOT be rebuilt?

Separate findings into:
1. Critical
2. Important
3. Worth improving
4. Cosmetic / optional

Do not make changes yet.

End with:
- Current state
- Most important findings
- Biggest risks
- Biggest opportunities
- Recommended next actions, ordered by priority
```

---

## 2 — Double-check my work

```text
Double-check the work that was just completed.

Do not assume it is correct simply because the implementation exists or tests pass.

Independently reconstruct what the change was supposed to accomplish, then verify whether it actually accomplishes it.

Check:
- Requirements
- Intended behavior
- Edge cases
- Failure modes
- Existing interfaces
- Backwards compatibility
- Related code
- Documentation
- Tests
- Naming and consistency
- Unintended side effects

Look specifically for things we may have missed because we were focused on getting the task finished.

Try to falsify the implementation rather than confirm it.

Ask:
- What would make this fail?
- What scenario wasn't tested?
- What assumption are we relying on?
- Is there a simpler or safer implementation?
- Did this create duplication?
- Did this solve the actual problem or merely the symptom?
- Did we accidentally introduce a new problem?

Give me a verdict:
PASS / PASS WITH CONCERNS / REVISE / FAIL

Do not modify anything unless I explicitly ask you to.
```

---

## 3 — Find what we're missing

```text
Analyze this work specifically for missing pieces.

Assume the obvious implementation is already present. Your job is to find what we forgot.

Compare:
- stated goals
- requirements
- existing documentation
- current implementation
- tests
- surrounding systems

Look for:
- Missing functionality
- Missing error paths
- Missing validation
- Missing tests
- Missing documentation
- Missing integrations
- Missing cleanup
- Missing lifecycle handling
- Missing recovery behavior
- Missing operator controls
- Missing observability
- Missing security/safety boundaries
- Missing edge cases

Also identify things that are technically present but incomplete in practice.

For every gap, explain:
1. What is missing
2. Why it matters
3. How serious it is
4. What would demonstrate that it is actually solved

Do not invent requirements merely to make the project larger.

Distinguish genuine gaps from optional improvements.
```

---

## 4 — Skeptical reviewer / adversarial pass

```text
Now act as a skeptical senior reviewer.

Assume the previous analysis may be wrong.

Try to break its conclusions.

Look for:
- Overconfidence
- Unsupported assumptions
- Things being called "complete" prematurely
- Hidden dependencies
- Circular reasoning
- False positives from tests
- Missing evidence
- Architecture that works only under ideal conditions
- Requirements that were interpreted incorrectly
- Places where documentation describes something that the code does not actually guarantee

For each major conclusion, ask:
"What evidence proves this?"

Downgrade confidence where evidence is weak.

Do not manufacture criticism. If something is genuinely solid, say so.

End with:
- What survives scrutiny
- What does not
- What needs evidence
- What should be investigated next
```

---

## 5 — What should we do next?

```text
Based on the current state of the project, determine what should happen next.

Do not simply produce a generic backlog.

First determine whether we should:
- build
- fix
- simplify
- consolidate
- clean
- document
- test
- review
- archive
- stop

Then produce an ordered action list.

For each action include:
- Priority
- Action
- Why it matters
- Dependencies
- Approximate scope
- What "done" looks like
- Whether it unlocks anything else

Look for opportunities to accomplish multiple goals with one change.

Prefer:
- fewer moving parts
- consolidation
- reuse
- deletion of unnecessary complexity
- completing unfinished work
- strengthening existing foundations

over adding new features.

Explicitly identify:
- What should NOT be worked on yet
- What should be parked
- What is already good enough
- Where a stopping point exists

The goal is not maximum activity.

The goal is maximum useful progress.
```

---

## 6 — Should we build this?

```text
Evaluate whether this proposed feature/project is actually worth building.

Analyze it from multiple angles:

WHY
- What problem does it solve?
- Who benefits?
- Is the problem real?

WHAT
- What exactly would need to exist?
- What capabilities does it introduce?

HOW
- How would it interact with the existing system?
- What dependencies would it create?

COST
- Complexity
- Maintenance
- Testing
- Cognitive overhead
- New failure modes

ALTERNATIVES
- Can the existing system already solve this?
- Can we accomplish 80% of the value more simply?
- Can an existing component be improved instead?

STRATEGIC VALUE
- Does it strengthen an existing capability?
- Does it create something reusable?
- Does it teach us something important?
- Does it merely add another isolated feature?

RISKS
- What could go wrong?
- What could become permanent baggage?

Give me one of:
BUILD / BUILD A SMALL SLICE / DEFER / REJECT

Explain why.
```

---

## 7 — Find consolidation opportunities

```text
Search this project for opportunities to consolidate.

Do not assume that more code or more documents means more capability.

Look for:
- Duplicate implementations
- Multiple versions of the same idea
- Overlapping modules
- Redundant utilities
- Competing sources of truth
- Similar configuration systems
- Repeated workflows
- Duplicate documentation
- Historical artifacts that are being mistaken for current architecture
- Features that can share infrastructure
- Concepts that should have one canonical definition

For every consolidation candidate, explain:
- What currently exists
- What overlaps
- What should become canonical
- What can be removed/archived
- Risks of consolidation
- Whether consolidation is actually worthwhile

Do NOT merge things merely because they look similar.

Preserve meaningful history.

End with a prioritized consolidation plan.
```

---

## 8 — Who / what / why / when / where / how

Prefer `INTENT_EXPAND.md` for doctrine. Compact paste:

```text
Analyze this task using WHO / WHAT / WHY / WHEN / WHERE / HOW
(who uses/owns/depends; what consumes/produces/changes; why it exists;
when it runs / must not; where source of truth lives; how it works/fails/recovers).

Identify concrete engineering facts we were not considering.
Do not turn this into bureaucracy. Label Known → Inferred → Unknown → Recommended.
```

---

## 9 — Chunked investigation

Prefer `CHUNKING.md` for doctrine. Compact paste:

```text
Do not attempt to understand this entire project in one shallow pass.

Investigate it in chunks.

First:
1. Identify the major areas of the project.
2. Group related files/folders into logical chunks.
3. Explain the purpose of each chunk.
4. Identify dependencies between chunks.

Then inspect each chunk carefully.

For each chunk record:
- Purpose · Inputs · Outputs · Dependencies · Important files
- Current implementation · Known issues · Tests · Documentation
- Open questions · Confidence in understanding

After all chunks are inspected, perform a synthesis pass.

Look specifically for:
- Contradictions between chunks
- Duplicate responsibilities
- Broken interfaces
- Missing connections
- Multiple sources of truth
- Architectural patterns that only become visible at project scale

Do not give the final conclusion until chunk-level findings have been synthesized.
Pin: chunk for processing, never for understanding.
```

---

## 10 — Are we actually done?

```text
Determine whether this work is actually finished.

Do not interpret "the code runs" or "the requested feature exists" as finished.

Evaluate:

1. FUNCTIONAL COMPLETENESS — Does it accomplish the intended goal?
2. EDGE CASES — Outside the happy path?
3. FAILURE HANDLING — Bad input, missing deps, unexpected state?
4. INTEGRATION — Works with the rest of the system?
5. TESTING — What evidence do we have?
6. DOCUMENTATION — Can another developer understand and use it?
7. MAINTAINABILITY — Will this remain understandable?
8. CLEANUP — Obsolete code, temp files, duplication, confusing artifacts?
9. REGRESSION — Could this have broken something unrelated?
10. STOPPING POINT — Meaningful work left, or mostly polish?

Give me:
DONE
DONE WITH FOLLOW-UP
NOT DONE

Then list the smallest remaining actions necessary to legitimately call it done.

Do not expand the scope merely because improvements are possible.
```

---

## Meta — expand short asks (standing paste)

Closest to “make my simple request smarter” without always-on ceremony:

```text
Do more than answer the literal request.

First understand what I am actually trying to accomplish.

Before responding, silently determine:
- WHO / WHAT / WHY / WHEN / WHERE / HOW
- What constraints exist?
- What assumptions am I making?
- What information is missing?
- What could go wrong?
- What related work is necessary?
- What related work is unnecessary?

Then choose the smallest appropriate investigation needed to answer well.

If the request is simple, keep the final answer simple.
But do not let a simple request produce a shallow analysis.

Look one level deeper for:
- hidden dependencies
- obvious omissions
- risks
- contradictions
- opportunities to simplify or reuse
- evidence needed to support the conclusion

Do not invent complexity.
Do not turn every request into a massive project.
Do not automatically modify anything.

When appropriate, finish with:
1. Answer
2. What I checked
3. What I found
4. What I recommend
5. What I would NOT do
```

**Note:** INTENT_EXPAND already does silent 5W1H on substantial work. Use this paste when you want the **report shape** (checked / found / recommend / NOT) explicitly.

---

## Operator tips

- Open with runtime stanza on substantial use: `Mode=… · Seat=… · Multitask=off · Plan=?`  
- #2 and #4 pair well: Engineer builds → paste #2 or open Reviewer with #4.  
- “Review this project” still → Mode D (don’t ask which mode); #1 is the lighter cousin.  
- Do not paste the whole kit into `follow-operator-pack.mdc` — keep digest thin; open this file when needed.

---

## Log

| Date | Note |
|------|------|
| 2026-08-09 | Operator paste kit landed; daily five highlighted; mapped to existing Modes/kits |
| 2026-08-12 | Full TOC added (no file split — single paste kit stays installable as one dial file) |
