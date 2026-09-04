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

---

## Map to the pack (already mostly here)

```text
Scout    → Research · Explore · Archivist · spikes (read-only)
Soldier  → Attacker · prototype-to-kill · falsify one claim
Settler  → Plan APPROVE · land handoff · commit · install · decided
Builder  → Engineer Code · feature slices · compound
Defender → Verify · Reviewer · CI · tests · CLOSE_CHAT · anti-drift
```

| Lifecycle | Phase pipeline | Primary kit |
|-----------|----------------|-------------|
| Scout | Research | `RESEARCH_REPORT.md` · `EXPLORATORY_ANALYSIS.md` |
| Soldier | (between Research and Plan) | Attacker block in overlay · `SEAT_PROMPTS` Attacker |
| Settler | Plan gate + durable anchor | `PLAN_APPROVAL.md` · land handoff (`RUNTIME.md`) |
| Builder | Code | `SPEC_BUILD.md` · `PHASE_PIPELINE` Code |
| Defender | Verify + ongoing | `PHASE_PIPELINE` Verify · `CLOSE_CHAT.md` |

`PHASE_PIPELINE` covers Scout → (gate) → Builder → Defender. This kit names the **thin middle**: Soldier (falsify) and **Settler** (territory claimed).

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

Verify once ≠ defended. Defender is **maintenance tax**:

- Tests / smoke / CI green on the slice
- Reviewer on scary diffs
- `CLOSE_CHAT` land when session ends (chat ≠ project)
- Doc drift · regression · “reading ≠ working”

Expansion loop: defend gains → scout next node → repeat (`EXECUTION_ROADMAP.md` tiers, not task spam).

---

## Paste — expansion readiness

```text
Expansion lifecycle. Follow optional/EXPANSION_LIFECYCLE.md.

Artifact: <plan | repo | feature | decision — name it>

For each stage, one line — evidence only:
Scout:   What do we actually know? (cite repo / notes)
Soldier: What kills this? (falsify the main claim)
Settler: Territory claimed? (decided · APPROVE · durable anchor)
Builder: Slice + DoD narrow enough to ship?
Defender: What keeps us from losing it?

End with: proceed | narrow | stop — and one sentence why.

Seat: Scout/Archivist | Soldier/Attacker | Settler/Engineer+Plan | Builder/Engineer | Defender/Reviewer
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
- **Scout spam without synthesis** — chunk for processing, never for understanding (`CHUNKING.md`)  
- **Eternal Soldier** — debate without Settler; no `decided` line  
- **Settler without Soldier** — claim territory without falsifying the main risk  
- **Builder without Settler** — implement on sand; chat-only “decisions”  
- **One-shot Defender** — merge without verify / land / regression plan  
- **Five new seats** — blows active ≤3 cap; stages are a lens  

---

## Compose with existing engines

| If you need… | Use at stage |
|--------------|--------------|
| What’s out there (cited) | Scout · `RESEARCH_REPORT.md` |
| Possibility space | Scout · `EXPLORATORY_ANALYSIS.md` |
| Challenge my points | Soldier · Attacker block · overlay |
| Plan before code | Settler · `PLAN_APPROVAL.md` |
| Implement slice | Builder · `SPEC_BUILD.md` · Phase Code |
| Prove it held | Defender · Phase Verify · `CLOSE_CHAT.md` |
| What next after defend | `EXECUTION_ROADMAP.md` |
| Dense idea map before tree edits | `ORGANISM_PLACEMENT.md` (parallel to Scout) |

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-09-04 | Initial | Steal RTS expansion shape; name Settler/territory gate; sibling to phase pipeline |
