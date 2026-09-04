# Prompt bundles — operations graph (thin)

**Status:** active · 2026-08-21 · workflow-lab pasteable  
**Job:** relate existing engines — which kit when, in what order, when to **STOP**  
**NOT:** Mode E · mega-prompt · review fleets · duplicate engine bodies · auto-run every short ask · **premature automation of routing** · Prompt-OS for its own sake  
**Evidence:** thoughts `sources/2026-08-21-prompt-formation-chatgpt.md` · operator doctrine 2026-08-21  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`  
**Companions:** `PHASE_PIPELINE.md` (build gates) · `EXPANSION_LIFECYCLE.md` (readiness) · `ENGAGEMENT_SHAPES.md` (I/O topology) · `PASTEABLES_INDEX.md` · `DAY_PROMPTS.md` · `INTENT_EXPAND.md`

---

## One sentence

> **Use what exists, measure where it helps, strengthen only what repeatedly earns its place, and let real project work—not fascination with AI architecture—tell you when the next layer is necessary.**

---

## Idea

**Goal is not a giant prompt library.** Each step must earn existence:

```text
PROMPTS → ENGINES / MODES → PROMPT_BUNDLES → ROUTING → STRUCTURED HANDOFFS → PROJECT WORK
```

That stack is already substantial. **Stop climbing** until the current rung proves insufficient.

**STOP is a valid transition.** Healthy / enough evidence / wait / consolidate / do nothing beats another mode for theater.

**Seat ≠ mode ≠ bundle.** Seats = who thinks how. Modes/engines = what thinking is allowed. Bundles = short named sequences of engines.

**Path A is the default** (operate + evidence). Path B = one thin kit after twice-bitten. Path C = stop and do product work. If designing prompt infrastructure costs more than it returns → **Path C**.

---

## Operating doctrine (decided)

### Order of work (this phase)

1. **Router first** — almost stupid: *given the intent, which existing bundle (or single kit) fits?* Record it.  
2. **Metadata second** — only on the **five core engines** (below), when you actually open them.  
3. **Structured handoffs third** — small artifact between steps (template below).

Do **not** automate chaining or “intelligent” routing yet. Discover which sequences are genuinely useful; automate only after stable, repeated evidence.

### Optimize for state change

Do not judge by “was the answer detailed?”

Judge by: **Did this move the project into a more useful state?**

Every operation should either: increase understanding · reduce uncertainty · produce a decision · create something · verify something · remove unnecessary complexity · or **deliberately stop**.

Project-state ladder (notice by hand; don’t build a state machine yet):

```text
UNKNOWN → UNDERSTOOD → ASSESSED → DECISION-READY → IMPLEMENTED → VERIFIED → STABLE
```

#### Next useful state (conceptual)

| Operation | Done when project is… |
|-----------|------------------------|
| Explore | Possibility space understood enough to choose |
| Review | Current system understood; strengths/weaknesses named |
| Audit | Problems evidenced on critical paths |
| Roadmap | Work ordered; DoD + stops clear |
| Implement | Change exists |
| Test / Verify | Behavior proven / change accepted |
| Archive / Delete | Unnecessary complexity removed |
| **STOP** | No further op earns its cost right now |

Router *eventually* reasons **state → operation**. **Don’t build that yet** — use the stupid router and notice state by hand.

### Evidence log (per use)

```text
Intent:
Selected bundle (or single kit):
Why:
Result:
Was another operation actually needed?
Did the bundle reduce work? (yes / no / unclear)
Next useful state reached? (or still stuck)
```

**Metric that matters:** *Did this sequence get me to the next useful state faster than my normal interaction?*

| Outcome | Do |
|---------|-----|
| Yes, repeatedly | Tighten that bundle (metadata · handoff · cut dead steps) |
| No / unclear | Kill or simplify the bundle |
| Unused for a week | Candidate for deletion |
| Same gap twice (**twice-bitten**) | Add **exactly one** capability — not a ladder climb |

### Twice-bitten

Pain → observation → **repetition** → tool.  
Not: interesting idea → new prompt.

### Second-tier lenses (optional instruments)

Discovery · Gap · Boundary · Deletion · Bottleneck · Forensics · Question generator · Contrarian / Red-team · Assumption audit · Pre-mortem · Retrospective · Decision-reopen · Verification · Stress/scenario — **diagnostic only**.

**Blind-spot family** (highest-value *expansion of attention*, not of kit count): when cores answer “what is / what next” but you still feel stuck — ask **what are we failing to see?** → deploy **one** of Discovery · Gap · Questions · Boundary · Deletion · Bottleneck → return to normal.

Six-family vocabulary (UNDERSTAND · FIND · CHALLENGE · DECIDE · CHANGE · LEARN) names the *job*; it is **not** a build checklist. Coverage maps: thoughts `sources/2026-08-21-prompt-formation-chatgpt.md` § Addenda 2026-08-22 / 22b.

```text
Normal workflow → stuck → one missing lens → deploy once → return to normal
```

Never make every project Explore→Audit→Review→Explore theater. **Do not** promote the “definitely add 8 prompts” list to engines — that is prompt bureaucracy.

### Context

**Handle + query, not paste-the-warehouse.** A good handoff *is* context engineering: pass the next useful state, not the entire prior essay.

### North star / anti-Prompt-OS

Exists to improve coding, research, design, debugging, docs, project work, creative work.  
Does **not** exist to become a sophisticated AI workflow product.  
**Test:** does working on the prompt system improve actual work? If not → Path C.

---

## Structured handoff (after any engine)

Prefer this over dumping a long essay into the next context:

```text
FINDINGS: (≤5 bullets)
WHAT CHANGED: (if any)
WHAT REMAINS UNCERTAIN:
RECOMMENDED NEXT OPERATION: (bundle / kit / STOP)
WHY:
STOP CONDITION: (when that next op is done enough)
RELEVANT PATHS: (only if needed)
```

Then: Review → handoff → Audit → handoff → Roadmap (only if each hop earns its place).

---

## Metadata — five cores only

**Rule: document pain, not possibilities.** Don’t maintain metadata on every pasteable.

Fill fields only for:

1. `PROJECT_REVIEW` · 2. `REPOSITORY_AUDIT` · 3. `EXPLORATORY_ANALYSIS` · 4. `EXECUTION_ROADMAP` · 5. `PHASE_PIPELINE`

…when you open them. Others wait until twice-bitten.

| Field | Meaning |
|-------|---------|
| Purpose | One sentence job |
| Consumes | What must exist |
| Produces | Artifact shape (not essays) |
| Best after | Kits that strengthen this |
| Stop condition | When done enough |
| When NOT | Another kit wins |

### Example stop rules (cores)

| Kit | Stop when… |
|-----|------------|
| Explore | Major plausible directions named; more exploration unlikely to change the decision |
| Review | System describable accurately; important strengths/weaknesses understood |
| Audit | Critical paths examined enough to establish major defects/risks |
| Roadmap | Next actions, DoD, and stop points are clear |
| Phase pipeline | Current phase DoD met; human names next phase or STOP |

---

## Conceptual map (not a build checklist)

Paste vision of “prompt orchestration” maps to layers you **already have** (thin):

```text
1. PROMPT LIBRARY     → pasteables / engines
2. RELATIONSHIPS      → metadata · this file
3. WORKFLOWS/BUNDLES  → § Bundles
4. ROUTER             → § Stupid router (human confirms hop)
5. PROJECT STATE      → notice by hand (evidence log · runtime · project notes)
        ↑
   NORTH STAR / goal hierarchy (below)
