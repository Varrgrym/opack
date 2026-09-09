# ChatGPT prompts — general use

**Status:** active kit · 2026-09-09 · opack optional  
**Job:** reusable prompts + habits for ChatGPT (and similar chat UIs) — work · coding · writing · learning · planning  
**Phrase lock:** “ChatGPT prompts” · “general ChatGPT prompts” · `@optional/CHATGPT_PROMPTS.md`  
**Companions:** `DAY_PROMPTS.md` (Cursor cousins) · `INTENT_EXPAND.md` (5W1H doctrine) · `EXTRACT_CHAT_EXPORT_PROMPT.md` (import *from* ChatGPT)  
**NOT:** Cursor seats · Mode A–D engines · auto-run day #10 · mega-prompt library · Prompt-OS

**Install:** **not copied** by `install.sh` — opack clone only (`optional/`).

---

## Custom Instructions (copy into ChatGPT)

Paste into ChatGPT **Custom Instructions** (or once per new chat if you prefer):

```text
Do more than the literal ask. Silently expand WHO/WHAT/WHY/WHEN/WHERE/HOW,
constraints, assumptions, missing info, risks, related work needed vs unnecessary.
Keep simple answers simple; do not invent complexity.
Label: Known / Inferred / Unknown / Recommended.

For non-trivial work, prefer this loop: understand → draft/plan → skeptical pass →
double-check → next actions → done gate. New chat when the thread gets fat;
paste a short brief (goal · decided · open · constraints), not the whole warehouse.
```

Full paste blocks below when you need more than the standing brief.

---

## Core habits

1. **Give context, not vibes.** Paste the relevant doc, error, or constraint. Say what you already tried.
2. **Say what you want back.** Options vs. one recommendation vs. step-by-step vs. copy-paste output.
3. **Label uncertainty.** Ask it to mark facts vs. assumptions vs. guesses.
4. **Use follow-up passes.** First answer → skeptical review → double-check. One prompt rarely finishes hard work.
5. **Start a new chat when the thread gets long.** Summarize and restart with a clean brief.

---

## Daily cheat sheet (all use cases)

Assume: work · coding · writing · learning · planning.

### Standing (paste once per chat)

```text
Do more than the literal ask. Silently expand WHO/WHAT/WHY/WHEN/WHERE/HOW,
constraints, assumptions, missing info, risks, related work needed vs unnecessary.
Keep simple answers simple; don't invent complexity.
Label: Known / Inferred / Unknown / Recommended.
```

### Daily five

**1. Understand before solving**

```text
Deep review of [X]. No solutions yet.
What it's for vs what it actually does · who depends · assumptions · what a skeptic would challenge.
Critical / Important / Worth improving / Optional.
End: state · risks · now / later / do not.
```

**2. Decide next**

```text
What should happen next? No generic backlog.
For each item: why · definition of done · deps/risks · now/next/later/do not.
Smallest step that cuts the most uncertainty.
```

**3. Skeptical pass**

```text
Skeptical senior reviewer. Try to break the prior conclusion.
Evidence per claim. No manufactured criticism.
Survives / fails / needs evidence / investigate next.
```

**4. Double-check**

```text
Independently reconstruct intent, then falsify the work.
What fails? Untested? Hidden assumption? Symptom vs root?
PASS / PASS WITH CONCERNS / REVISE / FAIL + concrete fixes.
```

**5. Done?**

```text
Is this actually finished? Happy path ≠ done.
Completeness · edges · failures · integration · evidence · clarity · cleanup · regressions.
DONE / DONE WITH FOLLOW-UP / NOT DONE + smallest remaining actions.
```

### By use case (one-liners)

| Use | Prompt |
|-----|--------|
| **Work** | `I need to [goal] with [audience]. Agenda/outline · must-not-forget · likely objections + short replies · what success looks like after.` |
| **Coding** | `Given [context/error/diff]: root cause vs symptom · minimal fix · what to verify · what not to touch. Prefer reuse over new abstraction.` |
| **Writing** | `Edit for clarity; keep my voice. What works · what's unclear · suggested edits with reasons. No generic rewrite.` |
| **Learning** | `Teach [topic]: one-sentence model · minimal core concepts · misconceptions · one example · 3 check questions. Stop before advanced unless asked.` |
| **Planning** | `Options: safe / fast / ambitious. Tradeoffs. Recommend one with assumptions and what would change your mind.` |

### Loop

Understand → draft/plan → skeptical pass → double-check → next actions → done gate.

---

## Meta-prompt (full)

Paste at chat start or when the ask is vague. Cursor cousin: `DAY_PROMPTS.md` § Meta.

```text
Do more than answer the literal request.

First understand what I am actually trying to accomplish.

Before responding, silently determine:
- WHO / WHAT / WHY / WHEN / WHERE / HOW
- What constraints exist?
- What assumptions am I making?
- What information is missing?
- What could go wrong?
- What related work is necessary?
- What related work is unnecessary?

Then choose the smallest appropriate investigation needed to answer well.

If the request is simple, keep the final answer simple.
But do not let a simple request produce a shallow analysis.

Look one level deeper for hidden dependencies, obvious omissions, risks,
contradictions, and opportunities to simplify.

Do not invent complexity. Label: Known / Inferred / Unknown / Recommended.
```

---

## Extended prompts

### Understand before fixing (long form)

