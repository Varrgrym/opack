# Intelligence per cent — model routing bundle

**Status:** active · 2026-09-04 · workflow-lab pasteable  
**Job:** pick model tissue by **outcomes per billing period**, not frontier hype or minimum $/token — with repeatable rituals, not vibes  
**NOT:** a leaderboard scraper · 373-model bake-off · Prompt-OS · auto-routing · replacing seat playbooks  
**Evidence:** thoughts `by-family/operator/intelligence-per-cent-eval.md` (reference impl) · attacker review 2026-09-04  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`  
**Companions:** `PROMPT_BUNDLES.md` (bundle row) · `SEAT_PROMPTS.md` · `RUNTIME.md` · `DAY_PROMPTS.md` (#2 · #4)

---

## One sentence

> **Shortlist from public benchmarks → filter to what your tool actually offers → prove with a small frozen experiment → pin tissue per seat — and measure rework, not tokens alone.**

---

## When to use this bundle

| Trigger | Open |
|---------|------|
| Monthly / new model generation | **B** List refresh |
| Before changing Engineer/Reviewer pins | **D** Attacker + gates check |
| First time or quarterly | **C** Experiment scorecard |
| Weekly during a credit squeeze | **E** Usage audit |
| Any routing/seats chat | **A** Session brief |

**Bundle sequence (default):** E (if squeezing) → B (refresh lists) → C (experiment) → D (challenge) → pin change or **STOP**.

**Stop when:** gates met + scorecard filled + one explicit pin decision — or **STOP** with “no change this cycle.”

---

## Portable slots (fill per project)

| Slot | Example (Cursor) | Your value |
|------|------------------|------------|
| `{{TOOL}}` | Cursor | |
| `{{PICKER}}` | Manual model dropdown in IDE | |
| `{{CHEAP_POOL}}` | Auto / Composer / local grunt | |
| `{{FRONTIER_POOL}}` | Manual frontier credits | |
| `{{BENCHMARK_SOURCE}}` | llm-stats.com or peer leaderboard | |
| `{{FIXTURE_ROOT}}` | `docs/fixtures/per-cent-eval/` or project path | |
| `{{BILLING_CYCLE}}` | Pro monthly reset date | |

**Reference implementation:** thoughts repo ships frozen fixtures at `by-family/operator/fixtures/per-cent-eval/` (`2026-09-04-v1`). Copy or adapt — do not require thoughts in every project.

---

## Doctrine (decided)

| Item | Call |
|------|------|
| Win metric | **Ship-worthy outcomes per billing period** — not max credit burn, not min $/token |
| “You get what you pay for” | **Yes** — problem is **budget exhaustion before reset**, not denying quality |
| B-team default | **OK** if runway lengthens **and** product DoD still moves |
| Leaderboard | **Filter only** — task experiment is tiebreaker |
| Rework | Hidden multiplier: `effective ≈ tokens × (1 + loops) + your time` |
| List C method | **Pareto + quality floor + experiment veto** — not pure score÷price |
| Five vendors on List A | **Parked v1** — prefer top 3 **in-picker** per bucket |

---

## Phase 0 — Shortlist (10–20 models)

1. Pull **10–20** rows from `{{BENCHMARK_SOURCE}}` (enough diversity; not entire table).  
2. Mark which appear in `{{PICKER}}` today (names drift — verify in UI).  
3. Operator picks **manual top N in-picker** (default N=3–5).  
4. Refresh monthly or on major release.

---

## List A — Ceiling (chunked buckets)

**v1: three buckets only** (expand after two stable months):

| Bucket | Benchmark axis | Seats |
|--------|----------------|-------|
| **Coding** | Coding arena / SWE-class | Engineer · Finisher |
| **Judgment** | GPQA / reasoning / regret | Reviewer · Attacker |
| **Synthesis** | Long-context / your Mode B prompt | Operator |

**Output:** top 1–3 **in-picker** per bucket. List A = ceiling reference, not daily driver.

**Parked:** per-vendor “best from X” · full seat×axis cross-product.

---

## List B — Cheapest (elimination)

1. Sort candidates **cheapest first** (blended $/M or your dominant cost axis).  
2. **CUT:** cheap but fails coding/grunt floor.  
3. **FLAG B-team:** almost ceiling quality, **<~half** frontier cost.  
4. **Local row:** effective cost ≈ electricity + operator time + babysitting.

---

## List C — Sweet spot

**Failure mode:** “best $/token on paper but dumb in practice.”

**Stack (all three):**

1. **Pareto frontier** — quality (y) vs price (x); non-dominated only. Separate frontier for coding vs judgment if needed.  
2. **Quality floor** — leaderboard percentile **and** grunt task pass (e.g. classify ≥7/8).  
3. **Experiment veto** — monthly frozen suite must confirm before pin promotion.

---

## Gates (before pin changes)

| Gate | Must have |
|------|-----------|
| **G1** Billing baseline | Cycle normal, or logged abnormal — don’t tune on glitch month |
| **G2** Frozen fixtures | Committed `{{FIXTURE_ROOT}}` + `FIXTURE_VERSION` |
| **G3** One scorecard | Full run on cheap pool + frontier control + B-team candidate |
| **G4** Eval scope | Written: operator-only vs product-native prompts |
| **G5** Usage log | ≥1 week: days-to-reset · pool feel · tissue · squeeze Y/N |

**Proceed to pin changes when G1–G3 met.** G4–G5 block **product** pin changes if scope includes product.

---

## Fixture spec (10 prompts)

Each project maintains **frozen** `PROMPT.md` per row. Same inputs every month.

| # | Seat | Class | Fixture contains |
|---|------|-------|------------------|
| 1 | Engineer | Refactor | ~40 LOC + tests |
| 2 | Engineer | Spec→code | Spec + scored examples |
| 3 | Engineer | Debug | Bug + failing test |
| 4 | Reviewer | Scary diff | Planted blocker diff |
| 5 | Reviewer | Regret | Design paragraph |
| 6 | Finisher | Unstick | Half-done multi-file |
| 7 | Operator | Synthesize | Unlabeled bullet dump |
| 8 | Attacker | Contradiction | Two conflicting policies |
| 9 | Archivist | Query | Small tree + “where is X?” |
| 10 | Cheap pool | Grunt | Classify/format; low verbosity |

**Scorecard columns:** Model · List · 1–10 pass · Ship (2,3,6) · Rework Σ · Notes · `FIXTURE_VERSION`.

**Product extension (G4):** add 2 prompts from real repo pain (e.g. game script diff, playtest checklist).

---

## Usage audit (weekly · 2 min)

| Field | Notes |
|-------|-------|
| Date | |
| Days to `{{BILLING_CYCLE}}` reset | |
| % pool left | if visible |
| Pool feel | OK / tightening / squeezed |
| Primary tissue | |
| Squeeze? | Y/N — first day mostly on cheap pool |
| Notable waste | vague prompt · frontier on grunt · fat thread |

**Squeeze alert:** >60% of period left but <25% frontier pool → front-loaded; shift B-team + cheap pool.

---

## Pasteable prompts

Replace `{{…}}` slots. Prefer **one prompt per chat**. TALK ONLY unless EXEC requested.

---

### A — Session brief

```text
Seat: {{SEAT}} · Multitask off.

