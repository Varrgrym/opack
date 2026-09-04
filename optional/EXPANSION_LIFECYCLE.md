# Expansion lifecycle — Scout → Soldier → Settler → Builder → Defender

**Status:** active · 2026-09-04 · workflow-lab pasteable  
**Job:** readiness lens for new work — commitment level, fog of war, and “territory claimed” before build  
**NOT:** five new seats · Mode E · rigid pipeline on every task · military roleplay  
**Sibling:** build phases → `PHASE_PIPELINE.md` · falsify one claim → Attacker in `OPERATOR_WORKFLOW.md` · which kit next → `PROMPT_BUNDLES.md`  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## Idea

RTS / Civ expansion is not five job titles. It is five **commitment levels**:

| Stage | Investment | Risk if wrong | Win condition |
|-------|------------|---------------|---------------|
| **Scout** | Cheap, disposable | Wasted time | Map revealed |
| **Soldier** | Medium, expendable | Lost unit | Threat cleared or claim falsified |
| **Settler** | High, slow | Everything dies | Foothold **claimed** |
| **Builder** | Compounding | Opportunity cost | Value extracted |
| **Defender** | Ongoing tax | Slow bleed | Gains **held** |

Core lesson: **you cannot compress the sequence without paying.** Settlers in fog die. Builders in contested zones get raided. All soldiers, no settlers → endless war, no empire.

**Seat ≠ lifecycle stage.** Stages are *readiness*; seats are *how to think* (`SEAT_PROMPTS.md`). Active ≤3 seats; declare idle.

**Beats ≠ stages.** Synthesizer is a mandatory checkpoint between Scout and Soldier — not a sixth seat or main-chain role.

---

## Quartermaster — preconditions (phase 0)

Before Scout on a new machine, repo, or install dial: **can we operate here?**

| Check | Pack |
|-------|------|
| Baseline install landed | `install.sh` · `INSTALL_PROFILES.md` |
| Overlay / digest present | `AGENTS.md` · `follow-operator-pack.mdc` |
| Tooling / CI exists | project scripts · smoke tests |
| Machine / host ready | `machine-config-*` · active-set · `OPACK_OPERATOR_CONTEXT` § machine switch |

Settlers without supply lines die. Quartermaster is **phase 0** — not Scout, not a seat.

---

## Map to the pack (already mostly here)

```text
Quartermaster (phase 0) — can we operate here?
Scout    → Research · Explore · Archivist · spikes (read-only)
         ↓ Synthesizer beat (mandatory if Scout was chunky)
Soldier  → Attacker · prototype-to-kill · falsify one claim
Settler  → Plan APPROVE · land handoff · commit · install · decided
Builder  → Engineer Code · feature slices · compound
Defender → Verify · Reviewer (post-ship or pre-mortem) · CI · CLOSE_CHAT
Steward  → overlay hygiene · dep/doc drift · install refresh (loop)
```

| Lifecycle | Phase pipeline | Primary kit |
|-----------|----------------|-------------|
| Quartermaster | (before Research) | `INSTALL_PROFILES.md` · install smoke |
| Scout | Research | `RESEARCH_REPORT.md` · `EXPLORATORY_ANALYSIS.md` |
| Synthesizer | (between Research and Soldier) | `CHUNKING.md` · Mode B close · FIC |
| Soldier | (between Research and Plan) | Attacker block in overlay · `SEAT_PROMPTS` Attacker |
| Settler | Plan gate + durable anchor | `PLAN_APPROVAL.md` · land handoff (`RUNTIME.md`) |
| Builder | Code | `SPEC_BUILD.md` · `PHASE_PIPELINE` Code |
| Defender | Verify + ongoing | `PHASE_PIPELINE` Verify · `CLOSE_CHAT.md` |
| Steward | (after Verify / between expansions) | `OPERATOR_WORKFLOW.md` · overlay · multi-device land |

`PHASE_PIPELINE` covers Scout → (gate) → Builder → Defender. This kit names the **thin middle** (Synthesizer · Soldier · Settler), **phase 0** (Quartermaster), and **day-2 loop** (Steward).

### Expansion loop (not one-way)

```text
Quartermaster → Scout → Synthesizer? → Soldier → Settler → Builder → Defender → Steward
                                                                                    ↓
                                                              scout next node ←─────┘
```

