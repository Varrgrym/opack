# Close out this chat

**Status:** active kit · 2026-09-06 · opack optional  
**Job:** honest read (steps 1–6) · **go** (land state → verify → close) · **fix** (only if *this chat* still blocking)  
**Phrase lock:** “close out this chat” · “close this chat” · “can I close this?” · “session close”  
**Execute locks:** **go** (land then close) · **fix** (run fix plan — only when read phase was NO)  
**Companions:** DoD/stop · handoff (`RUNTIME.md`) · extract (`EXTRACT_AND_ORGANIZE.md`) · day #10 (`DAY_PROMPTS.md` · **separate ask**) · UX (`CURSOR_CHAT_HYGIENE.md`)  
**NOT:** auto-run day #10 at close · backlog at exit · infinite polish · auto-commit product code · re-litigate the whole project

---

## When to use

Operator is about to leave the thread. Run **read phase once** — do not nag.

**Chat ≠ project:** the **product goal need not be met** for this chat to close cleanly. Pursuing the real goal later is a **new chat** — not a blocker here.

**Honesty ≠ blocking:** say plainly when the goal was **not** met (workaround only · unverified · partial). **Land that state on go** — then close. Do not convert product gaps into a task list unless read phase is **NO** for *this chat*.

**Do not** auto-compose `DAY_PROMPTS.md` #10 at close. Run day #10 only when the operator explicitly asks *“are we actually done?”*

**Core question:** *Can I leave this thread after landing honest state?* (not “is the product finished?”)

**Phases:** **Read** (1–6 · no writes) → **go** (land + close) · or **fix** (only if NO).

---

## Pinned land target

One default path per repo — overlay pin wins. Append only; no new trivia files.

| Repo | Default land path |
|------|-------------------|
| **opack** | `optional/PROMPT_FAMILY_FOLLOWUPS.md` |
| **Installed project** | overlay pin or `docs/follow-ups.md` |

Also append to **subject docs touched this chat** (e.g. `SOBER.md` for Sober work). Multi-device WIP → overlay Log / Pickup row — not a second land file.

**Useful** residue → `EXTRACT_AND_ORGANIZE.md` — not the close gate. Close lands **Must-land** session state + follow-ups.

---

## Land policy (decide-low / ask-high)

Applies on **go** (or after **fix**).

| Action | On go? |
|--------|--------|
| Honest session state (goal · outcome · gap · leftover system state) | **Yes** — decide-low |
| Follow-ups for a **future** session | **Yes** — decide-low |
| Append to pinned path / subject doc / touched files | **Yes** — decide-low |
| Notes/pack/overlay → commit+push (multi-device) | **Yes** — decide-low |
| Product/runtime code edits | **fix** path only · operator said **fix** |
| Git commit product/runtime code | **No** — ask-high unless operator explicitly asked this session |

Do not invent backlog. Park optional pursue-later items; do not assign work at exit.

---

## Protocol

### Read (steps 1–6 · no writes)

```text
1. GOALS     Intended goal · this chat’s DoD (original · added · abandoned/NOT).
2. CHECK     done · partial · not started · parked. Discussion ≠ done.
3. HONESTY   Goal met? If not: what was actually achieved (workaround · unverified · blocked)?
             Leftover system state? (overrides · flags · temp config)
4. EXTRACT   Chat-only keepers: decided · NOT · parked · open Q.
5. MUST-LAND What to write on go: session state summary + follow-ups (paths).
6. VERDICT   YES (say go) or NO (fix plan · say fix). No writes yet.
```

**YES** when the operator can leave after **landing state** — even if the **product goal was not met**.  
**NO** only when something still **blocks closing this chat today** and the operator wants it fixed **now** (not “product unfinished someday”).

### Execute

```text
7. GO        Land Must-land (honest state + follow-ups) → commit+push notes/pack if changed
             → verify (git status · paths) → YES close
8. FIX       (after NO only) Smallest blocking fixes → land → verify → close
9. HANDOFF   NO or mid-fix: Intent · Facts · Open risk
             YES after go: paths · what was landed · pursue-later (@-able) if any
```

---

## Landed state shape (on go)

Write to subject doc and/or pinned follow-ups path:

```text
## Session close · <date>
**Intended goal:** …
**Outcome:** done | workaround | partial | not achieved
**Gap:** … (e.g. never verified with viewer; black screen unconfirmed fixed)
**Leftover state:** … (e.g. flatpak X11 override still on · revert command)
**Follow-ups (next chat):** … · or none
**NOT pursuing now:** …
```

---

## Verdict shapes (read phase)

### YES — land honest state; say go

```text
YES — you can close after go.

Goal met: yes | no (workaround / partial / unverified)
Must-land on go: … (paths)
Pursue later (parked · not blocking close): … · or none
Say go to land and close.
```

Product **NOT DONE** is allowed. Say so plainly; land it; do not open new work.

### NO — must fix before close today

```text
NO — blocking for *this chat* before you can leave.

Fix plan (smallest · no new scope):
- [ ] …

Say fix to run · then land · verify · close.
Handoff (if leaving mid-fix): Intent · Facts · Open risk
```

Use only when the operator **won’t** close until the listed item is fixed **now** — not because the product goal is unfinished in principle.

---

## Paste (operator) — read phase

```text
Close out this chat.

Chat ≠ project. I can leave even if the product goal wasn’t met.
Be honest: goal met or workaround only? Land that state on go — don’t open new work.
Do not run day #10 unless I ask. Read phase: no writes.

1) Intended goal · this chat’s DoD (original · added · abandoned/NOT).
2) Check each: done · partial · not started · parked.
3) Honesty: goal met? If not — what was achieved · what’s unverified · leftover system state?
4) Extract chat-only keepers (decided · NOT · parked · open Q).
5) Must-land on go: session state + follow-ups (paths). Pursue-later ≠ blocking.
6) Verdict:
   - YES — say go to land honest state → verify → close
   - NO — only if I must fix something before leaving today; say fix
7) If NO: handoff — Intent · Facts · Open risk.
```

---

## Paste (operator) — execute

```text
go
```

```text
fix
```

**go** — write Must-land (honest state + follow-ups) · commit+push notes/pack if changed · verify · YES close.  
**fix** — NO path only · no new scope.

---

## Agent standing behavior

Read phase: **no writes**. State product NOT DONE plainly when true — that is not a NO verdict by itself.  
**go** = land first, then close — no verbal YES without verify.  
Do not spawn a backlog at exit. Park pursue-later; operator opens a new chat when ready.  
Do not auto-run day #10. Do not commit product code unless operator asked this session.

---

## Refer

| Need | Open |
|------|------|
| Product “actually done?” (separate ask) | `DAY_PROMPTS.md` #10 |
| Session hygiene | `RUNTIME.md` · `CURSOR_CHAT_HYGIENE.md` |
| Useful residue / dumps | `EXTRACT_AND_ORGANIZE.md` |
| opack follow-ups pin | `PROMPT_FAMILY_FOLLOWUPS.md` |

**Install:** baseline → `docs/CLOSE_CHAT.md`; `--with-workflow-lab` also copies to `docs/workflow-lab/CLOSE_CHAT.md`.
