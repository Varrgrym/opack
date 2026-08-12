# Operator creative profile — portable (evidence-based)

**Purpose:** how this operator works best — strengths, gaps, team-role fit, Cursor defaults. **Not** a clinical personality test.

**Status:** v1 portable · 2026-08-12 · promoted from FBT + thoughts evidence  
**Kit:** [`CREATIVE_OPERATOR_KIT.md`](CREATIVE_OPERATOR_KIT.md)  
**Instance with game case studies:** `fallen-blade-tactics/docs/process/operator-creative-profile.md`

**Scope:** design-heavy and capture/architecture work. Revisit after Phase 4 MVP on a product, or twice-seen correction.

---

## Short answer (team role)

| Fit | Rating | Notes |
|-----|--------|-------|
| **Game designer / creative director** | ★★★★★ | Primary on products — lore, identity, systems coherence, visual direction |
| **Process / systems architect** | ★★★★☆ | thoughts, opack, organism maps, pipelines, install profiles |
| **Idea person → structure** | ★★★★☆ | High volume; converts to briefs, pipelines, labeled notes |
| **Planner / method owner** | ★★★★☆ | Explicit planner (pipeline v2); was intuitive before |
| **Visual design critic / art director (taste)** | ★★★★☆ | Collisions, harsh review, conditional approve |
| **Analyst / critical thinker** | ★★★★☆ | Coherence, phase gates, “does this hold together?” |
| **Structural proofreader (spec/design)** | ★★★★☆ | decided/NOT/parked, collisions, doc↔build drift |
| **Line-level prose editor** | ★★☆☆☆ | Structure over comma-polish |
| **Gameplay / runtime implementer** | ★☆☆☆☆ | Not primary seat — delegate Phase 4 |
| **Process / docs / workflow implementer** | ★★★☆☆ | Builds methods, overlays, indexes — not the gameplay programmer |

**One-line:** *Passionate design lead who thinks in systems, reviews like a director, and externalizes ideas into durable docs — primary implementer of meaning and process, not of runtime gameplay code.*

---

## Context axes (same operator)

| Context | Primary seat | Cursor default |
|---------|--------------|----------------|
| **Game product (FBT, MHCOS design)** | Creative director / design lead | Mode B · phase pin · Materialize gates |
| **Capture inbox (thoughts)** | Process architect / idea organizer | Mode B · Keep/Park · organism placement |
| **Pack / workflow (opack)** | Process architect / kit maintainer | Template discipline · no Layer A sprawl |
| **Garden hub** | Systems owner / critic | MVP smokes · peer steals · fail-closed |

Pin **one context per chat** in overlay phase line.

---

## Careful, meticulous, or reckless?

**Neither cartoon extreme.**

| Trait | Evidence | Label |
|-------|----------|-------|
| **Careful on scope & IP** | MVP anti-overfeature · sanitized external brief · no engine “just in case” | Guarded where blast radius is high |
| **Careful on coherence** | Husks vs monsters · class collisions · references ≠ spec | Meticulous on meaning |
| **Iterative on pixels/proofs** | v1 → critique → solo retry; conditional approve | Not perfectionist on first pass |
| **Passionate on identity** | “Was a person, now wrong” · Ritualist fork · FE8/Duelyst *why* | Emotionally invested in reads |
| **Process-minded** | Pipeline v2 + checklist without second ask | Meticulous on method, not polish timing |

**Working phrase:** *Careful architect, passionate critic, pragmatic iterator.*

---

## Strengths (observed)

1. **High idea throughput with retrieval intent** — repo memory, not chat memory.
2. **Coherence instinct** — spots collisions before they are named.
3. **Taste + reference literacy** — knows *why*, not just mood boards.
4. **Willingness to be challenged** — harsh critique → improved briefs.
5. **Scope discipline (when pinned)** — thin shelf for MVP; keep-fat notebook.
6. **Meta-systems builder** — pipelines, organism placement, operator pack growth — not only ideas.
7. **Delegation clarity** — AI generates; operator judges; runtime code delegated.
8. **IP / audience awareness** — external handoffs sanitized; standalone prompts.

