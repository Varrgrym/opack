# Plain explain — repo overview for newcomers

**Status:** active · 2026-09-06 · workflow-lab pasteable · baseline `docs/`  
**Use when:** explain this repo · plain explain · explain simply · newcomer overview · owner refresher after time away  
**Audience:** someone smart who has never seen this project — plain language, no jargon theater  
**NOT:** Mode D (`PROJECT_REVIEW.md`) · Mode A (`OWNERSHIP_TAKEOVER.md`) · audit · roadmap · build unlock · file-tree dump

---

## Phrase lock

| Operator says | Do |
|---------------|-----|
| **plain explain** / **explain simply** / **explain this repo** | This kit — prose mental model, not a review |
| **what is this?** / **what is this project?** (orient only) | This kit unless they want Mode D depth |
| **I’m back after months** / **refresher** | Same kit — emphasize section 5 |

Do **not** ask which mode. Do **not** unlock builds or suggest new features unless asked.

---

## Runtime

```text
Runtime: Mode=Orient · Seat=Engineer · Multitask=off · Plan=no
```

Optional: large or unfamiliar repo → read README + top-level layout first; chunk only if needed (`CHUNKING.md`).

---

## Paste opener (standing)

```text
Plain explain — this repo only.

Read the repo first (README, top-level folders, main entry points, package/config names).
Do not invent features or pretend you ran the app unless evidence says so.

Write for someone smart who has never seen this project.
Use plain language and short sentences. Everyday words. One analogy per big idea if it helps.

Structure your answer exactly like this:

1. **One sentence** — What is this, in the simplest possible words?

2. **The story** (3–5 short paragraphs max)
   - What problem does it solve, or what is it for?
   - What do you actually *do* with it? (run it, install it, read it, etc.)
   - What are the main “parts” (like rooms in a house) — name folders or modules only if they help, not as a file dump.

3. **How it fits together** — One simple picture in words (e.g. “You type X → it does Y → result is Z”). No deep technical dive.

4. **If you’re new here** — Where to start reading or clicking (2–4 concrete paths: README, main script, docs folder, etc.).

5. **If I’m coming back after time away** — In 3–5 bullets: what this repo is *for*, what’s probably “done enough,” what’s likely still in progress, and the one place I’d open first today.

6. **What I might get wrong** — 2–3 things that sound right but aren’t (or “unknown — couldn’t verify from the repo”).

Rules:
- No bullet salad in section 2 — write in prose.
- Define any term you must use in one plain line.
- Label anything you’re inferring: “Looks like…” / “Not sure, but…”
- Stop when the mental model is clear. Do not unlock builds or suggest new features unless I ask.

Runtime: Mode=Orient · Seat=Engineer · Multitask=off · Plan=no
```

---

## Map (do not steal jobs)

| Kit | Job |
|-----|-----|
| **this file** | Plain mental model · newcomer or refresher |
| `PROJECT_REVIEW.md` | Evidence-based architecture review (Mode D) |
| `OWNERSHIP_TAKEOVER.md` | Owner status · alignment · next week (Mode A) |
| `PROMPT_BUNDLES.md` § New project / cold start | Orient → review → boundary (operator workflow) |
| `DAY_PROMPTS.md` #8 | 5W1H on a **task**, not repo explainer |

---

## Install

Baseline → `docs/PLAIN_EXPLAIN.md`. `--with-workflow-lab` also copies to `docs/workflow-lab/PLAIN_EXPLAIN.md`. Opack clone → `optional/PLAIN_EXPLAIN.md`.

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-09-06 | Landed kit + phrase lock | Newcomer overview + owner refresher; not Mode D |
