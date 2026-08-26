# Close out this chat

**Status:** active kit · 2026-08-26 · opack optional  
**Job:** end-of-session gate — goals check · extract keepers · **YES close** / **NO pending**  
**Phrase lock:** “close out this chat” · “close this chat” · “can I close this?” · “session close”  
**Companions:** DoD/stop · handoff (`RUNTIME.md`) · extract (`EXTRACT_AND_ORGANIZE.md`) · day #10 (`DAY_PROMPTS.md`) · UX (`CURSOR_CHAT_HYGIENE.md`)  
**NOT:** full Mode D · product “are we done?” (→ day #10) · infinite polish · auto-commit product code · re-litigate the whole project

---

## When to use

Operator is about to leave the thread (or wants permission to). Run this **once** — do not nag.

**Chat ≠ project:** a project need **not** be finished for this chat to close. Default = this chat’s DoD only. Product / feature “are we done?” → compose with day #10.

---

## Protocol (fail-closed)

```text
1. GOALS     Restate this chat’s DoD / stated goals (operator + what was actually pursued).
             Separate: original · added later · abandoned/NOT. Do not invent goals.
2. CHECK     For each: done · partial · not started · out of scope (parked).
             Discussion of an idea ≠ completion of that idea. Briefly why if non-done.
3. EXTRACT   Valuable residue still only in chat: decided · NOT · parked · open Q · files touched.
             If nothing needs preserving, say so.
4. LAND?     Sticky keepers not in repo yet → candidates with priority:
             Must-land / Useful / skip. Prefer existing paths; no new file for trivia.
             Decide-low notes/pack → offer to land now; product code commit → ask
5. FOLLOW-UPS  Optional / non-blocking next work → **write to a durable file** (not chat-only)
               so a *new* chat can `@` it. Skip if none. Do not invent a fake backlog.
6. VERDICT   One of the shapes below — no soft maybe
7. HANDOFF   If NO or YES WITH LAND: 3 bullets (Intent · Facts · Open risk) for the next chat
             If YES with parked follow-ups: point at the file path (+ one-line Pickup if multi-device)
```

**Depth dial:** default = this chat only. If the ask was a product “are we done?” on a feature, compose with day #10. If the thread was a dump, run extract protocol — don’t paste the warehouse back.

---

## Optional follow-ups → next chat (habit)

When close is **YES** but useful non-blocking work remains (field tests, re-installs, twice-bitten specialists, “try X later”):

1. **Do not** leave them only in the YES blurb.  
2. **Land** a short parked note (or append an existing follow-ups / Pickup / Log row).  
3. Shape: what · why parked · open when · NOT (refused) · where to log results.  
4. New chat opens with `@` that file (or overlay Pickup pointer).

**Example (opack):** `optional/PROMPT_FAMILY_FOLLOWUPS.md`  
**Product repos:** prefer `docs/follow-ups.md` or overlay Log — one path, not a second constitution.

Empty follow-ups = omit the file. Polish itch ≠ a follow-up list.

---

## Verdict shapes (required)

### YES — close

```text
YES — you can close this chat.

Goals: …
Landed / already durable: …
Optional follow-ups (parked for next chat): <path> · or “none”
```

Use when all **blocking** goals for *this chat* are met — even if the project continues elsewhere. Polish itch ≠ pending. Unfinished project work that is parked or belongs in a new chat ≠ NO.

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

Pending items must be **specific and smallest**. Do not invent new scope. Do not treat optional / interesting / unfinished-*project* work as blocking *this chat*.

### YES WITH LAND (variant)

When goals are met in conversation but sticky decisions **or optional follow-ups** are still chat-only:

```text
YES WITH LAND — close after landing (or park explicitly).

Must land before close (or mark parked with path):
- … (keepers and/or optional follow-ups note)

Say “land it” to write files; then YES close.
```

Useful-but-not-must candidates may be skipped or parked with operator say-so — only **Must-land** blocks YES.

---

## Paste (operator)

```text
Close out this chat.

A project need not be finished for this chat to close. Default = this chat’s DoD only.
Do not treat discussion of an idea as completion of that idea.
Do not expand scope. Do not start new work unless I say land/fix.

1) Restate this chat’s goals / DoD (original · added later · abandoned/NOT). Do not invent goals.
2) Check each: done · partial · not started · parked. Briefly why if non-done.
3) Extract anything valuable still only in chat (decided · NOT · parked · open Q). If nothing to preserve, say so.
4) Land candidates: Must-land / Useful / skip. Prefer existing paths; no new file for trivia.
5) If optional non-blocking follow-ups exist: land them in a durable parked note for the next chat (@-able). Do not invent work.
6) Verdict — exactly one:
   - YES — you can close this chat
   - NO — do not close yet (list blocking pending for *this chat*)
   - YES WITH LAND — close after landing (list must-land)
7) If NO or YES WITH LAND: leave a 3-bullet handoff (Intent · Facts · Open risk).
   If YES with parked follow-ups: give the file path.
```

---

## Agent standing behavior

On phrase lock: run the protocol; **do not** continue coding unless the operator says land/fix.  
If YES and digests/overlay need a Log row for multi-device pickup, mention it once.  
If optional follow-ups were listed verbally: **YES WITH LAND** until the parked note exists (or operator says park nowhere / discard).

---

## Refer

| Need | Open |
|------|------|
| Session hygiene callouts | `RUNTIME.md` |
| New chat / `@` / fat thread | `CURSOR_CHAT_HYGIENE.md` |
| Deep “is the *product* done?” | `DAY_PROMPTS.md` #10 |
| Chat/export dump extract | `EXTRACT_AND_ORGANIZE.md` |
| Example parked follow-ups | `PROMPT_FAMILY_FOLLOWUPS.md` (opack-local) |

**Install:** baseline → `docs/CLOSE_CHAT.md`; `--with-workflow-lab` also copies to `docs/workflow-lab/CLOSE_CHAT.md`.
