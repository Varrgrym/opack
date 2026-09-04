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

**Also reach for:** #9 Chunked investigation on large repos · #11 Phase routing on multi-repo / multi-week arcs · meta-prompt when you want silent expansion of short asks.

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
| 11 | [Phase routing](#11--phase-routing) |
| — | [Meta — expand short asks](#meta--expand-short-asks-standing-paste) · [Operator tips](#operator-tips) · [Log](#log) |

---

## Map to existing pack (don’t duplicate doctrine)

| Prompt | Already covered by | This kit adds |
|--------|-------------------|---------------|
| #1 Deep review | Mode D / `PROJECT_REVIEW.md` / Audit | Lighter daily cousin of full review engine |
| #2 Double-check | Reviewer seat · fail-closed verify | Explicit PASS / REVISE / FAIL verdict |
| #3 Missing pieces | Mode D gaps · SPEC · full engine `EXPLORATORY_ANALYSIS.md` | Gap-only lens (short); use exploratory kit for possibility-space passes |
| #4 Skeptical | Attacker / Reviewer | Falsify-previous-analysis paste |
| #5 Next actions | Mode C / `EXECUTION_ROADMAP.md` | Lighter daily cousin (priority gate · observable DoD) |
| #6 Should we build? | SPEC / never-build | BUILD / DEFER / REJECT |
| #7 Consolidate | Mode D coherence | Consolidation-only pass |
| #8 5W1H | `INTENT_EXPAND.md` | Compact paste (optional) |
| #9 Chunked | `CHUNKING.md` | Compact paste |
| #10 Done? | DoD/stop · RUNTIME · session close | DONE / NOT DONE rubric for *product* work |
| #11 Phase routing | `PHASE_PIPELINE.md` (in-slice gates) · `RUNTIME.md` handoff · `PROMPT_BUNDLES.md` structured handoff | *Where* each phase runs — repo · chat · life — not the full arc in one thread |
| Close chat | `CLOSE_CHAT.md` (phrase lock) | Chat-session gate (chat≠project): YES/NO/YES WITH LAND + extract |
| Meta | INTENT_EXPAND depth dial | Silent expand + simple answer |

---

## 1 — Deep review

**Full engine:** `PROJECT_REVIEW.md` (Mode D). **Defect-heavy:** `REPOSITORY_AUDIT.md`. Use this paste for a lighter daily cousin.

```text
Do a deep review of this project/area.

Do not jump straight to fixing things. First understand what exists and how it fits together.
Do not unlock builds. Skip empty sections. Depth over coverage.
The reviewer is paid to determine whether work is warranted — not to find work.

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
- Implied trajectory if nothing changes for a few iterations (not alternate futures)

Look for:
- Bugs and incorrect behavior (brief — escalate to full audit if defect density dominates)
- Missing functionality that blocks stated purpose
- Dead or redundant code
- Duplication
- Contradictions between code and documentation
- Fragile assumptions
- Complexity without corresponding leverage (only when evidenced)
- Gaps between intended design and implementation

Also ask:
- What am I not noticing?
- What would a skeptical reviewer challenge?
- What looks correct when read but was not executed/verified?
- What has been solved already and should NOT be rebuilt?
- What should we preserve / not touch?

Label evidence: Verified · Strongly inferred · Uncertain.
Recommendations need confidence: High / Medium / Low.

Separate findings into:
1. Critical
2. Important
3. Worth improving
4. Cosmetic / optional

Do not make changes yet.

End with:
- Current state
- Unknowns / what you did not inspect
- Most important findings (Claim · Evidence · Impact · Confidence)
- Biggest risks
- Preserve / do-not-touch
- Decide-next: now / next / later / do not — only if work is warranted
- Build vs polish vs consolidate vs stop
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

**Full engine:** `EXECUTION_ROADMAP.md` (Mode C). Use this paste for a lighter daily cousin.

```text
Based on the current state of the project, determine what should happen next.

Do not simply produce a generic backlog.
Progress is not activity. Never create work merely because capacity exists.

First determine whether we should:
- build
- fix
- simplify
- consolidate
- clean
- document
- test
- review
- experiment
- archive
- wait / observe
- stop

Explain which form of progress this cycle optimizes for: reduce uncertainty · increase capability · reduce complexity.

Priority gate — before an item enters the plan:
1. Necessary for the stated goal?
2. Blocking something more valuable?
3. Evidence it needs doing now?
4. Can an existing component/workflow solve it?
5. Is consolidate / delete / configure / document enough?
6. What happens if we do nothing?
Fail the gate → do not put it in the immediate plan.

Then produce an ordered action list (cap ~7).

For each action include:
- Priority
- Action
- Why it matters
- Dependency class: prerequisite · dependent · independent · blocked by evidence · blocked by human decision
- Approximate scope
- Effort: Small / Medium / Large
- Leverage: Low / Medium / High
- Observable definition of done (not bare "improve/optimize/clean up")
- Confidence: High / Medium / Low
- Whether it unlocks anything else

Prefer high leverage / Small effort.
Prefer: fewer moving parts · consolidation · reuse · deletion · finishing unfinished work · strengthening foundations
over adding new features.

Explicitly identify:
- What should NOT be worked on yet
- What should be parked
- What is already good enough
- Completion threshold — once proof is satisfied, stop and reassess
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

## 11 — Phase routing

**Full engines:** `PHASE_PIPELINE.md` (Research → Plan → Code → Verify *inside one slice*) · `RUNTIME.md` § handoff · `PROMPT_BUNDLES.md` § Structured handoff. Use this paste when a **multi-phase arc** spans repos, workspaces, or non-Cursor work — and you need *where* each phase runs, not a whole-plan dump.

**Phrase lock (short):** `Phase routing — this chat only. No whole-arc handoff.`

```text
Phase routing.

I have a multi-phase plan (possibly multi-repo, multi-week). Do NOT execute the whole arc in this thread. Do NOT hand off the entire plan as one L5 packet.

Your job: route phases to the right execution surface — then tell me what to do NOW in THIS chat only.

Rules:
- One handoff = one JOB · one REPO (or one workspace) · one DONE. Multi-week arcs get sliced, not monolith handoffs.
- Wrong surface = wrong seat: don't mix hub fix + other-repo build + overnight automation in one fat thread.
- Some phases are not Cursor work (habit, field test, daily use). Mark them "Neither — no chat executes this."
- Do not invent phases or expand scope. Distinguish blocking gaps from polish.
- Do not code unless I pick an in-chat slice and say go.

Step 1 — Inventory (brief)
Restate the arc as numbered phases (or accept mine). For each phase note: goal · repo/surface · dependency.

Step 2 — Routing table (required)
| Phase | Where (repo / workspace / life) | This chat? (Yes / Hand off / Neither) | Why |

Step 3 — This chat only
- Smallest in-scope slice I can finish here (if any)
- Observable DoD for that slice
- What explicitly does NOT belong here

Step 4 — Next handoff (if any — ONE slice only)
Three bullets (`RUNTIME.md`):
  Intent: …
  Facts so far: …
  Open risk / ask: …
Plus structured handoff (`PROMPT_BUNDLES.md`):
  FINDINGS: (≤5 bullets)
  RECOMMENDED NEXT OPERATION: (one phase · one repo)
  STOP CONDITION: …
  RELEVANT PATHS: (@-able handles only — no warehouse paste)

Step 5 — Decision tree
- "Next hour" → …
- "Start building properly" → …
- "Done for today" → …

Step 6 — Verdict
Pick one primary path and end with exactly two phrase locks I can say:
- "<verb> <slice>" → stay and execute in this chat
- "write the <next phase> handoff" → close clean and open fresh

If nothing belongs in this chat, say so and give the handoff only.
```

**Compose:** Phase routing → pick slice → (if build) `PHASE_PIPELINE.md` → close with `CLOSE_CHAT.md`.

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
- “Review this project” still → Mode D / `PROJECT_REVIEW.md` (don’t ask which mode); #1 is the lighter cousin.  
- Status / takeover → `OWNERSHIP_TAKEOVER.md` (Mode A). Notebook / organize ideas → `DESIGN_NOTEBOOK.md` (Mode B).  
- Defect-heavy systems pass → `REPOSITORY_AUDIT.md`. Week plan → `EXECUTION_ROADMAP.md`. Possibility space → `EXPLORATORY_ANALYSIS.md`.  
- Multi-repo / multi-week arc → #11 before executing or handing off the whole plan.  
- Do not paste the whole kit into `follow-operator-pack.mdc` — keep digest thin; open this file when needed.

---

## Log

| Date | Note |
|------|------|
| 2026-08-09 | Operator paste kit landed; daily five highlighted; mapped to existing Modes/kits |
| 2026-08-12 | Full TOC added (no file split — single paste kit stays installable as one dial file) |
| 2026-08-20 | Cross-link review/audit/plan/explore engines | Quartet landed as peer pasteables |
| 2026-08-20 | #1 / #5 refreshed | Sync light cousins to hardened Review / Roadmap engines |
| 2026-09-04 | #11 Phase routing | Multi-repo arc → surface table · one-slice handoff · phrase locks; not `PHASE_PIPELINE` |
