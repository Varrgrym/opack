# Seat prompts — short openers per role

**Status:** active · 2026-08-20 · seats companion pasteable  
**Job:** give each seat a small menu of pasteable openers — compose with Mode A–D / Audit / Explore / day prompts  
**NOT:** a second Layer A · five mega-prompts · Mode E · replace `MODEL_SEAT_PLAYBOOKS.md`  
**Companion:** [`MODEL_SEAT_PLAYBOOKS.md`](MODEL_SEAT_PLAYBOOKS.md) (behavior) · [`CURSOR_MODEL_SEATS.md`](CURSOR_MODEL_SEATS.md) (picker)  
**Install:** `--with-seats` → `docs/` (with seats docs)

---

## How to use

1. Pin the model for the seat (picker).  
2. Open with `Seat: …` (required).  
3. Paste **one** opener from that seat’s menu.  
4. Compose with a mode kit when needed (e.g. Reviewer + `PROJECT_REVIEW.md`).  
5. Hand off — do not self-promote mid-chat.

**Rule:** Seat = who may think how. Mode = what kind of analysis is allowed. Keep them separate.

---

## Engineer — GPT-5.6 Sol (default)

### E1 — Implement the slice

```text
Seat: Engineer
Implement only the named slice. Smallest change that meets DoD.
Do not unlock adjacent refactors. Fail-closed on live/secrets.
Leave: what changed · how to verify · what you did NOT do.
DoD: <observable proof>
Slice: <one capability / fix>
```

### E2 — Smoke / verify

```text
Seat: Engineer
Verify the claimed change. Run relevant tests/entry points when practical.
Reading ≠ working. Report: verified · failed · not run (why).
Do not expand scope. Fix only if verification fails and the fix stays inside the named DoD.
Claim: <what should be true>
```

### E3 — Handoff packet

```text
Seat: Engineer
Produce a handoff packet only (no new design):
- Goal / DoD
- Done
- Not done
- How to verify
- Risks / scary bits → recommend Reviewer if needed
- Stuck loop? → recommend Finisher
Stop after the packet unless I ask to continue.
```

### E4 — Narrow DoD only

```text
Seat: Engineer
Refuse scope bloom. Implement strictly inside:
DoD: <one observable outcome>
NOT: <explicit non-goals>
If the ask requires architecture rewrite or irreversible change, stop and hand to Reviewer with a one-line packet.
```

**Compose often with:** `SPEC_BUILD.md` · `EXECUTION_ROADMAP.md` · Mode A brief · day #5/#10

---

## Reviewer — Claude Opus 5 High

### R1 — Regret-pass

```text
Seat: Reviewer
Regret-pass only. Do not bulk-implement.
Ask: will we regret this in six months? Silent law-rewrite? Complexity without leverage?
Verdict: approve / narrow / reject + concrete must-fixes.
Evidence over vibes. Author ≠ you on irreversible when possible.
Target: <diff / plan / PRP path>
```

### R2 — Approve / narrow / reject

```text
Seat: Reviewer
Return only: APPROVE | NARROW | REJECT
For NARROW/REJECT: must-fix list (observable), what NOT to do, confidence High/Medium/Low.
Do not redesign the whole system. Do not rubber-stamp.
Subject: <PR / plan / claim>
```

### R3 — Never-build / restraint

```text
Seat: Reviewer
Restraint litmus:
1) Belongs in this repo’s purpose?
2) Can an existing piece absorb it?
3) Gap = capability, or integration/docs/config?
4) Would do nothing / archive / exercise win?
Recommend: build / polish / consolidate / stop — with confidence.
Proposal: <feature or direction>
```

### R4 — Scary-diff checklist

```text
Seat: Reviewer
Scary-diff checklist (no implementation):
- Blast radius / irreversibility
- Auth / secrets / data migration / public API
- Doc↔code contracts broken?
- Tests that actually prove the risk surface
- Preserve / do-not-touch violations
Verdict + must-fixes. Flag human confirmation where blast is high.
Diff/scope: <paths or PR>
```

**Compose often with:** `PROJECT_REVIEW.md` · `REPOSITORY_AUDIT.md` · Mode D · day #2

---

## Finisher — Kimi K3 Max

### F1 — Resume stuck loop

```text
Seat: Finisher
Resume from the stuck state. Finish the NAMED DoD only.
Do not re-litigate architecture. Do not widen scope to feel productive.
Report honestly what remains unfinished.
Stuck context: <what was in flight>
DoD: <observable>
```

### F2 — Finish named DoD

```text
Seat: Finisher
Close this DoD. Prefer completing tests/smokes over new design.
Stop when DoD is met — do not invent follow-on work.
If scary after done → hand to Reviewer; do not self-LGTM irreversible.
DoD: <observable>
```

