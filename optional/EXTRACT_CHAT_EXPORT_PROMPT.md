# Prompt — extract ChatGPT HTML export

**Portable canonical:** opack `optional/EXTRACT_CHAT_EXPORT_PROMPT.md`  
**General dumps (non-HTML):** [`EXTRACT_AND_ORGANIZE.md`](EXTRACT_AND_ORGANIZE.md)

Paste into a new chat with the `.html` attached (or give its absolute path).

```text
Workspace: {PROJECT_ROOT}

I uploaded a ChatGPT HTML export. Extract and keep by VALUE, not by speaker.

## Rules
1. Extract ALL user messages (div.message.user-message) → numbered plain text.
2. Also harvest HIGH-VALUE assistant ideas (mechanics, encounter design, naming, ecology, culture lines, questions that unlock design). Tag provenance.
3. KEEP assistant content when it adds leverage — even if I didn’t restate it. Tag as:
   - Owner lock (I originated / clearly decided)
   - Affirmed lean (I explicitly liked/agreed)
   - Assistant value (useful; not yet locked)
   - Spitball / open
4. DISCARD only low value: empty praise, pure rephrase with no new lever, repetitive cheerleading.
5. Do not invent new systems beyond the export. Do not wipe existing project locks on conflict — keep both + “reconcile later.”
6. Prefer concise systems docs over dumping essays.

## Write
- docs/design-notes/<slug>/README.md — source, policy, chunk index, kept vs discarded
- docs/design-notes/<slug>/00-user-beats.md — all user beats
- docs/design-notes/<slug>/01-assistant-value.md — high-value ChatGPT ideas kept
- docs/systems/<topic>.md — distilled design (or update existing systems doc)
- Update docs/README.md and docs/design-notes/README.md

## Then
Summarize files written, key value kept (owner + assistant), conflicts flagged.

Source: <path or attachment>
Slug (optional): <e.g. chatgpt-export-YYYY-MM-DD-topic>
Topic focus (optional): <topic>
```

**Replace `{PROJECT_ROOT}`** with the repo absolute path (e.g. `~/Desktop/fallen-blade-tactics`).

---

## Log

| Date | Change |
|------|--------|
| 2026-08-13 | Promoted from FBT; parameterized workspace path |
