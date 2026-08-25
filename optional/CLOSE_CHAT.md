# Close out this chat

**Status:** active kit · 2026-08-25 · opack optional  
**Job:** end-of-session gate — goals check · extract keepers · **YES close** / **NO pending**  
**Phrase lock:** “close out this chat” · “close this chat” · “can I close this?” · “session close”  
**Companions:** DoD/stop · handoff (`RUNTIME.md`) · extract (`EXTRACT_AND_ORGANIZE.md`) · day #10 (`DAY_PROMPTS.md`) · UX (`CURSOR_CHAT_HYGIENE.md`)  
**NOT:** full Mode D · infinite polish · auto-commit product code · re-litigate the whole project

---

## When to use

Operator is about to leave the thread (or wants permission to). Run this **once** — do not nag.

---

## Protocol (fail-closed)

```text
1. GOALS     Restate this chat’s DoD / stated goals (from operator + what was actually pursued)
2. CHECK     For each goal: done · partial · not started · out of scope (parked)
3. EXTRACT   Valuable residue still only in chat: decided · NOT · parked · open Q · files touched
4. LAND?     If sticky keepers aren’t in repo yet → list what to write (notebook / pin / overlay / commit)
             Decide-low notes/pack → offer to land now; product code commit → ask
5. VERDICT   One of the two shapes below — no soft maybe
6. HANDOFF   If NO or YES-with-follow-up: 3 bullets (Intent · Facts · Open risk) for the next chat
```

**Depth dial:** default = this chat only. If the ask was a product “are we done?” on a feature, compose with day #10. If the thread was a dump, run extract protocol — don’t paste the warehouse back.

---

## Verdict shapes (required)

### YES — close

```text
YES — you can close this chat.

Goals: …
Landed / already durable: …
Optional follow-up (not blocking close): …
```

Use when all **blocking** goals for *this chat* are met. Polish itch ≠ pending.

### NO — do not close yet

```text
NO — do not close yet.

Pending (blocking):
- [ ] item …

Suggest before close: land X / finish Y / open new chat for Z
Handoff:
Intent: …
Facts so far: …
Open risk / ask: …
```

Pending items must be **specific and smallest**. Do not invent new scope.

### YES WITH LAND (variant)

When goals are met in conversation but sticky decisions are still chat-only:

```text
YES WITH LAND — close after landing (or park explicitly).

Must land before close (or mark parked with path):
- …

Say “land it” to write files; then YES close.
```

---

## Paste (operator)

```text
Close out this chat.

1) Restate this chat’s goals / DoD.
2) Check each: done · partial · not started · parked.
3) Extract anything valuable still only in chat (decided · NOT · parked · open Q).
4) Say what should be landed to files (if any).
5) Verdict — exactly one:
   - YES — you can close this chat
   - NO — do not close yet (list blocking pending)
   - YES WITH LAND — close after landing (list must-land)
6) If NO or YES WITH LAND: leave a 3-bullet handoff for the next chat.

Do not expand scope. Do not start new work unless I say land/fix.
```

---

## Agent standing behavior

On phrase lock: run the protocol; **do not** continue coding unless the operator says land/fix.  
If YES and digests/overlay need a Log row for multi-device pickup, mention it once.

---

## Refer

| Need | Open |
|------|------|
| Session hygiene callouts | `RUNTIME.md` |
| New chat / `@` / fat thread | `CURSOR_CHAT_HYGIENE.md` |
| Deep “is the *product* done?” | `DAY_PROMPTS.md` #10 |
| Chat/export dump extract | `EXTRACT_AND_ORGANIZE.md` |

**Install:** `--with-workflow-lab` → `docs/workflow-lab/CLOSE_CHAT.md`.
