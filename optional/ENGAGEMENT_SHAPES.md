# Engagement shapes — how to fire (scatter · sniper · chain · …)

**Status:** active · 2026-09-04 · workflow-lab pasteable  
**Job:** name **input/output topology** for a chat or sequence — wide vs narrow, diverge vs converge, chain vs pause  
**NOT:** new seats · replacement for expansion lifecycle · gun roleplay for its own sake  
**Sibling:** when to act → `EXPANSION_LIFECYCLE.md` · build phases → `PHASE_PIPELINE.md` · sequences → `PROMPT_BUNDLES.md`  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## Idea

Two layers — **do not confuse them:**

| Layer | Question | Kit |
|-------|----------|-----|
| **Lifecycle** | *When* are we allowed to act? | `EXPANSION_LIFECYCLE.md` |
| **Engagement shape** | *How* does this message or sequence fire? | this file |

**Scout finds the target.** You are right: “what are we shooting at?” is not a free-floating prerequisite — it is Scout’s job (map revealed · candidate claims named), sharpened by **Synthesizer** (one paragraph / falsifiable claim) before Soldier.

Engagement shapes are **modality within a stage**, not a substitute for Scout:

```text
Lifecycle:  Quartermaster → Scout → Synthesizer? → Soldier → …
Engagement:     —           scatter/sweep     funnel      sniper
                              during Scout    beat        during Soldier+
```

**Mis-fire:** scatter or rapid-fire **during Builder** without a claimed target → noise (friendly fire). Shape must match **stage + target state**.

---

## Core three (your vocabulary)

| Shape | I/O topology | Diverge / converge | Distinct from |
|-------|--------------|-------------------|---------------|
| **Scatter / spread** | One input → **many** outputs (wide, generalist) | Diverge | Not “many unrelated chats” — one pass, wide aperture |
| **Sniper** | One input → **one** narrow output on **one** claim | Converge | Not “short answer” — narrow **target** |
| **Rapid fire / chain** | Many steps **in sequence**, each building the last | Converge chain | Not scatter — outputs are **related** and ordered |

**Pin:** Scatter **widens** the map. Chain **walks** a path. Sniper **hits** one coordinate.

---

## Extended shapes (same design space)

| Shape | Topology | Typical stage | Pack |
|-------|----------|---------------|------|
| **Burst** | 2–4 related shots, then **pause** | Scout late · Soldier | Between sniper and chain |
| **Sweep** | Systematic full coverage | Scout | Audit · inventory — not random wide |
| **Spiral** | Same target, tightening rings | Builder · Finisher | Refine until DoD boring |
| **Beam** | One narrow line, **sustained** (one thread) | Builder | Depth-first chat — not one message |
| **Funnel** | Many → **one** | Synthesizer beat | `CHUNKING.md` · Mode B land |
| **Fork** | One → many **labeled** branches | Scout · Mode B | Structured diverge — not scatter chaos |
| **Relay** | A ends → B starts with handoff | Any | `CLOSE_CHAT` · new chat |
| **Echo** | Same artifact, **different seat** | Soldier · Defender | Reviewer then Attacker — same target |
| **Tracer** | Visible reasoning path | Any | Labels · `OPERATOR_REPLY_PROTOCOL` |
| **Dry fire** | Full form, no live execution | Scout · Settler | Research · Plan · dry-run |
| **Held fire** | Explicit wait | Before Settler | STOP · `parked` · territory not claimed |
| **Suppress** | Volume to **enable** another move | Rare | Brainstorm to block premature build — use sparingly |

**Warehouse** (`handle + query`) is not a shape — it is an **input constraint** that pairs with sniper/beam on large trees.

---

## Map shapes → lifecycle

| Stage | Target state | Fitting shapes | Avoid |
|-------|--------------|----------------|-------|
| **Quartermaster** | Host/repo ready | Sweep (checklist) | Scatter |
| **Scout** | Fog — target **not** yet named | **Scatter · sweep · fork** | Sniper on unfamiliar repo (false precision) |
| **Synthesizer** | Slices exist, no single claim | **Funnel** | Scatter (more slices) |
| **Soldier** | One claim on the table | **Sniper · burst · echo** | Scatter |
| **Settler** | Claim survived contact | Dry fire · narrow plan | Rapid fire without APPROVE stop |
| **Builder** | Territory claimed | **Sniper slice · beam · spiral** | Scatter |
| **Defender** | Slice exists | Sniper verify · echo (Reviewer) | Scatter |
| **Steward** | Mature territory | Sweep (drift) · sniper fix | Chain feature creep |

