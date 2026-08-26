# Runtime control (+ failure modes)

**Status:** active consolidated kit · 2026-08-08  
**Archives:** `archive/RUNTIME_CONTROL.md` · `archive/FAILURE_MODES.md`  
**Use when:** choosing *how* the agent runs — mode, seat, parallelism, gates, handoff — or diagnosing a bad session  
**NOT:** always-on multitasking · sixth standing seat · Layer A bloat  
**Same-line ideas (not all landed):** `RUNTIME_HYGIENE_IDEAS.md`  
**Cursor chat UX (new chat · `@` · side chat):** `CURSOR_CHAT_HYGIENE.md`

---

## Stack placement

```text
intent → 5W1H → depth/chunk → mode? → seat(s)? → execute → gate/handoff → validate → stop
```

Formation: `INTENT_EXPAND.md`. Seats: `CURSOR_MODEL_SEATS.md` · `MODEL_SEAT_PLAYBOOKS.md`.

---

## 1. Runtime stanza (substantial work)

One visible line, then proceed:

```text
Mode=… · Seat=… · Multitask=off|on(+owner) · Plan=yes|no
```

Multitask **off** unless independent work has a **named synthesis owner**. **No review fleets.**

---

## 2. Mode (escalate, don’t default-max)

| Mode | When |
|------|------|
| Ask / thin | Trivia, lookup |
| Plan | Ambiguous / high blast radius *before* edits |
| Agent | Clear enough; inspect/edit/test |
| Debug | Reproduce → isolate → fix → prove |

Default: Agent + adaptive depth. Plan ceremony is not for “rename this variable.”

---

## 3. Seat (manual — Auto won’t do this)

**Cursor Auto does not follow opack playbooks.** Name the seat and/or pin the model:

| Job | Seat |
|-----|------|
| Default build | Engineer |
| Regret / scary | Reviewer |
| Stuck loop | Finisher |
| Mega-map | Archivist (on-call) |
| Falsify | Attacker (on-call) |

Open with `Seat: …` and follow `MODEL_SEAT_PLAYBOOKS.md`. Optional short openers: `SEAT_PROMPTS.md`. Active ≤3; declare idle.

### Wrong-seat callout (not a quiz)

Do **not** ask “whose job is this?” on ordinary turns.  
When the ask clearly fits another seat (scary → Reviewer · stuck multi-file → Finisher · mega-map → Archivist · falsify → Attacker) and this chat is the wrong one: **one line** naming the better seat, then stop or continue only if the operator keeps you here.  
Default = stay Engineer and answer. Ceremony is for mismatch, not every prompt.

---

## 4. Gates & handoff

- Fail-closed on live / irreversible without operator.  
- Author ≠ sole Reviewer on scary diffs.  
- Stuck → Finisher; scary → Reviewer; invariant → Attacker.  
- Stop when DoD met; don’t polish forever.

### Handoff packet (seat redirect)

When calling a wrong-seat redirect (or operator opens the next seat), leave **three bullets** so the next chat is not cold:

```text
Intent: …
Facts so far: …
Open risk / ask: …
```

No essay. If continuing in this chat anyway, skip the packet.

### DoD / stop callout

When the stated DoD is met, or polish starts without a new requirement: **one line** — “DoD met — stop unless you want polish.” Then stop. Counters infinite polish / wow-bar.

If the **next** ask is a different job (new feature, review after build, unrelated topic): add — “Next step → new chat (+ handoff) unless you want to keep this tight loop.” Same-bug iterate = continue; job change = suggest restart. UX detail: `CURSOR_CHAT_HYGIENE.md`.

### Session hygiene callouts (not quizzes)

Same principle as wrong-seat: **one line when mismatch**, then proceed or stop — do **not** nag every turn or invent a token meter.