```

Also:

```text
Prompt eng → Context eng → Operation design → Bundling → Routing → Handoffs → Workflow → Verification → Optimization
```

**Need now:** exercise L2–L4 (relations · bundles · stupid router · handoffs).  
**Parked:** formal Project State object that every kit mutates · intelligent multi-hop orchestrator · auto-run default paths.

### Buzzwords → layers (not competing methods)

| Managing… | Common term | Our layer |
|-----------|-------------|-----------|
| The instruction | Prompt engineering | L0–L1 |
| What the model knows | Context engineering | Handoffs · handle+query |
| Ops that belong together | Chaining / bundling | L2–L3 |
| What happens next | Workflow / agentic workflow | L4 · stupid router |
| Persistent knowledge | Memory / knowledge eng. | State by hand · project notes |
| Artifact/concept links | Knowledge graphs | **Parked** |
| Feedback / verify | Agentic loops / eval | Phase Verify · day #2 · handoff |
| System picks the op | Orchestration | Stupid router only (for now) |
| Improves itself over time | Adaptive / meta-agent | **Parked** (L8–L9) |

Kits are **operations** (jobs), not “pages of prompt text.” Seats supply **cognitive specialization** (Engineer · Reviewer · Finisher; Attacker on-call) — do **not** invent a parallel 12-role zoo.

### “Next artifact is a richer schema?” — refuse

Thin operation metadata **already exists** (§ Metadata — five cores). Next step is **fill on use + Path A**, not a larger schema product. Structured handoffs **are** the inter-op artifact contract.

### Goal hierarchy (navigation, not a mega-prompt)

```text
OVERARCHING GOAL / NORTH STAR
  → PROJECT PURPOSE
  → CURRENT PHASE
  → CURRENT QUESTION  (“cheapest useful thing to learn next?”)
  → BEST PROMPT / BUNDLE
  → RESULT → HANDOFF
  → NEW STATE
  → NEXT PROMPT  or  STOP  or  ACT