Context: intelligence per cent — ship-worthy outcomes per {{BILLING_CYCLE}}, not latest frontier or min $/token.
Tool: {{TOOL}} · cheap pool: {{CHEAP_POOL}} · frontier: {{FRONTIER_POOL}} sparingly on named seats.

Framework (challenge if weak; cite optional/INTELLIGENCE_PER_CENT.md):
- {{BENCHMARK_SOURCE}} → 10–20 shortlist → in-picker top N
- List A buckets: coding · judgment · synthesis (ceiling only)
- List B: cheapest → CUT dumb-cheap → FLAG B-team
- List C: Pareto + floor + experiment veto
- Rework ≈ tokens × (1 + loops) + operator time
- Gates G1–G3 before pin changes

My question: {{QUESTION}}

Label: fact · observation · conclusion · recommendation · decided · NOT · parked.
```

---

### B — List refresh (monthly)

```text
TALK ONLY · optional/INTELLIGENCE_PER_CENT.md

Refresh model shortlist for {{TOOL}} tissue pins.

I will paste 10–20 rows from {{BENCHMARK_SOURCE}} and my {{PICKER}} list today.

Deliver:
1. List A v1 — top in-picker per bucket: coding · judgment · synthesis (max 3 total)
2. List B — cheapest order; tags CUT / B-TEAM FLAG
3. List C candidates — Pareto + floor (name floor you used)
4. One paragraph: what changed since last month

