# Creative pipeline — repeatable project phases (portable)

**Purpose:** capture a development method for design-heavy products — phases, **sub-steps**, **loops**, gates, artifacts, anti-patterns.

**Status:** v1 portable · 2026-08-12 · canonical in opack  
**Kit:** [`CREATIVE_OPERATOR_KIT.md`](CREATIVE_OPERATOR_KIT.md)  
**Checklist:** [`CREATIVE_PIPELINE_CHECKLIST.md`](CREATIVE_PIPELINE_CHECKLIST.md)  
**Reference instance (game art):** `fallen-blade-tactics/docs/process/creative-pipeline.md` — FBT case studies (Ritualist, Axe Bruiser, wave-1 pins)

**Not:** product lore bible, art spec, or MVP scope — those live in linked docs per phase and project.

---

## Core idea: phases are not single tasks

Each phase is a **container** for many steps. Work is **iterative**, not linear.

```text
Talk ⇄ (label, dump) ⇄ Plan ⇄ (brief, theory) ⇄ Materialize ⇄ (generate → critique → discuss → lock → retry)
                                      ↑                                    |
                                      └──────── plan gap discovered ───────┘
Code MVP ⇄ Refine → Publish
```

**Rule:** Loop inside a phase many times before exit gate. Skipping sub-steps consciously is OK; skipping **unconsciously** is how process gets lost.

---

## The six phases (summary)

| # | Phase | Job | Question answered |
|---|--------|-----|-------------------|
| 1 | **Talk** | Diverge — ideas, taste, refs | *What could this be?* |
| 2 | **Plan** | Converge — theory, coherence, refusals | *Does it hold together?* |
| 3 | **Materialize** | Cheap visual / structural proof | *What does it look like on paper?* |
| 4 | **Code (MVP)** | Playable or runnable slice | *How does it work?* |
| 5 | **Refine** | Polish, breadth, production quality | *Is it good enough to keep?* |
| 6 | **Publish** | Ship, share, or next milestone | *What's next?* |

**Alias:** Phase 3 = *sketch gate* · *visual proof* · *stub gate* · *Materialize*.

**Materialize is not only pixels** — wireframes, API stubs, board stills, narrative comps, and organism maps count when they are the cheapest proof for that product.

---

## Phase gates (entry / exit)

| Phase | Enter when | Exit when (DoD) |
|-------|------------|-----------------|
| **1 Talk** | New idea stream or greenfield | Ideas **labeled**; top leverage picked; dumps in repo |
| **2 Plan** | Concept chosen for near-term work | Brief + collisions + refusals + open deps; production sequence |
| **3 Materialize** | Plan locked **enough to draw or stub** | Proof passes gate at agreed tier (3A or 3B) |
| **4 Code MVP** | Materialize proof approved | MVP DoD met — playable/runnable, readable, scoped |
| **5 Refine** | MVP proves core loop | Diminishing returns; debt logged |
| **6 Publish** | Refine threshold met or time-box hit | Released artifact |

---

## Sub-steps by phase (checklist)

Use as a **repeatable checklist**. Not every sub-step applies every time.

### Phase 1 — Talk

| Step | Task | Output |
|------|------|--------|
| 1.1 | **Dump** — ideas, taste, refs appetite | Dated design-note or chat → note |
| 1.2 | **Label** — fact / observation / decided / parked / NOT | Labels in note |
| 1.3 | **Triage** — what might matter for near-term slice | Short list or README pointer |
| 1.4 | **Reference collect** (optional) | Inspiration folder / source links |
| 1.5 | **Pick leverage** — what to plan next | Explicit “next: plan X” |

**Exit:** Not everything decided — only **labeled and stored**.

### Phase 2 — Plan