```

**STOP** and **ACT** are first-class. Analysis-only loops are failure.

### Precursors (prompt strength)

A cheap pass can unlock a deep one (e.g. day Quick → full Review). Prefer **one light kit** before a heavy engine when vocabulary isn’t established. Do not chain by default.

---

## Ladder (climb only as far as pain)

Same maturity ladder as the “prompting maturity” paste — **names aligned**; do not rebuild.

| Level | Concept | Question | Opack today |
|------:|---------|----------|-------------|
| 0 | Prompt | What should I ask? | Chat |
| 1 | Prompt object | What does this kit do? | Pasteables |
| 2 | Relations | How do kits relate? | Metadata · this file |
| 3 | **Bundle** | Which kits belong together? | § Bundles |
| 4 | Workflow | Sequence + branches? | Bundles + stop/branch notes · `PHASE_PIPELINE` |
| 5 | State | Where are we? | Notice by hand · evidence log · runtime |
| 6 | Router | What next? | § Stupid router |
| 7 | System | How do pieces interact? | **Parked** |
| 8 | Adaptive | Which sequences work when? | **Parked** |
| 9 | Meta-system | Improve the toolkit itself? | **Parked** (twice-bitten / pack growth) |
| 10 | Goal architecture | What are we ultimately trying to accomplish? | North-star hierarchy (conceptual) · **no Goal-OS product** |

**Pin:** Enormous value at **L2–L6**. Current work = **exercise L3–L4 + stupid L6**, not invent L7–10.  
**More abstraction ≠ better.** Hierarchy exists to **reduce** cognitive load — if operating the ladder costs more than product work, Path C.

### Start plan (already mostly done — don’t re-Phase-1 the library)

| Phase | Paste said | Doctrine |
|------:|------------|----------|
| 1 | Prompt objects for everything | **NOT** — metadata only on five cores when opened |
| 2 | Relations fields | Schema exists; fill on use |
| 3 | 5–8 bundles | **Done** (New project · Stagnation · Major change · Cleanup · Pre-release · Handoff · Dump) |
| 4 | Router meta-prompt | **Done** — stupid router; Path A = use it for a week |

Optional later bundles (twice-bitten only): Postmortem · Explore-new-direction · Verification-only.

---

## Engines map (don’t fork)

| Need | Kit |
|------|-----|
| What is / trajectory / preserve | `PROJECT_REVIEW.md` (Mode D) |
| What’s wrong / weak | `REPOSITORY_AUDIT.md` |
| What next / stop points | `EXECUTION_ROADMAP.md` (Mode C) |
| Possibility space | `EXPLORATORY_ANALYSIS.md` |
| Where are we (takeover) | `OWNERSHIP_TAKEOVER.md` (Mode A) |
| Organize by concept | `DESIGN_NOTEBOOK.md` (Mode B) |
| Research → Plan → Code → Verify | `PHASE_PIPELINE.md` |
| Fog · claim · expansion loop | `EXPANSION_LIFECYCLE.md` |
| Scatter · sniper · chain per stage | `ENGAGEMENT_SHAPES.md` |
| Runtime stanza (Stage · Shape) | `RUNTIME.md` §1 |
| Daily light cousins | `DAY_PROMPTS.md` |
| Short ask → rigor | `INTENT_EXPAND.md` |

---

## Framework router (lifecycle · phase · shape)

**Almost stupid:** one lead framework per chat turn — do not stack all three unless synthesizing.

| Operator question | Lead with | Not |
|-------------------|-----------|-----|
| Can we act? / fog? / territory claimed? | `EXPANSION_LIFECYCLE.md` | Jumping to Code |
| What edits are allowed now? | `PHASE_PIPELINE.md` | Scatter during Builder |
| How should this message fire? | `ENGAGEMENT_SHAPES.md` | Shape without Stage |
| Which kits in order? | This file (bundle row) + STOP | Inventing a new sequence |

**Combined runtime stanza** (`RUNTIME.md` §1):

```text
Mode=… · Stage=… · Shape=… · Seat=… · Multitask=off · Plan=…
```

| Field | Source |
|-------|--------|
| `Stage` | Quartermaster · Scout · Synthesizer · Soldier · Settler · Builder · Defender · Steward |
| `Shape` | scatter · funnel · sniper · chain · held fire · … (core five first) |

Omit `Stage` / `Shape` on trivial work (typo · known one-file fix).

**Phase pipeline ⊂ expansion lifecycle** (build path):

```text
Quartermaster → Scout (+Synthesizer?) → Soldier? → Settler(Plan) → Builder(Code) → Defender(Verify) → Steward
```

**Rapid fire** = engagement shape **chain** implemented as a **named bundle** below — always name **cease-fire** (STOP · funnel · APPROVE · DoD).

### Paste — framework router

```text
Framework router — optional/PROMPT_BUNDLES.md

