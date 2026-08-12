# Operator creative profile — portable (evidence-based)

**Purpose:** how this operator works best — strengths, gaps, team-role fit, Cursor defaults. **Not** a clinical personality test.

**Status:** v2 · 2026-08-12 · review pass [`profile-review-2026-08-12.md`](profile-review-2026-08-12.md)  
**Kit:** [`CREATIVE_OPERATOR_KIT.md`](CREATIVE_OPERATOR_KIT.md)  
**Instance with game case studies:** `fallen-blade-tactics/docs/process/operator-creative-profile.md`

**Scope:** design-heavy and capture/architecture work. Revisit after Phase 4 MVP on a product, or twice-seen correction.

---

## Short answer (team role)

| Fit | Rating | Notes |
|-----|--------|-------|
| **Game designer / creative director** | ★★★★★ | Primary on **products** — lore, identity, systems coherence, visual direction |
| **Process / systems architect** | ★★★★★ | **Co-primary on thoughts/opack** — organisms, ledger, kit, install profiles |
| **Idea person → structure** | ★★★★☆ | High volume; converts to briefs, pipelines, labeled notes — **closure slower than structure** |
| **Planner / method owner** | ★★★★☆ | Explicit planner (pipeline v2); **intuitive on products before** (see MHCOS design process) |
| **Visual design critic / art director (taste)** | ★★★★☆ | Collisions, harsh review, conditional approve — **best when actively engaged** |
| **Analyst / critical thinker** | ★★★★☆ | Coherence, phase gates, “does this hold together?” |
| **Structural proofreader (spec/design)** | ★★★★☆ | decided/NOT/parked, collisions, doc↔build drift |
| **Line-level prose editor** | ★★☆☆☆ | Structure over comma-polish |
| **Gameplay / runtime implementer** | ★☆☆☆☆ | Not primary seat on design-first repos — delegate Phase 4 |
| **Process / docs / workflow implementer** | ★★★☆☆ | Builds methods, overlays, indexes — not the gameplay programmer |

**One-line:** *Passionate design lead who thinks in systems, reviews like a director, and externalizes ideas into durable docs — primary implementer of meaning and process, not of runtime gameplay code.*

**Working rhythm:** *Spiky* — strong organize/design **bursts**, then **maintenance tail** (open Qs, uncommitted artifacts, bridge follow-through).

---

## Context axes (same operator)

| Context | Primary seat | Cursor default |
|---------|--------------|----------------|
| **Game product (FBT)** | Creative director / design lead | Mode B · phase pin · Materialize gates |
| **Game product (MHCOS)** | Creative director + product owner | **Evidence open** — install profile instance; link `CREATURE_DESIGN_PROCESS.md` |
| **Capture inbox (thoughts)** | **Process architect** / idea organizer | Mode B · Keep/Park · organism placement · coverage ledger |
| **Pack / workflow (opack)** | **Process architect** / kit maintainer | Template discipline · no Layer A sprawl |
| **Garden hub** | Systems owner / critic | MVP smokes · peer steals · fail-closed |

Pin **one context per chat** in overlay phase line.

**Machine topology:** Windows satellite (thoughts, organize) · Linux workhorse (Garden hub, some execution) · product repos local. Do not fight wrong machine for runtime work.

---

## Careful, meticulous, or reckless?

**Neither cartoon extreme.**

| Trait | Evidence | Label |
|-------|----------|-------|
| **Refusal discipline** | MVP anti-overfeature · death maze NOT · no engine “just in case” | **Strong** on blast-radius refuses |
| **Warehouse discipline** | Keep-fat notebook during Materialize pin; Aug 11 mechanics dump | **Weaker** during active phase pins |
| **Careful on coherence** | Husks vs monsters · class collisions · references ≠ spec | Meticulous on meaning |
| **Iterative on pixels/proofs** | v1 → critique → solo retry; conditional approve | Not perfectionist on first pass |
| **Passionate on identity** | Ritualist fork · FE8/Duelyst *why* | Emotionally invested in reads |
| **Method documentation** | Pipeline v2 + checklist + kit | **Strong** |
| **Method execution** | Checklist vs production-plan drift; uncommitted art wave | **Weaker** — gate integrity matters |

**Working phrase:** *Careful architect, passionate critic, pragmatic iterator.*

---

## Strengths (observed)

1. **High idea throughput with retrieval intent** — repo memory, not chat memory (when committed).
2. **Coherence instinct** — spots collisions before they are named (**best-evidenced strength**).
3. **Taste + reference literacy** — knows *why*, not just mood boards.
4. **Willingness to be challenged** — harsh critique → improved briefs **on active lanes**.
5. **Refusal discipline** — thin shelf for MVP; explicit NOT list.
6. **Meta-systems builder** — pipelines, organism placement, operator pack, coverage ledger.
7. **Delegation clarity** — AI generates; operator judges; runtime code delegated on FBT.
8. **IP / audience awareness** — external handoffs sanitized; standalone prompts.
9. **Independent process rediscovery** — MHCOS one-knob Materialize predates explicit pipeline naming.

---

## Weaknesses / risks (observed)

