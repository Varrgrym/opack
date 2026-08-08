# AI workflow stack

**Status:** decided · optional kit  
**Use when:** improving how Cursor (or similar coding agents) works — not only wording prompts  
**Chat lab scope:** prompting / context / spec / loops / evaluation / memory. Garden is an occasional example, not the subject.  
**Sharp distinction:** “word this better?” vs “is a prompt even the right lever?”

---

## Hierarchy (layers, not rivals)

| # | Layer | Question |
|---|--------|----------|
| 1 | **Prompt engineering** | How do I instruct well? |
| 2 | **Context engineering** | What must the model see (files, history, tools, constraints, examples, state)? |
| 3 | **Specification / task engineering** | What is success, failure, boundary, acceptable behavior? |
| 4 | **Agentic loop / workflow** | Observe → act → evaluate → adjust, with a stop |
| 5 | **Evaluation engineering** | How do we know it got better? |
| 6 | **Context / memory optimization** | What persists without flooding future contexts? |

Field shift (observation): from “magic wording” toward engineering the **information + evaluation + execution loop**. Prompt engineering remains necessary; it is rarely sufficient for serious agent work.

---

## Prompt pattern

**Goal → Context → Constraints → Procedure → Output → Stop condition**

Techniques that matter: explicit objectives · constraints · role · examples · structured output · decomposition · verification · what *not* to do · stopping conditions.

---

## Context engineering (high leverage in Cursor)

Bad package: “Review Garden.”  
Better package: architecture docs → contracts → relevant source → tests → prior review → then construct *current* architecture from evidence; flag doc↔code contradictions.

Context includes: repo structure, source, docs, tests, config, prior decisions, task history, tool outputs, git state, conventions, architectural constraints, relevant examples.

**Do not** inspect everything indiscriminately — choose relevant context, then gather systematically; for large work, use a coverage strategy.

---

## Specification engineering

Encode: objectives · priorities · boundaries · authority · permissions · failure conditions · acceptance · promotion criteria.

Example shape: candidate → repeated evidence → quality gate → confirmation → promotion — not “it worked once.”

---

## Gauntlet / agentic loop

```text
Goal → Attempt → Test/inspect → Critic → Failure → Improve → Attempt …
→ Stop when criterion satisfied
```

Design a **feedback system**, not a longer first message. Stop conditions are mandatory.

### Popular 3-line shape (“Gauntlet Loop” demos)

```text
1. TASK    — what to build
2. METHOD  — fan out workers; each has a critic / check
3. BAR     — don’t stop until the bar is met
```

| Steal | Don’t |
|-------|--------|
| Task → method → bar structure | Always-on subagent fleets (fights multitask-off / active ≤3) |
| Critic separate from builder | “Utterly wowed” taste bars — use **tests / checklist / brief** |
| Use as **warp drive after an MVP/brief exists** | Start every project with a multi-hour wow-loop (wrong objective, token burn) |

Maps to seats: workers ≈ Engineer/Finisher; critics ≈ Reviewer/Attacker; synthesis owner required if parallel. See `RUNTIME_CONTROL.md` · `EXTERNAL_READING.md` § Gauntlet Loop video.

### Pasteable (seat-aware — prefer this)

Use **after** an MVP, brief, or peg exists. Multitask default **off**.

```text
TASK: <concrete deliverable>
BRIEF/MVP/PEG: <paths or one-paragraph source of truth>

METHOD:
- Seat: Engineer — implement smallest change that meets DoD
- Seat: Reviewer (or Attacker if falsify/invariants) — independent critic; do not self-LGTM
- Seat: Finisher — only if Engineer stalls mid multi-file
- No anonymous subagent fleet. Active ≤3. If any parallel work: name a synthesis owner.

BAR (evidence — not “utterly wowed”):
- [ ] <tests / smoke>
- [ ] <checklist items>
- [ ] <brief/peg match>
Stop when BAR is met. Do not polish past DoD. Do not expand scope.

FIC: after each slice, compact facts/paths/decided/NOT/unknowns and re-inject.
```

---

## Combined stack

```text
SPECIFICATION (what does success mean?)
        ↓
CONTEXT ENGINE (what must it know?)
        ↓
PROMPT (what should it do now?)
        ↓
EXECUTION → EVIDENCE → EVALUATION → CRITIQUE → NEXT ATTEMPT ↺
```

---

## Role separation (coding)

1. **Reviewer** — understand; don’t change; find problems; formulate requirements  
2. **Builder** — implement only approved changes  
3. **Auditor** — assume wrong; inspect against requirements; find regressions / omissions  
4. **Verification** — tests + evidence → approve / revise / reject  

Maps to opack seats (Engineer / Reviewer / …) without requiring five simultaneous models.

---

## Adversarial / red-team

Prefer “try to prove this wrong” / “three most likely production failure modes” / “hostile reviewer objections” / “evidence that contradicts the conclusion” over “is this good?”  
Models complete the requested narrative; change the narrative.

---

## Multi-attempt / bake-off

Independent solutions → agreements · disagreements · why · best-supported answer.  
More agents ≠ smarter; **independent evaluation and distinct roles** are the gain.

---

## Reflexion (evidence-tied)

Test → exact failure → cause → record lesson → next attempt.  
**NOT:** “think harder.”

---

## Programmatic evaluation

Prefer objective deltas (tests, scores, win rates, regressions) over “does it feel better?”  
Environment provides evidence; the model should not be the sole judge of success.

---

## Living context hierarchy

```text
Constitution / baseline
  → Current architecture
    → Current task
      → Relevant subsystem
        → Recent evidence
          → Current conversation
```

Compress periodically: raw work → observations → lessons → validated knowledge → compact context.

**Frequent intentional compaction (FIC):** after each meaningful slice, compress high-signal state and re-inject it — don’t wait until the window is full. See `CHUNKING.md` §5b. Pair with Anthropic-style compaction / tool clearing when the runtime supports it.

---

## Value ranking (Cursor + serious codebases)

| Technique | Value |
|-----------|------:|
| Context engineering | ★★★★★ |
| Clear specs / acceptance criteria | ★★★★★ |
| Evaluation + automated tests | ★★★★★ |
| Agentic / gauntlet loops | ★★★★★ |
| Adversarial review | ★★★★★ |
| Structured prompts | ★★★★ |
| Reviewer → Builder → Auditor | ★★★★ |
| Hypothesis → experiment → evidence | ★★★★ |
| Competing solutions / bake-off | ★★★★ |
| Self-reflection (evidence-tied) | ★★★ |
| Multi-agent debate | ★★★ |
| Fancy wording hacks | ★★ |

---

## When *not* to prompt harder

If the failure is missing context, poor tooling, ambiguous specification, or weak evaluation — fix that layer. Longer prompts on a broken stack waste tokens.

---

## Mental model (lab shorthand)

```text
Prompt → Context → Specification → Tools → Loop → Evaluation → Memory
```

Related kits: `ANALYSIS_PROMPT_FORMATION.md` · `ADAPTIVE_TASK_EXPANSION.md` · `UNIVERSAL_DEEP_REASONING.md` · `CHUNKING.md` · `RUNTIME_CONTROL.md` · `FAILURE_MODES.md` · `EXTERNAL_READING.md`.

---

## External reading (pointers only)

Full list + steal notes: [`EXTERNAL_READING.md`](EXTERNAL_READING.md). Do not paste third-party constitutions into Layer A.
