# Runtime control card

**Status:** decided · optional kit  
**Use when:** choosing *how* the agent runs (mode, seat, parallelism, gates, handoff) — not only *what* to investigate  
**Companion:** seats `CURSOR_MODEL_SEATS.md` · `MODEL_SEAT_PLAYBOOKS.md` · `ADAPTIVE_TASK_EXPANSION.md` · `CHUNKING.md` · `FAILURE_MODES.md`  
**NOT:** always-on multitasking · a sixth standing model · Layer A bloat

---

## Stack placement

```text
intent → 5W1H → depth/chunk → which mode? → which seat(s)? → execute → gate/handoff → validate → stop
```

Formation kits answer *investigation procedure*. This card answers *runtime control*.

---

## 1. Mode (like Plan — escalate, don’t default-max)

| Mode | When |
|------|------|
| **Ask / thin answer** | Trivia, lookup, already-known fact |
| **Plan** | Ambiguous goal, multi-path design, high blast radius *before* edits |
| **Agent** | Clear enough intent; inspect/edit/test loop |
| **Debug / evidence-heavy** | Suspected failure; reproduce → isolate → fix → prove |

Default: Agent with adaptive depth. Escalate to Plan when ambiguity or irreversibility is high. Do not run Plan ceremony on “rename this variable.”

---

## 2. Seat / model routing (job, not brand)

Standing seats (hard cap ~3–4): see playbooks. **Route by job** after intent/depth:

| Job | Seat | When |
|-----|------|------|
| Plan → edit → test → fix | **Engineer** — GPT-5.6 Sol | Default build path |
| Regret-pass / scary diff / design fork | **Reviewer** — Claude Opus 5 High | Before irreversible or hard-to-undo changes |
| Close stalled multi-file loop | **Finisher** — Kimi K3 Max | Agent stuck mid-refactor |
| Mega-map / long corpus | **Archivist** (temp) — Gemini 3.1 Pro | Need breadth, then hand off |
| Hard invariants / kill assumptions | **Attacker** (temp) — Grok 4.5 High | Security or “prove this wrong” |

**Active set:** ≤3 seats per task; declare the rest idle. Full lock + decision log: `CURSOR_MODEL_SEATS.md`.

**NOT:** one chat doing builder + self-LGTM on scary work.  
**NOT:** model-shopping every prompt — default Engineer; name `Seat:` when switching.

Cost ladder (optional): cheap/fast inventory → expensive regret-pass.

---

## 3. Multitasking / parallel agents

**Default: off.** Turn on when needed (same pattern as Plan).

| On when | Off when |
|---------|----------|
| Independent subtrees / embarrassingly parallel search | Architecture, coherence, “what next?”, **project review** |
| Orthogonal prep while one long job runs | Synthesis and prioritization |
| Fan-out inventory that will be merged deliberately | Reviewer / Attacker judgment passes |

**No review fleets.** Parallel inventory only with a named synthesis owner — else you get 20 unrelated summaries (violates chunk-for-processing pin).

Parallelism without a **synthesis owner** violates: chunk for processing, never for understanding.

---

## 4. Tool policy (short)

- Prefer evidence: read / search / run over speculation.  
- Don’t tool-spam: choose relevant context first.  
- Failed command → diagnose; don’t claim success.  
- Never claim tested / fixed / verified unless actually done.  
- Ask the human when the next tool action is destructive or needs secrets/credentials you don’t have.

---

## 5. Human gates

Pause for operator confirmation when:

- irreversible or hard-to-undo (force push, prod, data delete, `--force` workflow)  
- material ambiguity that changes the outcome  
- expanding scope beyond the stated intent  
- security / secrets / live gates  

Not every question is a gate. Minor assumptions: state them and proceed.

---

## 6. Handoff packet (chat → chat or seat → seat)

Write enough that the next agent does **not** re-discover:

```text
Goal (intent)
Decided / NOT / parked
Facts (with paths) vs inferences
Open unknowns
What was tried / what failed
Next action + stop condition
What must not be touched
```

---

## 7. Change chunking (edits, not only investigation)

Prefer PR-sized, reversible slices: one concern per change set; validate before the next. Investigation chunks ≠ license to land a mega-diff.

---

## 8. Session close check

Before ending substantial work: did this session leave the system **more correct / clearer / simpler** — or only busier? If busier, say so.

---

## Parked (noted, not built yet)

- Cursor-native context card (`@` files, rules, open editors)  
- Verbosity / evidence budget rules  
- Longer recovery-prompt cookbook (beyond `FAILURE_MODES.md`)  
- Explicit eval rubric for “agent session quality”  
- Auto Cursor slash skill for Gauntlet/PRP (paste blocks landed — skill optional)

**Landed thin (no longer blocked):** PRP template · examples convention · Mode D cold-lead · seat-aware Gauntlet paste · `--with-workflow-lab` install. See `PASTEABLES_INDEX.md` · `EXTERNAL_READING.md`.

---

## Pins

- Multitasking: **when needed**, not always-on.  
- Seats: **route by job**; integrate into Adaptive — don’t leave as orphan docs.  
- No sixth standing seat without the pack’s promotion rule (~3× same gap + one-sentence when to open).
