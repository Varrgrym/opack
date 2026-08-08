# Cursor model seats v0

**Status:** portable operator note · tissue lock **2026-08-08**  
**Audience:** any machine / any project in Cursor IDE  

**Role:** How to pick models in Cursor without model-shopping. Optimize for **finishing correct work**, not “smartest on the leaderboard.”

**Behavior per seat (strengths / weaknesses / handoffs):** [`MODEL_SEAT_PLAYBOOKS.md`](MODEL_SEAT_PLAYBOOKS.md) — open chats with `Seat: …`.

Copy these notes between machines. Exact vendor labels will change; **roles should not**.

**Pin:** Named seats are **jobs**, not forever-brands. When a stronger model appears for a job, **swap tissue** (update the lock table) — do not invent a sixth seat or rename the workflow. Keep the five roles in mind even when idle.

---

## Bottom line

| Standing seats | Default **3**. Hard cap **4**. Never **5** standing. |
| -------------- | ---------------------------------------------------- |
| Roster size | **5 named jobs** available; **active ≤3** per task (often 1–2) |
| Win condition  | Close loops correctly under review where it matters  |
| Anti-pattern   | Three copies of one lab; five models “just in case”  |

Diversity of **failure modes** beats stacking the same “best” model three times.

**Active set rule:** declare which seats are active for the task; the rest stay **idle** (do not invent work for them). Not “must use three” — **at most three**; one is often enough.

---

## Locked tissue (Cursor picker) — 2026-08-08

*Snapshot, not scripture.* Re-bake when the same hard tasks show a better fit. Roles below stay fixed.

| Seat (role — durable) | Model (tissue — replaceable) | Variant | Standing? |
|------|----------------|---------|-----------|
| **Project Engineer** | GPT-5.6 Sol | Medium daily; High / Extra High if stuck | Yes — default |
| **Senior Reviewer** | Claude Opus 5 | **High** (thinking) | Yes |
| **Pair / Finisher** | Kimi K3 | **Max** (High if Max is overkill) | Yes |
| **Archivist** | **Gemini 3.1 Pro** | — | On-call only |
| **Attacker** | **Grok 4.5** | **High** | On-call only |

### Decision log (what happened)

| Date | Decision | Why |
|------|----------|-----|
| 2026-08-08 | Five **jobs** kept; standing spine remains Engineer / Reviewer / Finisher | Catalog ≠ five always-on chats |
| 2026-08-08 | Active ≤3; declare idle seats | Avoid seat inflation; idle ≠ backlog |
| 2026-08-08 | Attacker tissue: **Grok 4.5 High** (not DeepSeek R1) | R1 unavailable in operator’s Cursor picker |
| 2026-08-08 | Archivist tissue: **Gemini 3.1 Pro** (not 3.6 Flash) | Flash-only High not shown; Pro better for map/synthesis; Flash = budget fallback only |
| 2026-08-08 | Archivist protocol tightened | named question → cite paths → compress → hand off (mandatory on Flash) |
| 2026-08-08 | Engineer / Reviewer / Finisher left on GPT-5.6 Sol / Opus 5 High / Kimi K3 Max | Still strongest *job fits*; re-bake by hard tasks, not hype |
| 2026-08-08 | Roles durable; tissue replaceable | New models → swap lock table; do not add seats or rename jobs |

**Fallback:** Archivist → Gemini 3.6 Flash only if Pro missing — then **mandatory** tight loop: named question → cite paths → compress → hand off (see playbook). Attacker → Opus 5 High *in Attacker seat* only if Grok missing (role ≠ second Reviewer).

---

## Standing seats (Cursor mode)

Think team roles, not architecture theater:

| Seat | Job | Locked tissue | When to open this chat |
|------|-----|---------------|------------------------|
| **Project Engineer** | Plan → edit → test → fix | GPT-5.6 Sol | **Default** — most work |
| **Senior Reviewer** | Regret-pass; design forks; scary diffs | Claude Opus 5 High | Before irreversible changes; after a messy spike |
| **Pair / Finisher** | Close stalled multi-file agent loops | Kimi K3 Max | Agent stopped halfway; long refactor won’t finish |

### Why these three

- **Engineer** turns intent into working structure across heterogeneous surfaces.
- **Reviewer** notices “this works, but six months from now you will regret it” — not because every design must start here.
- **Finisher** covers the Cursor bottleneck: loops that lose context mid-edit, not missing philosophy on every PR.

Architecture may **emerge from implementation attempts**. The Reviewer is not a mandatory design-first gate on every feature. Silent “rewrite the project’s laws” still needs the Reviewer.

---

## Temporary specialists (not standing seats)

| Need | Locked tissue |
|------|----------------|
| Huge repo / mega-context archaeology | **Gemini 3.1 Pro** (**Archivist**) |
| Contradiction hunting / hard invariants / nasty state bugs | **Grok 4.5 High** (**Attacker**) |
| Cheaper mid-tier review or alternate draft | Sonnet-class (not a named seat) |

**Promote a 4th standing seat** only after the same gap bites ~three times in a week **and** you can say in one sentence when that chat opens. Otherwise keep it on-call.

**Hard ceiling:** four named standing roles. Fifth job (Archivist or Attacker) stays on-call — close the spike when done.

---

## Ceremony vs speed

| Situation | Process |
|-----------|---------|
| Typos, small fixes, well-scoped features | Engineer + tests + your skim |
| Auth, data deletion, public APIs, scary refactors | Engineer implements → Finisher if stuck → Reviewer on the diff |
| “This can’t happen” / racey control flow | On-call Attacker (Grok 4.5 High), then back to Engineer |

**Rule:** author ≠ sole reviewer on **irreversible** changes. Ordinary features do not need dual-model theater.

---

## Operating rules that survive model churn

1. **Bind process to roles**, not brands. When the vendor changes, swap tissue behind Engineer / Reviewer / Finisher / Archivist / Attacker — do not rename the workflow or grow the roster.
2. **Artifacts beat vibes** — tickets, ADRs, tests, or a one-line “what we will not do.” Reviewers check compliance, not taste alone.
3. **Eval outranks opinion** — failing tests / smokes win over a model’s “LGTM.”
4. **No five standing seats** — five jobs on the menu; ≤3 active per task.
5. **Re-bake occasionally** — same three hard tasks; promote/demote **tissue** by role fit, not hype. The seat name stays.

---

## Anti-patterns

- Three GPTs or three Claudes (correlated blind spots).
- Opus design-first on every task (kills velocity; invents bureaucracy).
- Attacker on every PR (specialist, not daily driver).
- Model-shopping every prompt instead of defaulting to Engineer.
- Treating the Finisher as a second Reviewer (both just “make progress”).
- Spinning idle seats because they exist on the roster.

---

## Quick picker

```text
Default work          → Project Engineer — GPT-5.6 Sol (Medium / High)
Stuck mid-refactor    → Pair / Finisher — Kimi K3 Max
Scary / irreversible  → Senior Reviewer — Claude Opus 5 High
Whole-tree archaeology→ Archivist — Gemini 3.1 Pro (temp)
Prove it can’t happen → Attacker — Grok 4.5 High (temp)
```