**Scout sub-modes:**

| Scout job | Shape | Example |
|-----------|-------|---------|
| Possibility space | Scatter | `EXPLORATORY_ANALYSIS.md` |
| What exists (cited) | Sweep · targeted sniper | `RESEARCH_REPORT.md` · Mode D |
| Organize dump | Fork | `DESIGN_NOTEBOOK.md` · `EXTRACT_AND_ORGANIZE.md` |

Target **identification** = Scout output (plus Synthesizer if chunky). Shapes after that assume a named artifact: claim · file · decision · repo.

---

## Axes (pick shape deliberately)

| Axis | Pole A | Pole B |
|------|--------|--------|
| Aperture | Wide (scatter, sweep) | Narrow (sniper, beam) |
| Direction | Diverge (scatter, fork) | Converge (sniper, funnel, chain) |
| Time | One shot | Sustained (beam) · chained (rapid fire) |
| Pause | Continuous fire | Burst · held fire · synthesis beat |
| Seat | Generate (Engineer, Archivist) | Falsify (Attacker) · verify (Reviewer) |

**Cease-fire:** every shape needs a stopping rule — STOP · DoD · `decided` · APPROVE. Scatter without cease-fire → backlog theater. Chain without funnel → friendly fire.

---

## Paste — pick a shape

```text
Engagement shape. Follow optional/ENGAGEMENT_SHAPES.md.

Lifecycle stage: <Quartermaster|Scout|Synthesizer|Soldier|Settler|Builder|Defender|Steward>
Shape: <scatter|sweep|sniper|burst|rapid fire|spiral|beam|funnel|fork|relay|echo|dry fire|held fire>
Artifact / target: <name it — Scout should have produced this if past fog>

Rules:
* Shape must fit stage (see map in kit).
* Scout finds the target; Synthesizer funnels if Scout was chunky.
* Cease-fire: name when this shape stops.
* Seat: <pin if not Auto>
Active ≤3 seats; declare idle. No review fleets.
```

---

## Paste — short openers

```text
Shape: scatter — Scout — possibility space — optional/ENGAGEMENT_SHAPES.md
```

```text
Shape: sniper — one claim on <artifact> — optional/ENGAGEMENT_SHAPES.md
```

```text
Shape: rapid fire — convergent chain — stop after <N> or funnel — optional/ENGAGEMENT_SHAPES.md
```

```text
Shape: funnel — Synthesizer — one paragraph before Soldier — optional/ENGAGEMENT_SHAPES.md
```

```text
Held fire — territory not claimed — no Builder shapes yet.
```

---

## Phrase locks

```text
Engagement shape — optional/ENGAGEMENT_SHAPES.md — how to fire, not when.
```

```text
Shape: <name> — lifecycle stage: <stage> — target: <artifact>.
```

---

## Anti-patterns (friendly fire)

| Misfire | What went wrong |
|---------|-----------------|
| Scatter during Builder | Wide output without stage fit — scope creep |
| Sniper during early Scout | False precision in fog |
| Rapid fire without funnel | Related prompts, no single claim |
| Beam without relay/land | Fat thread · context rot |
| Echo as fleet | Same question, parallel agents |
| Shape without lifecycle | Pretty topology, wrong commitment level |
| Skip Scout, pick sniper | “Be precise” with no target — **Scout first** |

---

## Compose with existing engines

| Need | Shape · kit |
|------|-------------|
| When may we act? | Lifecycle · `EXPANSION_LIFECYCLE.md` |
| Find / name target | Scout · sweep/scatter · `RESEARCH_REPORT` · Explore |
| Many slices → one claim | Funnel · Synthesizer · `CHUNKING.md` |
| Falsify one claim | Sniper · Soldier · Attacker overlay |
| Ordered prompt sequence | Rapid fire · `PROMPT_BUNDLES.md` |
| Stuck mid-build | Spiral · Finisher F1 |
| Cross-chat continue | Relay · `CLOSE_CHAT.md` |
| Same artifact, other lens | Echo · `think hard` / `check this` |
| Large repo context | Warehouse + sniper/beam · `AGENTIC_INTERACTION.md` |

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-09-04 | Initial | Scatter/sniper/chain + extended shapes; Scout owns target; sibling to expansion lifecycle |