| Step | Task | Output |
|------|------|--------|
| 2.1 | **Theory** — why this fits together | Theory doc |
| 2.2 | **Brief per concept** — one sentence, must-NOT, hierarchy | Concept briefs |
| 2.3 | **Collision matrix** — what must not read the same | Cross-archetype or cross-feature table |
| 2.4 | **Production sequence** — ordered steps + DoD | Production plan |
| 2.5 | **Scope guard** — MVP metrics + anti-overfeature cut | MVP success metrics |
| 2.6 | **Open deps** — flag without blocking all prep | Parked lines |
| 2.7 | **Handoff prep** (if external/AI) | Internal vs external brief split |

**Exit:** Enough to **Materialize** without re-deriving from chat.

**Plan completeness test:** Can someone **external** produce a direction proof without lore Q&A? If no, expect **Materialize discussion**.

### Phase 3 — Materialize

Materialize is the **most sub-step heavy** phase. Output surfaces plan gaps — discussion is **required**, not failure.

#### Tier 3A — Direction proof (cheap)

| Step | Task | Output |
|------|------|--------|
| 3A.1 | **Choose tool path** — hand / AI / contractor / hybrid | Decision |
| 3A.2 | **Write consumable spec** — standalone paste blocks | External brief + prompts |
| 3A.3 | **Generate** — grayscale or stub first | PNG / wireframe / stub |
| 3A.4 | **Critique gate** — sort test @ agreed scale, harsh review | Pass / conditional / fail |
| 3A.5 | **Discuss & resolve** — identity forks, collisions, props | See § Design discussion |
| 3A.6 | **Lock delta** — identity note if brief was thin | `*-visual-identity-*.md` or equivalent |
| 3A.7 | **Retry** — solo regen or hybrid | Revised artifact |
| 3A.8 | **Composite review** — set cohesion, hierarchy | Set pass / per-item fail |
| 3A.9 | **Approve 3A** — owner sign-off before 3B / color | Gate checkmark |

#### Tier 3B — Production-ready (after 3A)

| Step | Task | Output |
|------|------|--------|
| 3B.1 | **Polish pass** — color / fidelity / cleanup | Production artifact |
| 3B.2 | **Scale cleanup** — true canvas size / import format | Import-ready files |
| 3B.3 | **Context test** — on intended background / board / UI | Pass/fail |
| 3B.4 | **Composition still** (optional) | Still / comp proof |
| 3B.5 | **Approve 3B** | Ready for engine import or build |

**Do not skip 3A.4–3A.8** and jump to polish because output “looks cool.”

### Phase 4 — Code (MVP)

| Step | Task | Output |
|------|------|--------|
| 4.1 | **Import approved assets / stubs** | Files in repo/engine |
| 4.2 | **Thin slice** — one loop, scoped DoD | Playable/runnable build |
| 4.3 | **Readability stack** — HUD / threat / core UX in frame | On-screen proof |
| 4.4 | **Metrics checklist** | MVP success pass |
| 4.5 | **Doc ↔ build align** | SoT matches behavior |

**Seat:** operator directs; **Engineer agent or collaborator** implements runtime — see profile.

### Phase 5 — Refine · Phase 6 — Publish

Document when entered. Sub-steps project-specific.

---

## Design discussion during Materialize (critical)

**Materialize is not silent drawing.** Artifacts **surface questions** Plan left open. This is not “going back to Talk” if you **write outcomes down**.

### When discussion triggers

| Trigger | Example shapes |
|---------|----------------|
| **Sort test fail** | Unit unreadable at target scale |
| **Identity fork** | Archetype could mean 3+ different things |
| **Collision** | Two concepts read the same |
| **Prop ambiguity** | Vague brief → model picks wrong symbol |
| **Tool artifact** | Grid/solo merge, wrong symmetry, holy props on occult lane |
| **Plan gap** | Abstract adjective with no visual vocabulary |

### Discussion workflow

```text
1. OBSERVE  — what did the output do? (fact, not taste alone)
2. DIAGNOSE — plan gap vs tool failure vs fixable drift
3. DECIDE   — lock one lane; label parked alternatives
4. WRITE    — identity note OR brief amendment OR prompt delta
5. RETRY    — solo regen / hybrid / manual fix
6. RE-TEST  — sort test again
```

