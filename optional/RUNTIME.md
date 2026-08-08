# Runtime control (+ failure modes)

**Status:** active consolidated kit · 2026-08-08  
**Archives:** `archive/RUNTIME_CONTROL.md` · `FAILURE_MODES.md`  
**Use when:** choosing *how* the agent runs — mode, seat, parallelism, gates, handoff — or diagnosing a bad session  
**NOT:** always-on multitasking · sixth standing seat · Layer A bloat

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

Open with `Seat: …` and follow `MODEL_SEAT_PLAYBOOKS.md`. Active ≤3; declare idle.

---

## 4. Gates & handoff

- Fail-closed on live / irreversible without operator.  
- Author ≠ sole Reviewer on scary diffs.  
- Stuck → Finisher; scary → Reviewer; invariant → Attacker.  
- Stop when DoD met; don’t polish forever.

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