---

## Weaknesses / risks (observed)

1. **Doc surface area** — rich notes can outpace Materialize/code.
2. **Plan thin on concrete props** — abstract lanes until pixels expose gaps.
3. **Analysis loop** — can expand process when sort test + retry would suffice (now gated).
4. **Runtime implementation gap** — product won’t play until Phase 4 + Engineer seat.
5. **Tool variance** — AI batches uneven; solo prompts + review time.
6. **Line-edit not default** — needs structure/labels more than prose polish.

**Mitigation:** creative pipeline · checklist · phase pin in overlay · profile self-check.

---

## Planner?

| Kind | Strength |
|------|----------|
| **Strategic planner** | Strong — phases, gates, MVP metrics |
| **Visual / concept planner** | Strong — briefs, collision matrices |
| **Execution planner (code/tasks)** | Weaker — defer to Engineer or collaborator |
| **Explicit vs intuitive** | Moving explicit (pipeline v2) — good |

Plans **what it means and should look like** before **how the repo implements it**.

---

## How Cursor should assist (standing instructions)

### Default posture

- **Mode B** for lore, class, art, organize — unless you say build.
- **Talk only** = no engine/scaffold; **notes and art prep still land**.
- Open with **phase pin** when resuming.
- **Radical candor** when critique is requested.
- **Write when we discuss** — locks, prompt deltas, anti-patterns.

### By phase

| Phase | Cursor job | Avoid |
|-------|------------|-------|
| Talk | Structure dumps · label decided/parked | Code · chat-only summaries |
| Plan | Briefs · collisions · theory | Full system before cheap proof |
| Materialize | Prompts · sort test · identity notes on drift | Polish before 3A.9 |
| Code MVP | **Engineer seat** — operator directs | Scope creep · operator as primary gameplay coder |
| Refine | Reviewer · doc↔build drift | Re-litigating locked lore without cause |

### Model seats

| When | Seat |
|------|------|
| Default design + docs | **Project Engineer** |
| Harsh review before lock | **Senior Reviewer** |
| Stalled multi-file loop | **Pair / Finisher** |
| Full project review | Mode D — explicit ask |

### Prompt habits that work

- One **standalone paste block** per external/AI message.
- **Solo unit prompts** over uneven grids.
- **Hybrid iteration** — keep v1 asset X, fix v2 Y.
- **External brief** without project names when sharing art.
- Ask: *conditional approve?* · *what did we miss?* · *write notes now?*

### Refuse on operator’s behalf

- Engine scaffold unprompted
- MVP scope expansion without reopening metrics
- References as spec
- Polish before grayscale/stub gate
- Assuming operator wants primary gameplay implementation

---

## Solo + Cursor model

| Role | Who |
|------|-----|
| Design lead + critic + planner | Operator |
| Docs automation + eventual runtime proxy | Cursor Engineer |
| Cheap visual generation | AI tools + operator gates |
| Gameplay programmer (Phase 4) | Engineer seat or human collaborator |

Operator retains **approve gates**.

---

## Install on a project

1. Link or copy this file to `docs/process/operator-creative-profile.md`.
2. Paste [`../templates/overlay-creative-operator.md`](../templates/overlay-creative-operator.md) into `OPERATOR_WORKFLOW.md`.
3. Add **project-specific evidence** rows (collisions, refuses, phase pin).
4. Do **not** duplicate full profile into `AGENTS.md` Layer A.

---

## Quick self-check (quarterly)

- [ ] Still design-first, runtime-delegated?
- [ ] Phase pin accurate in overlay?
- [ ] Doc sprawl hurting navigation?
- [ ] Materialize getting enough time vs plan?
- [ ] Context axis correct for this repo?

---

## Links

- Pipeline: [`CREATIVE_PIPELINE.md`](CREATIVE_PIPELINE.md) · [`CREATIVE_PIPELINE_CHECKLIST.md`](CREATIVE_PIPELINE_CHECKLIST.md)
- Overlay: [`../templates/overlay-creative-operator.md`](../templates/overlay-creative-operator.md)
- FBT instance: `fallen-blade-tactics/docs/process/`
