# Prompt bundles — operations graph (thin)

**Status:** active · 2026-08-21 · workflow-lab pasteable  
**Job:** relate existing engines — which kit when, in what order, when to **STOP**  
**NOT:** Mode E · mega-prompt · review fleets · duplicate engine bodies · auto-run every short ask · **premature automation of routing** · Prompt-OS for its own sake  
**Evidence:** thoughts `sources/2026-08-21-prompt-formation-chatgpt.md` · operator doctrine 2026-08-21  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`  
**Companions:** `PHASE_PIPELINE.md` (build gates) · `PASTEABLES_INDEX.md` · `DAY_PROMPTS.md` · `INTENT_EXPAND.md`

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

```text
Prompt eng → Context eng → Operation design → Bundling → Routing → Handoffs → Workflow → Verification → Optimization
```

Need **operation + routing + handoffs + verify** now. Rest is vocabulary for later pain.

---

## Ladder (climb only as far as pain)

| Level | Unit | Question | Opack today |
|------:|------|----------|-------------|
| 0 | Raw ask | What do I say? | Chat |
| 1 | Prompt object | What does this kit do? | Pasteables |
| 2 | Relations | Best after / before? | This file + complements |
| 3 | **Bundle** | Recurring job package? | § Bundles below |
| 4 | Workflow | Branches + gates? | `PHASE_PIPELINE` · Mode C stops |
| 5 | State | Where are we? | Runtime · project notes |
| 6 | Router | What next? | § Stupid router |
| 7–10 | System / adaptive / meta / goal-OS | — | **Parked** |

**Pin:** Value peaks at **L2–L6**. Current work = **exercise L3–L4**, not invent L6 automation.

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
| Daily light cousins | `DAY_PROMPTS.md` |
| Short ask → rigor | `INTENT_EXPAND.md` |

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

---

## Paste — stupid router

```text
Prompt bundles / stupid router. Follow optional/PROMPT_BUNDLES.md (or docs/workflow-lab/PROMPT_BUNDLES.md).

Given my intent (one sentence) and current state (one sentence):

Do NOT run every mode. Do NOT invent Mode E, a mega-prompt, or clever multi-hop routing.

Answer only:
1. Which existing bundle OR single kit fits? (name from this file / PASTEABLES_INDEX)
2. Why (one sentence)
3. Stop condition for this step
4. Evidence-log fields after: Result · Was another op needed? · Did the bundle reduce work? · Next useful state reached?

Then STOP. Open only that kit next — I paste or confirm before any further hop.
Prefer one kit over a chain. Prefer STOP / consolidate over expand when warranted.
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