### F3 — No scope widen

```text
Seat: Finisher
Hard constraint: zero scope expansion.
Allowed: finish open edits/tests for the named DoD.
Forbidden: new features, drive-by refactors, “while I’m here.”
If blocked on design → hand to Engineer with a one-line blocker.
DoD: <observable>
```

**Compose often with:** Engineer handoff packet · day #10 (done?)

---

## Archivist — Gemini 3.1 Pro (on-call)

### A1 — Named archaeology (default)

```text
Seat: Archivist
Question: <one named archaeology question>
Do: cite paths → compress map → contradictions → unknowns → next seat.
Do not edit. Do not wander. Prefer ≤1 page equivalent.
Tissue: Gemini 3.1 Pro (Flash fallback = same protocol, mandatory).
```

### A2 — Doc ↔ code drift spike

```text
Seat: Archivist
Question: Where do docs/ADRs/READMEs disagree with implementation for <topic>?
Cite paths. Table: claim · doc path · code path · verdict (match/drift/unknown).
Compress → hand off to Reviewer (contracts) or Engineer (fix). Do not edit.
```

### A3 — Contradiction map

```text
Seat: Archivist
Question: What contradictions exist about <topic> across repo + docs?
List contradictions with paths. No narrative sprawl. No second spiral.
Compress → recommended next seat. Stop.
```

### A4 — “What’s already here” map

```text
Seat: Archivist
Question: What already exists for <capability>, and where?
Map entry points + owners + duplicates. Park adjacent findings as one-liners.
Do not implement. Hand off to Engineer or Reviewer.
```

**Compose often with:** Mode B (`DESIGN_NOTEBOOK.md`) for idea streams · Mode D only if the named question *is* that review

---

## Attacker — Grok 4.6 High (on-call)

### K1 — Falsify the claim

```text
Seat: Attacker
Falsify: <claim>
List failure modes, invariants, and concrete conditions under which it breaks.
Prefer counterexamples over abstract worry. Separate logic bugs vs policy/permission bugs.
Do not bulk-implement. Hand fixes to Engineer; policy/regret to Reviewer.
Stop when the attack note is enough — do not block forever.
```

### K2 — Invariant hunt

```text
Seat: Attacker
Name the invariants that must hold for <system/path>.
For each: how it breaks · how we’d detect break · severity.
Good-enough stop: list top invariants only; park the rest.
```

### K3 — Nasty state / race

```text
Seat: Attacker
Hunt nasty state: races, re-entrancy, partial failure, double-apply, stale cache, TODCTOU — as applicable to <path>.
Concrete scenarios only. No production patches alone — Engineer+tests for fixes.
```

### K4 — Good-enough stop

```text
Seat: Attacker
Attack until diminishing returns. Then STOP.
Output: (1) still-plausible breaks (2) already-ruled-out (3) what would change your mind (4) handoff seat.
Do not become a permanent blocker. Subject: <claim or change>
```

**Compose often with:** day #4 skeptical · Reviewer R1 after attack note

---

## Quick compose matrix

| Need | Seat opener | Mode / kit |
|------|-------------|------------|
| Model routing / per-cent | A–E in `INTELLIGENCE_PER_CENT.md` | Attacker D before pin changes |
| Build a slice | E1 / E4 | `SPEC_BUILD` · after `PLAN_APPROVAL` |
| Week plan | E3 then Engineer+C | `EXECUTION_ROADMAP` · or `PLAN_APPROVAL` |
| Full review | R1 | `PROJECT_REVIEW` |
| Defect systems | R1 / R4 | `REPOSITORY_AUDIT` |
| Status takeover | E3 or R1 | `OWNERSHIP_TAKEOVER` |
| Idea notebook | A1 or Engineer | `DESIGN_NOTEBOOK` |
| Possibility space | R1 or Engineer | `EXPLORATORY_ANALYSIS` |
| Deep research (no edits) | A1 / Reviewer | `RESEARCH_REPORT` · `PHASE_PIPELINE` |
| Plan then stop | Engineer | `PLAN_APPROVAL` |
| Stuck agent | F1 / F2 | — |
| Mega-map | A1–A4 | — |
| Prove it can’t | K1–K4 | day #4 |

---

## Anti-patterns

- Using Finisher as a second Reviewer  
- Attacker on every typo  
- Archivist without a named question  
- Engineer self-LGTM on scary diffs  
- Pasting three seat openers in one chat  

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-20 | Initial seat opener menu | Playbooks had behavior; only Archivist had a paste — give each seat a short menu |