Do NOT recommend pin changes until gates G1–G3 are met.

Shortlist paste:
{{PASTE}}

In-picker today:
{{PASTE}}
```

---

### C — Experiment (scorecard)

```text
TALK ONLY · experiment mode · optional/INTELLIGENCE_PER_CENT.md

Monthly per-cent experiment. Frozen prompts at {{FIXTURE_ROOT}} — FIXTURE_VERSION: {{VERSION}}

Models this run: {{MODELS}} + {{CHEAP_POOL}} controls

For each model I paste outputs for prompts 1–10. Score pass/fail; rework loops; ship on 2,3,6.

Columns: Model | List | 1-10 | Ship | Rework Σ | Notes

After all models: recommend Engineer pin · Reviewer pin · B-team default — only if G1–G3 met.
If cheap pool ≈ frontier on 1–3, say whether squeeze is mood vs quality.

Confirm rubric, then wait for my first paste.
```

---

### D — Attacker (before pin change)

```text
Seat: Attacker · TALK ONLY · optional/INTELLIGENCE_PER_CENT.md

Challenge my model-routing change before I change tissue pins or B-team policy.

Proposed change: {{CHANGE}}

Deliver:
1. Right (evidence)
2. Wrong / overconfident
3. Improve (max 7, ordered)
4. Gates not met (G1–G5)
5. Verdict: proceed / scope fence / stop

Confounds: billing cycle · prompt waste · eval scope · self-graded rework · homework death (List A sprawl).
Do not agree because the framework sounds rigorous.
```

---

### E — Usage audit (weekly)

```text
TALK ONLY · optional/INTELLIGENCE_PER_CENT.md

Analyze my {{TOOL}} usage log for burn curve.

| Date | Days to reset | % left | Pool feel | Primary tissue | Squeeze? | Notable waste |
{{PASTE_ROWS}}

Deliver:
- Front-loaded frontier? (Y/N + evidence)
- First squeeze date vs cycle %
- Cheap pool: rationing or choice?
- Top 3 waste patterns (harness not “wrong model”)
- One recommendation for next week only — no new systems
```

---

## Router phrase locks

```text
Bundle: intelligence per cent — optional/INTELLIGENCE_PER_CENT.md — pick A/B/C/D/E from § Pasteable prompts.
```

```text
Per-cent experiment — FIXTURE_ROOT {{FIXTURE_ROOT}} — prompt C — optional/INTELLIGENCE_PER_CENT.md
```

```text
Challenge model pins — Seat: Attacker — prompt D — optional/INTELLIGENCE_PER_CENT.md
```

---

## Compose matrix

| Need | Prompt | Also |
|------|--------|------|
| Start routing chat | A | `RUNTIME.md` · `SEAT_PROMPTS.md` |
| Monthly shortlist | B | — |
| Score models | C | fixtures at `{{FIXTURE_ROOT}}` |
| Before pin change | D | day #4 skeptical |
| Credit squeeze week | E | then B if lists stale |
| Full project review | — | `PROJECT_REVIEW.md` — not this bundle |

---

## Anti-patterns

- Pin change without G1–G3  
- Pure score÷price List C  
- Monthly homework: 373 models × 10 prompts  
- Optimizing leaderboard while prompts stay vague (furnace)  
- B-team to save credits while product DoD stalls  
- One mega-prompt containing A–E  
- Treating Auto as a seat dispatcher  

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-09-04 | Initial bundle | Generalize thoughts per-cent eval + attacker review into opack pasteables A–E |
| 2026-09-04 | PROMPT_BUNDLES row · install.sh · SEAT_PROMPTS compose | Shipped workflow-lab kit |