| Trigger | One-line shape (examples) |
|---------|---------------------------|
| **Plan / blast** — ambiguous or high-blast ask about to become multi-file / irreversible edits, and no short plan exists | “Suggest Plan (or a short plan here) before edits — blast looks high.” Never for trivia / rename-one-symbol. |
| **Land durable** — dense design dump, many decided/NOT/parked, or sticky decisions still only in chat | “Suggest landing this in notebook/pin/overlay — chat isn’t SoT. Want me to write it?” |
| **Warehouse paste** — operator pastes / asks to load a multi-doc tree over ~30k, Drive dump, long design forest | “Prefer handle + query (path / ledger) — don’t paste the warehouse.” Then slice. |
| **Fat / rotten thread** — topic drift, soft-rot (“as I said earlier” fails), long multi-job thread, or operator notes a full context ring | “Suggest new chat — thread looks fat/rotten. Handoff: Intent · Facts · Open risk.” Do **not** claim exact token counts; heuristics only. |
| **DoD met + next job** | See DoD / stop above. |
| **Close-out phrase** — operator says “close out this chat” / “can I close?” | Run `CLOSE_CHAT.md` once → YES / NO / YES WITH LAND. Chat≠project (unfinished product work ≠ auto-NO). Park optional non-blocking follow-ups to a durable `@`-able note (not chat-only). Do not start new work unless they say land/fix. |

**Honest limit:** agents cannot reliably read Cursor’s context-ring percentage. ~30k is the **paste / one-shot** threshold (`AGENTIC_INTERACTION.md`), not a live meter. Fat-thread callouts use quality signals, not fake telemetry.

### Decide-low / ask-high

| | Do |
|--|-----|
| **Decide-low** | Clear ask · local · reversible · no live/prod/credentials · **durable notes/pack/overlay batch → commit and push** (multi-device) · no Layer A rewrite except the scoped git exception already in `AGENTS.md` → **decide and do**; one short “I decided X because …” only when non-obvious |
| **Ask-high** | Live / irreversible · secrets · **product/runtime** commit/push unless asked · weaken safety gates · Layer A or shared kit growth (beyond standing pins) · ambiguous high blast · seat stop after redirect → **ask or fail-closed** |

This is scoped agency, not unbounded autonomy. Wrong-seat and DoD callouts still apply.

---

## 5. Failure modes (name → fix layer)

| Symptom | Likely mode | Fix |
|---------|-------------|-----|
| Confident but wrong | README theater | Context + verify |
| Endless TODOs | No stop / priority | Spec + stop |
| Rebuilds working system | Taste refactor | Challenge + consolidate |
| Local fix, global break | Chunk w/o synthesis | Chunking pin |
| “Verified” without proof | False completion | Run checks; honesty |
| Five agents, no decision | Multitask thrash | Runtime off + owner |
| Builder self-LGTMs scary | Seat collapse | Reviewer |
| Prompt longer, still bad | Prompt-harder reflex | Fix context/spec/tools |

**Recovery:** (1) name the mode (2) stop (3) re-state intent + stop (4) restore facts vs inferences (5) resume at the right layer — often more context, less coding.

Classic names: README theater · premature build · sycophantic agreement · scope bloom · false verification · fragmented truth · interestingness bias · infinite polish · seat collapse · prompt-harder · slop rework · factory without judgment · wow-bar/wrong objective.

---

## Prefer

understand → verify → simplify → plan → execute → validate → **stop**.  
Goal = best justified outcome with least unnecessary complexity. **Do nothing** when that is correct.

For unfamiliar / high-blast work, prefer gated phases: Research → Plan (approve) → Code → Verify (`PHASE_PIPELINE.md`). Research never edits; Plan never codes.

**Agentic interaction:** partial autonomy (slider by blast) · generate↔verify on a leash · program design / vertical slice before long cook · vibe only for throwaway · **context as variable** (paste <~30k one-shots; warehouses = handle + query/slice) · human owns understanding. Full kit: `AGENTIC_INTERACTION.md`.
