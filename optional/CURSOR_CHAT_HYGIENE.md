# Cursor chat hygiene

**Status:** active kit · 2026-08-25 · opack optional  
**Job:** thin Cursor UX habits — when to open a new chat, what to `@`, how to carry context  
**Doctrine (do not duplicate):** `AGENTIC_INTERACTION.md` · `RUNTIME.md` · `PROMPT_BUNDLES.md`  
**NOT:** Layer A · seat picker · Mode engines · Max Mode as lifestyle

---

## How chat works (product facts)

- Each Agent chat has a **fixed context window**. Messages, tool output, `@` attachments, rules, skills, and MCP catalogs all consume it.
- Near full, Cursor **summarizes** older turns. Usable, but earlier detail **soft-rots**.
- The **context ring** next to the input shows fill; click for a breakdown.
- **Mode switch** (Agent / Ask / Plan / Debug) starts a **fresh** context window.
- **Chat ≠ durable memory.** Cross-chat recall = **files** (`AGENTS` · overlay · notes · commits), not infinite RAM. Full shape: `AGENTIC_INTERACTION.md` § Chat history.

---

## New chat vs continue

| **Continue** | **New chat** |
|--------------|--------------|
| Same bug / same feature, iterating | Feature done or **job** changed |
| You still need the error trail | Context ring fat · quality slipping |
| Tight generate↔verify loop | Digression became the main thread |

**Default:** one **task** (one DoD) per chat — not one message per chat, not one eternal project chat.

**Carry forward** (pick one):

1. Short **handoff packet** (`RUNTIME.md`): Intent · Facts so far · Open risk/ask  
2. `@Chats` / prior side chat when the trail matters  
3. Point at a **landed file** (notebook · pin · overlay log) — prefer this when the thread was a warehouse

Do **not** re-paste a novel transcript. Paste threshold / warehouses: `AGENTIC_INTERACTION.md`.

---

## `@` mentions (practical)

| Prefer `@` | Skip `@` |
|------------|----------|
| You already know the file/folder | Unsure what’s relevant — Agent can search |
| Terminal output that matters | Whole-repo dumps |
| A prior chat / commit / branch for a specific trail | “Everything, just in case” |

Current product surface includes `@file` / `@folder`, `@Terminals`, `@Chats`, `@Commit` / `@Branch`, `@Browser` (see Cursor docs for the live list). Legacy `@Codebase` is not the primary pattern — let Agent explore.

---

## Side chats & digressions

- Main thread stays on the **DoD**.
- Side question / tangent → **side chat** (`/side`) so the primary window stays clean.
- Subagents (Explore / shell / browser) already run in **separate** context and return summaries — use them instead of stuffing noisy search into the main thread.

---

## Modes (match blast)

| Mode | Use |
|------|-----|
| **Ask** | Read-only Q&A / exploration |
| **Plan** | Ambiguous or high blast **before** edits |
| **Agent** | Clear enough to inspect / edit / test |
| **Debug** | Reproduce → isolate → fix → prove |

Don’t Plan for trivia (“rename this variable”). Runtime stanza + seats: `RUNTIME.md`. Auto ≠ seat playbooks.

---

## Agent callouts (reminders — not quizzes)

When the mismatch is clear, the agent should **say one line**, then stop or continue — same spirit as wrong-seat / DoD (`RUNTIME.md` § Session hygiene):

| When | Suggest |
|------|---------|
| High blast / ambiguous before big edits | Plan mode or short plan here |
| Dense design still only in chat | Land notebook / pin / overlay, then optionally new chat |
| Warehouse dump / multi-doc paste | Path + query — don’t paste the warehouse (~30k one-shot ceiling) |
| Fat / drifted / soft-rot thread | New chat + 3-bullet handoff |
| DoD met; next ask is a **new job** | Stop; next step in a new chat |

Do **not** invent “we hit exactly 30k tokens.” ~30k = paste threshold; chat fatness = quality heuristics + the context ring **you** can see.

---

## Phrase lock — close out this chat

Say **“close out this chat”** (or “can I close this?” / “session close”).

Agent runs `CLOSE_CHAT.md`: goals check → extract keepers → **YES** / **NO** / **YES WITH LAND**.  
Does not start new work unless you say land/fix. Deeper product “are we done?” → day #10.

---

## Operator rhythm

```text
Open chat → one job + DoD
  → Plan only if blast is high
  → Agent cooks in small verified slices
  → Land durable notes/commits when sticky
  → DoD met → stop
  → New chat for the next job (+ handoff if needed)
```

Paste **&lt;~30k** one-shots; warehouses = **handle + query**. Autonomy by blast · gen↔verify: `AGENTIC_INTERACTION.md`. Between engines: structured handoff in `PROMPT_BUNDLES.md`.

---

## Anti-patterns (NOT)

| Refuse |
|--------|
| One eternal “project chat” that “remembers everything” |
| Prompt-harder on a fat / rotten thread — re-spec in a new chat instead |
| Paste-all warehouses so the model “has everything” |
| Review fleets / many parallel agents without a synthesis owner |
| Re-explaining the whole opack every turn (that’s what `AGENTS` + rules are for) |
| Max Mode as default lifestyle |

---

## Refer

| Need | Open |
|------|------|
| Context rot · paste threshold · verify leash | `AGENTIC_INTERACTION.md` |
| Stanza · seats · handoff · DoD/stop | `RUNTIME.md` |
| Next kit · structured handoff | `PROMPT_BUNDLES.md` |
| Close-out gate (YES/NO) | `CLOSE_CHAT.md` |
| Lab TOC | `PASTEABLES_INDEX.md` |

**Install:** ships with `--with-workflow-lab` → `docs/workflow-lab/CURSOR_CHAT_HYGIENE.md`.