---

## Scout vs Soldier (do not merge)

| | Scout | Soldier |
|---|-------|---------|
| Question | What’s out there? | Will this claim survive contact? |
| Output | Map, options, citations | Kill, clear, or harden one claim |
| Cost model | Cheap; failure OK | Medium; expendable on purpose |
| Default seat | Archivist / Explore | **Attacker** |
| Forbidden | Edits, backlog generation | Scope widen, “helpful” building |

Scout answers **what exists**. Soldier answers **what dies if we’re wrong**.

---

## Synthesizer — beat between Scout and Soldier

**Not a seat.** A checkpoint after chunky Scout work, before Soldier fires.

| | Scout | **Synthesizer** | Soldier |
|---|-------|-----------------|--------|
| Question | What’s out there? | **What’s the one map?** | Will this claim survive? |
| Output | Slices, citations, options | One paragraph + labeled claims | Falsify / clear / harden |
| Failure mode | Too little info | Scout spam — no conclusion | Debating without a target |
| Pack | Research · Explore · Archivist | `CHUNKING.md` · Mode B close · FIC | Attacker |

**Gate:** Soldier needs a **single falsifiable claim**. If you cannot write one paragraph you’d stake a Settler on → Synthesizer first.

Pin: **Chunk for processing, never for understanding.**

---

## Settler — territory claimed (the hinge)

In games, territory is binary: claimed or not. In software it scatters across:

- `decided` vs `parked` vs **NOT** (refused)
- Plan **APPROVE** / **NARROW** / **REJECT**
- Land handoff · durable commit+push (multi-device save slot)
- Repo scaffold · overlay · branch · first slice merged

**Settler = “this is ours now”** — a decision durable enough to build on.

### Territory claimed? checklist

Before **Builder** on non-trivial work, name the anchor:

| Anchor type | Claimed when… |
|-------------|---------------|
| Decision | Labeled **decided** in overlay or plan; alternatives **parked** or **NOT** |
| Plan | `PLAN_APPROVAL` verdict = **APPROVE** (or narrowed APPROVE) |
| Repo / project | Branch or repo exists; baseline install landed if applicable |
| Feature slice | DoD written; scope fence explicit; out-of-scope listed |
| Knowledge | Research report or notebook section committed (not chat-only) |

**Hard gate:** no Code phase until you can answer: *what file, repo, or decision makes this ours?*

If you cannot answer → you are still in fog. Scout or Soldier first.

---

## Defender — loop, not one shot

Verify once ≠ defended. Defender is **hold the line**:

- Tests / smoke / CI green on the slice
- Reviewer on scary diffs — **pre-mortem before merge** (TDD / regret-pass) or post-ship verify
- `CLOSE_CHAT` land when session ends (chat ≠ project)
- Regression · “reading ≠ working”

**Reviewer timing:** irreversible / high-blast diff → Defender **before** Builder ships; routine slice → Defender after Code. Same seat, different timing — not a separate lifecycle stage.

---

## Steward — day 2 after Defender

Defender = don’t lose territory. **Steward** = keep claimed territory healthy without new expansion.

- Overlay / pack refresh · `decided` vs drift
- Dependency · doc · install-profile hygiene
- Multi-device land (commit+push durable notes)
- Small fixes that aren’t a new Builder slice

Steward is the **expansion loop** tail: defend → steward → scout next node (`EXECUTION_ROADMAP.md` tiers, not task spam).

**Finisher** is not Steward: Finisher **rescues a stuck Builder** mid-loop (`SEAT_PROMPTS` F1) — interrupt, not progression.

---

## Paste — expansion readiness

```text
Expansion lifecycle. Follow optional/EXPANSION_LIFECYCLE.md.

Artifact: <plan | repo | feature | decision — name it>

For each stage, one line — evidence only:
Quartermaster: Can we operate here? (install · tooling · host)
Scout:   What do we actually know? (cite repo / notes)
Synthesize: What's the one paragraph / claim we'd falsify? (skip if trivial)
Soldier: What kills this? (falsify the main claim)
Settler: Territory claimed? (decided · APPROVE · durable anchor)
Builder: Slice + DoD narrow enough to ship?
Defender: What keeps us from losing it?
Steward: What keeps claimed territory healthy? (skip if greenfield only)

End with: proceed | narrow | stop — and one sentence why.

Seat: Quartermaster/Engineer | Scout/Archivist | Soldier/Attacker | Settler/Engineer+Plan | Builder/Engineer | Defender/Reviewer | Finisher if Builder stuck
Pick the stage we are in; do not self-advance.
Active ≤3 seats; declare idle. No review fleets.
```

