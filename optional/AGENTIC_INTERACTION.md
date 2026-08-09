# Agentic interaction (how to work with AI)

**Status:** active kit · 2026-08-09 · opack optional  
**Job:** portable habits for Cursor / coding agents — raise ceiling without unsupervised slop  
**Evidence trail (long):** Karpathy / Dex / Anthropic / Willison — full brief stays in operator inbox (out of pack unless asked)  
**Companions:** `RUNTIME.md` · `CHUNKING.md` · `SPEC_BUILD.md` · `EXTRACT_AND_ORGANIZE.md`  
**NOT:** AGI timelines · Auto as seat picker · light factory (“never read code”) · multi-agent fleets

---

## Stance (decided)

| Pin | Meaning |
|-----|---------|
| **Software 3.0** | Context + prompts program the LLM; improve the **window** and the **verify loop** |
| **Vibe coding** | OK for throwaway / floor-raising probes only |
| **Agentic engineering** | Default for real work: orchestrate agents; human owns quality, security, taste |
| **Partial autonomy** | Iron Man suit — augmentation + limited autonomy; you still pilot |
| **Decade of agents** | Demo ≠ product (`works.any()` vs `works.all()`) |

---

## Autonomy slider

Match autonomy to **blast radius** (same spirit as decide-low / ask-high):

| Lower autonomy | Higher autonomy |
|----------------|-----------------|
| Live / secrets / scary diffs | Trivia, renames, clear local fix |
| Ambiguous product intent | Measurable DoD + tests exist |
| New architecture | Vertical slice already stubbed |
| Plan mode / ask-high | Decide-low and cook |

Cursor-shaped ladder (Karpathy): Tab → targeted edit → chat → agent.  
**One line when unsure:** state the slider (“staying low autonomy — verify each chunk”).

---

## Generate ↔ verify (tight leash)

1. Prefer **small chunks** when verify is expensive.  
2. Make verify **cheap**: tests, diffs, smokes, measurable score.  
3. Concrete asks beat vague mega-prompts on high blast.  
4. You are often still the bottleneck — that is correct, not failure.  
5. Overnight / long loops only when a **score or DoD** can keep/discard (autoresearch shape).

---

## Before the agent cooks (program design)

Spend cheap context up front (Dex + Karpathy):

1. **Product:** user problem + **how we measure** success  
2. **Architecture** (when team/blast warrants)  
3. **Program design:** files, types/signatures, call-stack outline, tests shape  
4. **Vertical slice:** end-to-end stub first — not horizontal “DB then API then UI” piles  
5. Then cook; re-steer early while change is cheap

MVP / working slice **before** Gauntlet or critic polish (`SPEC_BUILD` · wow-bar refuse).

---

## Prompt craft (simulators, not selves)

- Prefer **“What would a good panel of experts say about X?”** over **“What do *you* think?”** (Karpathy: LLMs as simulators).  
- Explore mode: ask for **options**. Production mode: **exact** instructions (Willison).  
- Always **test** / verify what it writes.  
- Expert-panel prompts help idea mining and design forks — not a substitute for evidence.

---

## Anthropic-shaped defaults

- Start **simple**; add multi-step agents only when simpler fails.  
- **Ground truth** each step (tool/code results).  
- Human checkpoints for preference/intent; don’t escalate everything *or* nothing.  
- Show plan when blast is high; stop conditions matter.  
- Permissions: allow / ask / block — fail-closed on live.

---

## Anti-patterns (NOT)

| Refuse |
|--------|
| Unsupervised “year of agents” / never-read-code light factory |
| Review fleets / multitask without synthesis owner |
| Gauntlet as the *miner* for raw dumps (finisher only — see extract / idea-mining) |
| Token-maxing harness theater while value/review is the bottleneck |
| Treating benchmarks or demos as maintainability proof |

---

## One stack (operator)

```text
intent → measure/DoD → (plan if blast) → program design / vertical slice
  → autonomy slider → generate ↔ verify → stop
```

Seats, wrong-seat callout, decide-low/ask-high, DoD/stop: `RUNTIME.md`.

---

## Promote later?

Thin Prefer line already mirrored in `RUNTIME.md`. Digest points here.  
Long research stays in thoughts unless operator asks to copy full brief into `optional/`.