Intent: <one line>
Lead framework: Expansion | Phase | Shape | Bundle
If Bundle: <name from Bundles section>
Runtime: Mode=… · Stage=… · Shape=… · Seat=… · Multitask=off · Plan=…
Cease-fire: <when this stops>
```

---

## Bundles

Each row: **when** · **sequence** · **stop**. Open the named kit — do not invent a parallel body.

### New project / cold start

**When:** unfamiliar repo, handoff in, “what is this?”  
**Sequence:** Orient (`INTENT_EXPAND` / day #8) → Review → Discovery lens → Boundary → Baseline note  
**Stop:** one-page mental model; entry points known; no build unlocked.

### Stagnation

**When:** “don’t know what next” / busy but unclear  
**Sequence:** Review or Audit (by symptom) → Explore → Decision → Roadmap or **STOP**  
**Stop:** one next action + NOT list; or “use what exists.”

### Major change

**When:** scary / cross-cutting edit already decided  
**Sequence:** Review (impact) → Plan → human APPROVE → Code → Verify  
**Stop:** DoD proven; no scope widen. Use `PHASE_PIPELINE`.

### Rapid fire (engagement shape → bundle)

**When:** convergent chain — related steps back-to-back, not wide scatter  
**Shape:** `chain` (`ENGAGEMENT_SHAPES.md`)  
**Sequence:** pick a named bundle above (e.g. Major change) or declare custom ≤5 steps · **funnel** after Scout if chunky  
**Cease-fire:** STOP · APPROVE · DoD · or `Synthesize` before Soldier — **name it before step 1**  
**Stop:** one claim or one landed slice; no scope widen

### Cleanup / coherence

**When:** duplication, drift, “smaller not bigger”  
**Sequence:** Audit → Review coherence → Deletion candidates → Consolidate → Verify  
**Stop:** fewer sources of truth; no new features.

### Pre-release / ship gate

**When:** “ready?”  
**Sequence:** Audit (critical paths) → Verify → day #10 Done? → Handoff note if transferring  
**Stop:** Ready / Ready-with-conditions / Not ready — no polish theater.

### Handoff / independence

**When:** another human/agent must take over  
**Sequence:** Review → Docs↔code drift → Independence → Cold-start stranger test  
**Stop:** handoff packet written; hidden deps named; or “not ready to separate.”

### Dump / video extract

**When:** ChatGPT export, notes pile, YouTube  
**Sequence:** `EXTRACT_AND_ORGANIZE` or `VIDEO_EXTRACT` → Mode B land Keep → **STOP**  
**Stop:** net-new landed or “already covered.”

### Model routing / intelligence per cent

**When:** credit squeeze · monthly tissue review · before pin change · “which model for this seat?”  
**Sequence:** **E** Usage audit (if squeezing) → **B** List refresh → **C** Experiment (if fixtures exist) → **D** Attacker (if changing pins) → pin decision or **STOP**  
**Stop:** gates G1–G3 met + scorecard recorded + explicit pin change **or** “no change this cycle.”  
**Kit:** `INTELLIGENCE_PER_CENT.md` (prompts A–E). **NOT** a substitute for Mode D or seat playbooks.

---

## Paste — stupid router

```text
Prompt bundles / stupid router. Follow optional/PROMPT_BUNDLES.md (or docs/workflow-lab/PROMPT_BUNDLES.md).