---

## Paste — territory gate only (short)

```text
Territory claimed? — optional/EXPANSION_LIFECYCLE.md

Before we build: what decision/repo/file makes this ours?
If none → stop at Scout or Soldier. No Code.
```

---

## Phrase locks

```text
Expansion lifecycle — optional/EXPANSION_LIFECYCLE.md — readiness lens not new seats.
```

```text
Territory claimed? — settler gate — no build in fog.
```

```text
Soldier pass — Seat: Attacker — falsify one claim on <artifact>.
```

```text
Synthesize — optional/EXPANSION_LIFECYCLE.md — one paragraph before Soldier.
```

---

## When to use / skip

| Use full lens | Skip to Builder+Defender |
|---------------|--------------------------|
| New repo · architecture fork · unfamiliar domain | Typo · known one-file fix |
| High blast · irreversible · multi-repo | Approved slice already landed |
| Debate without a `decided` line | Territory already claimed this week |

Possibility space → Scout (`EXPLORATORY_ANALYSIS.md`) before Soldier.  
“What exists in repo?” → Scout (`RESEARCH_REPORT.md` or Mode D), not Soldier.

---

## Where the metaphor breaks (read this)

| Game assumption | Software reality |
|-----------------|------------------|
| One unit, one job | Same chat scouts and builds — use phases/seats to separate |
| Territory is binary | Partial claims: spike branch, draft overlay, WIP merge |
| Always linear | TDD / fail-closed → Defender **before** Builder sometimes |
| Peace after Soldier | Some domains stay contested (deps, security) — defend while building |

Use as **readiness checklist**, not a mandatory five-step ceremony.

---

## Anti-patterns

- **Build in fog** — code before map (agent default failure mode)  
- **Scout spam without synthesis** — run Synthesizer beat; `CHUNKING.md`  
- **Soldier without Synthesizer** — nothing concrete to falsify  
- **Eternal Soldier** — debate without Settler; no `decided` line  
- **Settler without Soldier** — claim territory without falsifying the main risk  
- **Builder without Settler** — implement on sand; chat-only “decisions”  
- **One-shot Defender** — merge without verify / land / regression plan  
- **Steward skipped on mature repos** — territory drifts; overlay lies  
- **Finisher as second Reviewer** — rescue Builder, not pre-merge gate  
- **Five+ new seats** — blows active ≤3 cap; stages/beats are a lens  

---

## Compose with existing engines

| If you need… | Use at stage |
|--------------|--------------|
| Can we operate here? | Quartermaster · `INSTALL_PROFILES.md` |
| What’s out there (cited) | Scout · `RESEARCH_REPORT.md` |
| Possibility space | Scout · `EXPLORATORY_ANALYSIS.md` |
| Merge scout slices into one map | Synthesizer · `CHUNKING.md` · Mode B |
| Challenge my points | Soldier · Attacker block · overlay |
| Plan before code | Settler · `PLAN_APPROVAL.md` |
| Implement slice | Builder · `SPEC_BUILD.md` · Phase Code |
| Stuck mid-implementation | Finisher · `SEAT_PROMPTS` F1 (rescue, not stage) |
| Prove it held / pre-mortem scary diff | Defender · Phase Verify · Reviewer R1 · `CLOSE_CHAT.md` |
| Keep territory healthy | Steward · overlay · install refresh |
| Cross-repo / sibling boundary | Envoy · `GARDEN_SIBLING.md` · gh · handoff (when territory touches another repo) |
| What next after steward | `EXECUTION_ROADMAP.md` |
| Dense idea map before tree edits | `ORGANISM_PLACEMENT.md` (parallel to Scout) |

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-09-04 | Initial | Steal RTS expansion shape; name Settler/territory gate; sibling to phase pipeline |
| 2026-09-04 | Synthesizer · Steward · Quartermaster | Beats and loop tail; Finisher/Envoy cross-refs; no new seats |
