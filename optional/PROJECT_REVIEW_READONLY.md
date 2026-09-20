# Project review — read-only (cold open prefix)

**Status:** active kit · 2026-09-20 · workflow-lab pasteable  
**Job:** **prefix only** — read-only + cold lead + verdict shape; **body = `PROJECT_REVIEW.md`** (Mode D)  
**NOT:** second full review outline · audit laundry · close-out (`CLOSE_CHAT.md`)  
**Pairs with:** `PROJECT_REVIEW.md` (canonical sections) · `CLOSE_CHAT.md` (prior chat) · `REPOSITORY_AUDIT.md` (defect-heavy)  
**Phrase lock:** none — operator pastes this + `@PROJECT_REVIEW.md` or pastes both  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

- **New chat** after `CLOSE_CHAT.md` → **go** (land URL · path · branch · cold-lead line).
- **Read-only** until you explicitly ask to implement.
- Workspace already open **or** URL for intent only (review uses local tree / workspace).

**Seat:** Reviewer · Multitask **off** · Plan **no**.

---

## Paste (operator) — prefix + engine

Paste **this block first**, then add the full paste from **`PROJECT_REVIEW.md`** (from `# Project Review — Mode D` through section 14), or `@optional/PROJECT_REVIEW.md` and tell the agent to follow it under the constraints below.

```text
# Project review — read-only (cold open)

Runtime: Mode=D · Seat=Reviewer · Multitask=off · Plan=no

READ-ONLY: Do not modify files, commit, open PRs, run migrations, or change configuration unless I explicitly ask later.

Cold lead: Evidence from this repository (and git docs I @-reference) only. Prior chats and handoff notes are non-authoritative.

Scope: [GitHub URL and/or “this workspace” + path]
Handoff (non-authoritative): [close-out commit/path · branch · one-line intent · leftover system state — or “none”]

Follow PROJECT_REVIEW.md (Mode D full paste) under these overrides:

* Treat as read-only (stronger than “do not unlock builds”).
* Skip empty sections. Depth over coverage.
* In §3 Critical paths: trace 1–3 load-bearing flows as data paths (input → state → logic → outputs); name authoritative vs derived state.
* Material defects only on those paths; for defect sweeps, say “use Repository Audit” — do not run a full audit checklist here.
* Too large → chunk per CHUNKING.md → synthesize before verdict.
* End with the REVIEW VERDICT block below (may replace §14 Decide-Next format for this session).

Philosophy and restraint litmus: as in PROJECT_REVIEW.md (not paid to find work; analysis is not authorization).
```

---

## Paste (operator) — verdict only

Append after the Mode D body (or as the required close if you `@` only this file for a short re-cap):

```text
## REVIEW VERDICT (required close)

INTENDED GOAL
[What the project appears to be trying to accomplish.]

ACTUAL STATE
[What exists and works based on evidence.]

GOAL STATUS — MET | PARTIAL | NOT MET | UNDETERMINED

CRITICAL FACTS
[Minimum facts to understand current state.]

CONFIRMED RISKS
[Evidence-backed only; path + confidence high/medium/low.]

UNVERIFIED
[What you could not establish.]

LEFTOVER SYSTEM STATE
[Migrations, generated artifacts, env assumptions, local-only state.]

DO NOT TOUCH
[High blast or low evidence — not casual cleanup.]

OPEN QUESTIONS
[Max 3 — material to next decision only.]

PRIMARY DIAL — BUILD | POLISH | CONSOLIDATE | STOP
[One sentence: effort vs leverage.]

RECOMMENDED NEXT STEP
[Factual; do not implement unless I ask.]
```

---

## Agent note

One review engine: **`PROJECT_REVIEW.md`**. This file adds **gates** (read-only, cold lead) and a **fixed verdict footer**. Do not invent a parallel 12-section outline.

---

## Map

| Kit | Job |
|-----|-----|
| `CLOSE_CHAT.md` | End prior chat · **go** |
| **this file** | Prefix + verdict · cold open |
| `PROJECT_REVIEW.md` | Mode D sections 0–14 (canonical) |
| `REPOSITORY_AUDIT.md` | Defect / systems diagnosis |

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-09-20 | Initial kit | Durable cold read-only paste; close → new chat |
| 2026-09-20 | Shrink to prefix + pointer | One engine; less drift and checklist theater |
