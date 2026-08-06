# Cursor model seats v0

**Status:** portable operator note  
**Audience:** any machine / any project in Cursor IDE  

**Role:** How to pick models in Cursor without model-shopping. Optimize for **finishing correct work**, not “smartest on the leaderboard.”

**Behavior per seat (strengths / weaknesses / handoffs):** [`MODEL_SEAT_PLAYBOOKS.md`](MODEL_SEAT_PLAYBOOKS.md) — open chats with `Seat: …`.

Copy these notes between machines. Exact vendor labels will change; **roles should not**.

---

## Bottom line

| Standing seats | Default **3**. Hard cap **4**. Never **5** standing. |
| -------------- | ---------------------------------------------------- |
| Win condition  | Close loops correctly under review where it matters  |
| Anti-pattern   | Three copies of one lab; five models “just in case”  |

Diversity of **failure modes** beats stacking the same “best” model three times.

---

## Standing seats (Cursor mode)

Think team roles, not architecture theater:

| Seat | Job | Current tissue (example) | When to open this chat |
|------|-----|--------------------------|------------------------|
| **Project Engineer** | Plan → edit → test → fix | GPT-5.6-class | **Default** — most work |
| **Senior Reviewer** | Regret-pass; design forks; scary diffs | Opus-class | Before irreversible changes; after a messy spike |
| **Pair / Finisher** | Close stalled multi-file agent loops | Kimi-class | Agent stopped halfway; long refactor won’t finish |

### Why these three

- **Engineer** turns intent into working structure across heterogeneous surfaces.
- **Reviewer** notices “this works, but six months from now you will regret it” — not because every design must start here.
- **Finisher** covers the Cursor bottleneck: loops that lose context mid-edit, not missing philosophy on every PR.

Architecture may **emerge from implementation attempts**. The Reviewer is not a mandatory design-first gate on every feature. Silent “rewrite the project’s laws” still needs the Reviewer.

---

## Temporary specialists (not standing seats)

| Need | Tissue (example) |
|------|------------------|
| Huge repo / mega-context archaeology | Gemini-class (**Archivist**) |
| Contradiction hunting / hard invariants / nasty state bugs | R1-class (**Attacker**) |
| Cheaper mid-tier review or alternate draft | Sonnet-class |

**Promote a 4th standing seat** only after the same gap bites ~three times in a week **and** you can say in one sentence when that chat opens. Otherwise keep it on-call.

**Hard ceiling:** four named standing roles. A fifth model is a one-off spike chat — close it when done.

---

## Ceremony vs speed

| Situation | Process |
|-----------|---------|
| Typos, small fixes, well-scoped features | Engineer + tests + your skim |
| Auth, data deletion, public APIs, scary refactors | Engineer implements → Finisher if stuck → Reviewer on the diff |
| “This can’t happen” / racey control flow | On-call Attacker (R1-class), then back to Engineer |

**Rule:** author ≠ sole reviewer on **irreversible** changes. Ordinary features do not need dual-model theater.

---

## Operating rules that survive model churn

1. **Bind process to roles**, not brands. When the vendor changes, swap tissue behind Engineer / Reviewer / Finisher — do not rename the workflow.
2. **Artifacts beat vibes** — tickets, ADRs, tests, or a one-line “what we will not do.” Reviewers check compliance, not taste alone.
3. **Eval outranks opinion** — failing tests / smokes win over a model’s “LGTM.”
4. **No five standing seats** — decision tax becomes the bottleneck.
5. **Re-bake occasionally** — same three hard tasks; promote/demote by role fit, not hype.

---

## Anti-patterns

- Three GPTs or three Claudes (correlated blind spots).
- Opus design-first on every task (kills velocity; invents bureaucracy).
- R1 on every PR (Attacker is a specialist, not a daily driver here).
- Model-shopping every prompt instead of defaulting to Engineer.
- Treating the Finisher as a second Reviewer (both just “make progress”).

---

## Quick picker

```text
Default work          → Project Engineer (GPT-class)
Stuck mid-refactor    → Pair / Finisher (Kimi-class)
Scary / irreversible  → Senior Reviewer (Opus-class)
Whole-tree archaeology→ Gemini (temporary)
Prove it can’t happen → R1-class (temporary)
```