**Default:** discuss → **write** → retry. Chat-only discussion = **process loss**.

---

## Loops that are allowed (not failure)

| Loop | Between | Example |
|------|---------|---------|
| Talk → Talk | More dumps before plan | Ecology after class talk |
| Plan → Talk | New idea invalidates brief | Parked, not crisis |
| Materialize → Plan-light | Visual gap needs one paragraph lock | Identity note |
| Materialize → Materialize | Generate → critique → retry | Grid → solo |
| Code → Materialize | MVP proves art/stub wrong | Re-silhouette before polish |

**Not allowed:** Code → Talk forever without Materialize; Refine before MVP; color/polish before 3A.9.

---

## Mapping to AGENTS.md review modes

| Mode | Usually maps to |
|------|-----------------|
| **B — Design notebook** | Talk + early Plan |
| **C — Execution roadmap** | Plan exit → Materialize/Code sequencing |
| **D — Architecture review** | Late Plan or post-MVP Refine |
| **A — Ownership takeover** | Any phase boundary / project restart |

Modes are **tools inside phases**, not separate phases.

---

## Cross-phase rules (portable defaults)

| Rule | Why |
|------|-----|
| Default: **write when we discuss design** | Repo memory beats chat |
| **Talk only** = no non-note code/scaffold | Notes still land |
| **Locked** = direction for now, not sacred law | Revisit when building proves wrong |
| Keep-fat dumping; thin shelf building | Warehouse vs MVP shelf |
| Mode B capture; Mode C when buildable | Overlay habit |

Project overlay adds refuses (no engine “just in case,” IP pins, etc.).

---

## Anti-patterns catalog (common)

| Failure | Fix |
|---------|-----|
| Reference becomes spec | Written brief authoritative |
| Grid/batch uneven quality | Solo prompts per unit |
| Collision unread at scale | Collision matrix + sort test |
| Over-spec before cheap proof | Grayscale/stub gate first |
| Discussion not written | Identity note + prompt update |
| Polish before sort test | 3A.9 approve first |
| MVP before Materialize approve | Phase pin enforced |
| Analysis loop replaces one retry | Sort test + one regen first |

Game-art specific examples: FBT instance doc.

---

## Starting Materialize on a new project

- [ ] Plan brief exists (one sentence + must-NOT per concept)
- [ ] Collision matrix exists
- [ ] Handoff written (internal + external if needed)
- [ ] Tool path chosen
- [ ] Standalone prompts — **no chat context assumed**
- [ ] Cheap proof before polish
- [ ] Sort test scale defined
- [ ] Know where **identity delta notes** live
- [ ] Composite set review planned (if set)
- [ ] MVP scope guard read

---

## Project phase pin (fill per repo)

| Field | Value |
|-------|--------|
| **Project** | |
| **Phase** | |
| **Sub-step** | |
| **Focus** | |
| **Gate** | |
| **Next** | |

Also pin in project `OPERATOR_WORKFLOW.md` — one line is enough for daily use.

---

## Install on a project

1. Copy this file + checklist + profile into `docs/process/` **or** link to opack path on this machine.
2. Paste [`../templates/overlay-creative-operator.md`](../templates/overlay-creative-operator.md) into `OPERATOR_WORKFLOW.md`.
3. Fill phase pin + project refuses.
4. Add project case studies to instance copy — don’t silently edit canonical opack without upstream intent.

---

## Links

- Kit index: [`CREATIVE_OPERATOR_KIT.md`](CREATIVE_OPERATOR_KIT.md)
- Profile: [`OPERATOR_CREATIVE_PROFILE.md`](OPERATOR_CREATIVE_PROFILE.md)
- Overlay: [`../templates/overlay-creative-operator.md`](../templates/overlay-creative-operator.md)
- FBT instance: `fallen-blade-tactics/docs/process/creative-pipeline.md`
