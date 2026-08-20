# Design Notebook — Capture / Organize (Mode B engine)

**Status:** active · 2026-08-20 · workflow-lab pasteable  
**Job:** turn a dense idea/status stream into a coherent notebook — concepts, decisions, parks, leverage  
**NOT:** code audit · Mode D architecture review · execution roadmap · feature wishlist  
**Phrase family:** capture / notebook / organize / extract what is useful (ideas)  
**Complements:** Extract dumps (`EXTRACT_AND_ORGANIZE.md`) · **this** (concept notebook) · Plan (`EXECUTION_ROADMAP.md`) · Explore (`EXPLORATORY_ANALYSIS.md`)  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

Paste when material is **idea-dense** and needs structure: chat dumps, design streams, mixed decided/open items — before building or roadmapping.

**Seat hint:** Engineer or Archivist (on-call for mega-maps) · Multitask **off** · Plan **no**.

**Philosophy:** Coherence over feature count. Label relentlessly. Park without guilt. Do not silently promote speculation to decided.

---

## Paste

```text
# Design Notebook — Mode B

Organize this material into a design notebook.

This is not a code audit, not a full architecture review, not an execution roadmap, and not a possibility-space expansion (unless the material itself is exploratory — then still organize first).

Your job: group by concept, label certainty, separate decided from refused, park with reasons, and close with leverage-ordered next steps.

Do not invent requirements to fill the notebook.
Do not turn every open question into a build.
Skip empty sections. Depth over coverage.
Interesting ≠ valuable.

## Operating rules (read first)

* Group by **concept**, not by chronology or file name, unless chronology is the concept.
* Label every item: fact · observation · conclusion · assumption · open question · recommendation · **decided** · **NOT (refused)** · parked.
* Never silently upgrade assumption → decided.
* Prefer consolidation of duplicate ideas into one node with aliases.
* Prefer existing homes over new trees.
* If dumping from chat/export: filter noise; Keep personal ideas; reject only PII/secrets/expired ops noise (`EXTRACT_AND_ORGANIZE` if raw dump).
* Recommendations get confidence: High / Medium / Low.
* End with next-by-leverage, not a giant backlog.

---

## 0. Runtime

Mode=B · Seat=Engineer (or Archivist) · Multitask=off · Plan=no

State the source material (repo paths, paste, conversation) and what you ignored as noise.

---

## 1. Scope & Intent

* What question or stream is being organized?
* What is in-bounds / out-of-bounds for this notebook?

---

## 2. Concept Map

Group into a small number of concepts (prefer ≤8 top-level; split only when navigation hurts).

For each concept:
* One-line definition
* Key items (labeled)
* Dependencies on other concepts
* Short vs long horizon

---

## 3. Decided

Explicit locks only — with why (Keep+why when a real lock).

---

## 4. NOT (Refused)

Explicitly refused directions — with why. Protect against re-litigation.

---

## 5. Parked

Parked items — with why parked and what would unpark them.

---

## 6. Open Questions

Real unknowns. Do not invent questions for coverage.
Mark which block progress vs which are merely interesting.

---

## 7. Assumptions

Unstated or soft assumptions. Note which are load-bearing.

---

## 8. Dependencies

* Concept → concept deps
* External blockers (human decision, evidence, other repos)

---

## 9. Short vs Long

* Near-term relevant
* Long-horizon / visionary (do not smuggle into Now)

---

## 10. Gaps

Genuine missing structure, definitions, or decisions — not optional features.

---

## 11. Close — State · Backlog · Parked · Gaps · Next by Leverage

### State
One honest paragraph.

### Backlog (cap)
Only items that survived: necessary · evidenced · not absorbed by an existing concept. Cap ~7. Else you are not prioritizing.

### Parked
Pointer list.

### Gaps
Pointer list.

### Next by leverage
Ordered ≤5. For each: action · why · confidence · observable done · effort/leverage if useful.

If execution sequencing is needed, hand off to Execution Roadmap.
If possibility space is needed, hand off to Exploratory Analysis.
If the repo itself must be diagnosed, hand off to Audit / Project Review.

---

## Final Questions

1. What are the 3–5 load-bearing concepts?
2. What is decided that must not be reopened casually?
3. What is refused that must stay refused?
4. What open question most blocks progress?
5. What should be parked without guilt?
6. What is the single highest-leverage next move?
7. Did this notebook reduce chaos, or merely reformat it?
```

---

## Phrase lock

```text
Design notebook / organize this.
Mode B — follow optional/DESIGN_NOTEBOOK.md.
Group by concept. Label decided · NOT · parked. Next by leverage. No fake backlog.
```

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-20 | Initial Mode B engine | AGENTS outline only → peer pasteable |