```text
Do a deep review of [topic/project/decision].

Do not jump straight to solutions. First understand what exists and how it fits together.

Analyze:
- What this is supposed to do
- What it actually does
- Who depends on it
- Why it exists
- Key assumptions and constraints
- What would a skeptical reviewer challenge?

Separate findings: Critical / Important / Worth improving / Optional.
End with: current state, biggest risks, and what to do now vs. later vs. not at all.
Do not make changes yet — analysis only.
```

### Turn analysis into action (long form)

```text
Based on what we know, what should happen next?

Do not produce a generic backlog. Progress is not activity.

For each recommendation give:
- Why it matters
- Definition of done (observable)
- Dependencies and risks
- Now / next / later / do not

Prefer the smallest step that reduces the most uncertainty.
```

### Challenge a confident answer

```text
Act as a skeptical senior reviewer.

Assume the previous analysis may be wrong. Try to break its conclusions.

For each major claim ask: "What evidence proves this?"

Look for overconfidence, unsupported assumptions, and things called
"complete" too early.

Do not manufacture criticism. If something is solid, say so.

End with: what survives scrutiny, what doesn't, and what needs evidence.
```

### Double-check work

```text
Double-check this work independently.

Do not assume it is correct because it looks finished.

Reconstruct what it was supposed to accomplish, then verify whether it actually does.

Try to falsify it rather than confirm it.
Ask: What would make this fail? What wasn't tested? What assumption are we relying on?

Verdict: PASS / PASS WITH CONCERNS / REVISE / FAIL
List specific fixes if not PASS.
```

### Find what's missing

```text
Analyze this specifically for missing pieces.

Assume the obvious implementation is already present. Find what we forgot.

Compare: stated goals, requirements, current approach, edge cases, failure modes.

For each gap: what is missing, why it matters, how serious it is,
and what would prove it's actually solved.

Distinguish genuine gaps from optional improvements. Do not inflate scope.
```

### Are we actually done?

```text
Determine whether this is actually finished.

"Exists" or "runs on the happy path" is not enough.

Check: completeness, edge cases, failure handling, integration,
testing evidence, clarity for someone else, cleanup, regressions.

Verdict: DONE / DONE WITH FOLLOW-UP / NOT DONE
Then list the smallest remaining actions to legitimately call it done.
```

---

## Role prompts

LLMs work better as **simulators** than as a single opinion:

```text
What would a panel of [domain experts] say about [X]?
Each expert should disagree where reasonable. End with consensus and dissent.
```

```text
Explain [topic] to three audiences: a beginner, a practitioner, and a skeptic.
Where do the explanations diverge?
```

```text
I need to decide between [A] and [B].
Argue the strongest case for each. Then steelman the loser.
Recommend one with explicit tradeoffs and what would change your mind.
```

---

## Structure prompts

**Clarify a messy problem**

```text
I will describe a messy situation. Your job:
1. Restate the problem in one sentence
2. List what is known vs. unknown
3. Ask up to 3 clarifying questions (only if truly blocking)
4. Propose 2–3 approaches with tradeoffs
```

**Learn something properly**

```text
Teach me [topic] using:
- One-sentence mental model
- Core concepts (minimal set)
- Common misconceptions
- One concrete example
- 3 questions to test whether I understood

Stop before advanced edge cases unless I ask.
```

**Improve my writing**

```text
Edit for clarity and tone: [paste text]

Do not rewrite unless needed. Show:
- What works
- What is unclear
- Suggested edits (with reasons)
Keep my voice; don't make it generic.
```

**Meeting / email prep**

```text
I need to [goal] with [audience].

Draft:
- 3-bullet agenda or message outline
- The one thing I must not forget
- Likely objections and short responses
- What success looks like after
```

---

## High-leverage patterns

| Situation | Prompt pattern |
|-----------|----------------|
| You want options | "Give me 3 approaches: safe, fast, ambitious. Tradeoffs for each." |
| You want one answer | "Recommend one option. State assumptions. No hedge wall." |
| Output keeps drifting | "Follow this format exactly: [bullets/table/steps]. Nothing else." |
| It's too generic | "Be specific to [my context]. No boilerplate. If you lack info, ask." |
| You need rigor | "Label each claim: Verified / Inferred / Uncertain." |
| Big topic | "Break into chunks. Analyze each chunk, then synthesize. No final conclusion until synthesis." |
| Before acting | "What could go wrong? What would I regret in 6 months?" |

---

## What to avoid

- Mega-prompts that try to do everything at once
- "Be creative" without criteria
- Asking for code/solutions without paste of the actual context
- Treating the chat as memory — **summarize and start fresh** for new phases
- Accepting the first answer on high-stakes decisions without a skeptical follow-up

---

## Map to Cursor pack

| ChatGPT (this file) | Cursor cousin |
|---------------------|---------------|
| Daily five | `DAY_PROMPTS.md` #1–2, #4–5, #10 |
| Meta-prompt | `DAY_PROMPTS.md` § Meta · `INTENT_EXPAND.md` |
| Deep review (long) | `PROJECT_REVIEW.md` (Mode D) |
| Next actions (long) | `EXECUTION_ROADMAP.md` (Mode C) |
| Import ChatGPT export | `EXTRACT_CHAT_EXPORT_PROMPT.md` |

Use **Cursor** for repo work with seats and modes. Use **ChatGPT** for general thinking, drafting, and learning — same habits, different surface.

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-09-06 | In-chat delivery | General prompts + all-use-case cheat sheet (chat-only) |
| 2026-09-09 | Landed `optional/CHATGPT_PROMPTS.md` | Durable kit + Custom Instructions block; reverses 2026-09-06 "not in pack" for this slice |