1. **Doc surface area** — rich notes can outpace Materialize/code (FBT: 101 docs, 0 tests).
2. **Structure without closure** — open Qs on organism spines; peer P0 steals unbuilt; #2b maintenance pending.
3. **Plan thin on concrete props** — abstract lanes until pixels expose gaps.
4. **Analysis loop** — can expand process when sort test + retry would suffice.
5. **Runtime implementation gap** — FBT won’t play until Phase 4; acceptable if Materialize closes; not if analysis replaces trace.
6. **Tool variance** — AI batches uneven; solo prompts + review time.
7. **Gate integrity** — multiple docs claiming pass/fail; **checklist is SoT** for phase approve.
8. **Uncommitted durable work** — local Materialize artifacts not in repo breaks retrieval intent.
9. **Bridge maintenance tail** — FBT↔MHCOS pipeline, handoff follow-through after organize bursts.
10. **Parallel Materialize lanes** — code v5 + AI solo without one recorded 3A exit.
11. **Line-edit not default** — structure/labels over prose polish.

**Mitigation:** creative pipeline · checklist as gate SoT · phase pin · profile self-check · commit art/docs when batch completes.

---

## Planner?

| Kind | Strength |
|------|----------|
| **Strategic planner** | Strong — phases, gates, MVP metrics |
| **Visual / concept planner** | Strong — briefs, collision matrices |
| **Execution planner (code/tasks)** | Weaker — defer to Engineer; workhorse queue can stall |
| **Explicit vs intuitive** | Products: intuitive first (MHCOS). FBT/thoughts: moving explicit (pipeline v2) |

Plans **what it means and should look like** before **how the repo implements it**.

---

## How Cursor should assist (standing instructions)

### Default posture

- **Mode B** for lore, class, art, organize — unless you say build.
- **Talk only** = no engine/scaffold; **notes and art prep still land**.
- Open with **phase pin** when resuming.
- **Radical candor** when critique is requested.
- **Write when we discuss** — locks, prompt deltas, anti-patterns.
- **Checklist before claim** — do not mark production steps passed unless checklist/3A.9 agrees.

### By phase

| Phase | Cursor job | Avoid |
|-------|------------|-------|
| Talk | Structure dumps · label decided/parked | Code · chat-only summaries |
| Plan | Briefs · collisions · theory | Full system before cheap proof |
| Materialize | Prompts · sort test · identity notes · **one SoT lane** | Polish before 3A.9 · parallel lanes without exit record |
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
- Ask: *conditional approve?* · *what did we miss?* · *write notes now?* · *commit this batch?*

### Refuse on operator’s behalf

- Engine scaffold unprompted
- MVP scope expansion without reopening metrics
- References as spec
- Polish before grayscale/stub gate
- Assuming operator wants primary gameplay implementation
- Marking gates passed in one doc while checklist still open

---

## Solo + Cursor model

| Role | Who |
|------|-----|
| Design lead + critic + planner | Operator |
| Docs automation + eventual runtime proxy | Cursor Engineer |
| Cheap visual generation | AI tools + operator gates |
| Gameplay programmer (Phase 4) | Engineer seat or human collaborator |

Operator retains **approve gates**. Checklist records approve.

---

## Open evidence (update when resolved)

| Item | Question | Where to land |
|------|----------|---------------|
| **MHCOS runtime seat** | Operator-directed only, or hands-on implementer? | MHCOS `docs/process/` instance row |
| **MHCOS kit install** | Overlay + phase pin | `MonsterHunter-CreaturesofSonaria/OPERATOR_WORKFLOW.md` |
| **FBT 3A.9** | Code v5 conditional vs AI solo SoT | FBT checklist wave-1 pin |

---

## Install on a project

1. Link or copy this file to `docs/process/operator-creative-profile.md`.
2. Paste [`../templates/overlay-creative-operator.md`](../templates/overlay-creative-operator.md) into `OPERATOR_WORKFLOW.md`.
3. Add **project-specific evidence** rows (collisions, refuses, phase pin).
4. Do **not** duplicate full profile into `AGENTS.md` Layer A.

**Second instance target:** MHCOS — link `CREATURE_DESIGN_PROCESS.md` as Materialize evidence.

---

## Quick self-check (quarterly)

- [ ] Still design-first, runtime-delegated?
- [ ] Phase pin accurate in overlay?
- [ ] Doc sprawl hurting navigation?
- [ ] Materialize getting enough time vs plan?
- [ ] Context axis correct for this repo?
- [ ] Gates: checklist matches reality?
- [ ] Maintenance tail: open Qs / bridges scheduled?
- [ ] Durable work committed?

---

## Links

- Review: [`profile-review-2026-08-12.md`](profile-review-2026-08-12.md)
- Pipeline: [`CREATIVE_PIPELINE.md`](CREATIVE_PIPELINE.md) · [`CREATIVE_PIPELINE_CHECKLIST.md`](CREATIVE_PIPELINE_CHECKLIST.md)
- Overlay: [`../templates/overlay-creative-operator.md`](../templates/overlay-creative-operator.md)
- FBT instance: `fallen-blade-tactics/docs/process/`