Given my intent (one sentence) and current state (one sentence):

Do NOT run every mode. Do NOT invent Mode E, a mega-prompt, or clever multi-hop routing.
Ask: what is the cheapest useful thing we can learn (or decide) next?

Answer only:
1. Which existing bundle OR single kit fits? (name from this file / PASTEABLES_INDEX)
2. Why (one sentence) — include information value vs a heavier alternative
3. Stop condition for this step
4. Evidence-log fields after: Result · Was another op needed? · Did the bundle reduce work? · Next useful state reached?

Then STOP. Open only that kit next — I paste or confirm before any further hop.
Prefer one kit over a chain. Prefer STOP / ACT / consolidate over expand when warranted.
Active ≤3 seats; Multitask=off unless synthesis owner named.
```

---

## Phrase locks

```text
Bundle: Stagnation — optional/PROMPT_BUNDLES.md — then open the named kit only.
```

```text
Router: stupid pick — STOP allowed — optional/PROMPT_BUNDLES.md
```

```text
Exercise the rung — optional/PROMPT_BUNDLES.md § Operating doctrine
```

```text
Handoff — optional/PROMPT_BUNDLES.md § Structured handoff
```

---

## Anti-patterns

- Audit → Explore → Review → Roadmap on every short ask  
- Bundle that rewrites engine doctrine  
- Treating “interesting” as “must run next”  
- Self-advancing the ladder without a stop gate  
- Review fleets (parallel Review+Audit+Explore)  
- Automating routing before a week of human picks + evidence logs  
- Judging by prose quality instead of **next useful state / reduced work**  
- Building Prompt-OS while product work waits  
- Metadata / lenses for every possibility instead of documented pain  

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-21 | Initial | Prompt Formation re-export — relation layer after engines |
| 2026-08-21 | Operating discipline | Exercise rung · stupid router · reduce-work · no premature routing auto |
| 2026-08-21 | Full doctrine pass | Next useful state · handoff · five-core metadata · twice-bitten · Path A · anti-Prompt-OS |
| 2026-08-22 | Six-family lens vocab | 21-mode paste mapped; NOT engines; cite thoughts coverage |
| 2026-08-22 | Blind-spot family | “Failing to see” → one lens; refuse 8-prompt bureaucracy |
| 2026-08-22 | Orchestration paste | Five layers = already have; formal state/auto-orchestrator parked; cheapest-next in router |
| 2026-08-22 | Maturity ladder L0–L10 | Align names; L7–10 parked; Phase 1–4 start plan = already done / Path A |
| 2026-08-22 | Buzzword stack map | Prompt/context/workflow/… = layers; ops not pages; richer schema refuse |
| 2026-09-04 | Model routing bundle | `INTELLIGENCE_PER_CENT.md` — E→B→C→D sequence · prompts A–E |
| 2026-09-04 | Framework router | Lifecycle vs phase vs shape picker; Stage·Shape runtime; rapid fire = chain + bundle |
