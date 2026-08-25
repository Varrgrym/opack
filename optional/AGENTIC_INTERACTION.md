# Agentic interaction (how to work with AI)

**Status:** active kit · 2026-08-09 · opack optional · context-as-variable § 2026-08-12  
**Job:** portable habits for Cursor / coding agents — raise ceiling without unsupervised slop  
**Evidence trail (long):** Karpathy / Dex / Anthropic / Willison · RLM / context-as-variable (operator inbox source) — full briefs stay out of pack unless asked  
**Companions:** `RUNTIME.md` · `CHUNKING.md` · `SPEC_BUILD.md` · `EXTRACT_AND_ORGANIZE.md`  
**NOT:** AGI timelines · Auto as seat picker · light factory (“never read code”) · multi-agent fleets · paste-all warehouses · RLM product default-buy

---

## Stance (decided)

| Pin | Meaning |
|-----|---------|
| **Software 3.0** | Context + prompts program the LLM; improve the **window** and the **verify loop** |
| **Context as variable** | Large corpora are a **handle** you query/slice — not a paste you drown in (see § below) |
| **Vibe coding** | OK for throwaway / floor-raising probes only |
| **Agentic engineering** | Default for real work: orchestrate agents; human owns quality, security, taste |
| **Partial autonomy** | Iron Man suit — augmentation + limited autonomy; you still pilot |
| **Decade of agents** | Demo ≠ product (`works.any()` vs `works.all()`) |
| **Harness ≠ model** | Same weights, different loop → different outcomes; don’t rank models blind to the harness |

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

## Context as a variable (RLM shape)

**Decided framing:** **Context rot** = attention competition as tokens pile up — not merely “window full.”  
**Inversion:** treat a large corpus as an **environment variable / handle** (index, search, slice, summarize sections). The model peeks and queries; it does **not** need the whole warehouse in one paste.

### Paste threshold (**decided**)

| Prefer **paste** | Prefer **query / slice** |
|------------------|--------------------------|
| Short one-shot · single doc · roughly **<~30k** tokens | Warehouse · multi-doc aggregation · Drive/Discord dumps · long design-note trees · “what collides across all of X?” |

Under the threshold: **just paste** — RLM theater for a short PDF is complexity failure.  
Over it: give a **handle** (paths, ledger, grep, chunked reads) — same spirit as `CHUNKING.md` (chunk for processing, never for understanding).

### Chat history ≠ durable memory (**decided**)

- Long threads drop or soft-lose earlier turns — **you cannot rely on “remember the entire chat.”**  
- Same shape as paste threshold: when the thread is a warehouse, **land a handle** (session note · decided/NOT/parked · handoff packet · overlay log), then continue from that — don’t re-paste the transcript.  
- Hot path stays thin (`AGENTS` / digests / overlay); cross-chat recall = **read files**, not infinite RAM.  
- Chat dumps → `EXTRACT_AND_ORGANIZE.md` (query/slice), not “stuff the whole JSONL back in.”  
- **Cursor UX (new chat · `@` · side chat · context ring):** `CURSOR_CHAT_HYGIENE.md` — thin product habits; this file stays doctrine.

### Shallow slice / subagent (**decided** · gated)

- Child chat / subagent may take **only the slice + DoD**, not the whole warehouse (empty-of-corpus context).  
- Keep recursion **shallow** (1–2 levels). Deep recurse / Prime-style showcase loops = **NOT**.  
- Still: **no review fleets**; multitask only with a named synthesis owner (`RUNTIME.md`).

### Immutable Layer A / mutable tissue (**decided**)

- **Layer A / system constitution** (`AGENTS.md` baseline) stays fixed unless the operator explicitly grows the pack.  
- **Overlays · skills · Remember digests** may refine with evidence (twice-seen / “remember that” / confirm).  
- Continual **self-rewrite** of operating instructions without human gates = **NOT**.

### Harness ≠ model (**decided**)

Huge score gaps on the same weights prove the **loop** matters. Steal the lesson; treat ARC/harness crowns as **skeptical Keep**, not model IQ shopping.

### NOT (this §)

| Refuse |
|--------|
| Default-buy Prime Agent / RLM product install |
| Paste-all warehouses “so the model has everything” |
| Treating long chat history as infinite memory |
| RLM ceremony on short one-shots |
| Deep recursion theater · unsandboxed self-refine / cheat-capable loops |
| Treating benchmark crowns as proof of tissue |

Evidence SoT (video / paper shapes): operator inbox `thoughts/sources/2026-08-12-context-as-variable-rlm.md` — not copied into this pack.

---

## Anti-patterns (NOT)

| Refuse |
|--------|
| Unsupervised “year of agents” / never-read-code light factory |
| Review fleets / multitask without synthesis owner |
| Gauntlet as the *miner* for raw dumps (finisher only — see extract / idea-mining) |
| Token-maxing harness theater while value/review is the bottleneck |
| Treating benchmarks or demos as maintainability proof |
| Paste-all / drown-in-context when a handle + query would do |

---

## One stack (operator)

```text
intent → measure/DoD → (plan if blast) → program design / vertical slice
  → paste-or-query (context as variable) → autonomy slider → generate ↔ verify → stop
```

Seats, wrong-seat callout, decide-low/ask-high, DoD/stop, **session hygiene callouts** (Plan · land · warehouse · new chat): `RUNTIME.md`.  
Cursor chat UX (when to restart / `@` / side chat / reminders): `CURSOR_CHAT_HYGIENE.md`.

---

## Promote later?

Thin Prefer line already mirrored in `RUNTIME.md`. Digest points here.  
Long research stays in the operator inbox unless asked to copy the full brief into `optional/`.  
Context-as-variable shapes are **in this kit**; video evidence stays in thoughts.
