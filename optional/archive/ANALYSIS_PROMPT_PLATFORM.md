# Analysis prompt formation

**Status:** decided · optional kit (not Layer A)  
**Use when:** composing Cursor prompts that inspect a large codebase and decide what to do next  
**Pairs with:** `AGENTS.md` review Modes A/C/D (output shapes) · this file (input compiler)  
**NOT:** a second constitution · idea-maximizing “what do you think?” reviews

---

## Meta-rules

1. A good project-analysis prompt does **not** ask the AI for more ideas. It gives a **disciplined investigation procedure** that discovers what is true, separates problems from preferences, challenges unnecessary work, prioritizes what matters, and establishes when work is complete.
2. Goal = **quality of the next decision**, not volume of recommended work.

**Core sequence:** Inspect → establish facts → compare against intent → identify gaps → prioritize → recommend action → identify what should **NOT** be done.

---

## Investigation ladder

```text
1. UNDERSTAND   What is this project?
2. INVENTORY    What actually exists?
3. VERIFY       What actually works?
4. TRACE        How do the pieces connect?
5. COMPARE      Does implementation match intended vision?
6. FIND         Bugs, gaps, duplication, dead ends, inconsistencies
7. CONSOLIDATE  What can be simplified or removed?
8. PRIORITIZE   What matters most?
9. CHALLENGE    Should we actually do those things?
10. DECIDE      Build / fix / consolidate / archive / exercise / stop
11. MILESTONE   Next concrete stopping point + STOP evidence
```

---

## Formation rules (1–12)

1. **Role + objective** — job and win condition, not just a topic.
2. **Explicit scope** — code, docs, tests, config, history; may read beyond named files to verify claims.
3. **Facts before judgment** — exists → works → doesn’t → intended → differs. Separate observation from interpretation; verify docs against implementation.
4. **Doc ↔ reality drift** — README / architecture / TODO / comments vs code vs tests.
5. **Multi-axis gaps** — capability · incomplete impl · docs · tests · unclear boundaries · unenforced assumptions · conceptual≠operational · operational≠documented · purpose-gap.
6. **Duplication / consolidation (with brake)** — hunt overlap; no merge-on-resemblance; state gain / loss / justification.
7. **What NOT to change** — stable code, historical artifacts, useful experiments, intentional redundancy, proven interfaces, parked work, boundaries that must stay separate. Permission to say “don’t touch this.”
8. **Fix vs build taxonomy** — (1) broken (2) overcomplicated (3) incomplete-but-intended (4) improve existing (5) genuinely new.
9. **Challenge the premise** — proposed direction is a hypothesis; valid answers include do nothing / consolidate / archive / stop.
10. **Priorities, not TODO dumps** — P0–P3 + Do-not, each with reason. Smallest actions → largest purpose impact. Impact ≠ file count / interestingness.
11. **Stopping points** — each phase: evidence that work is complete enough to stop.
12. **Should we progress at all?** — build X / first consolidate Y / good enough—exercise / docs-coherence bottleneck / belongs elsewhere / pause for human decision.

---

## Supporting controls

| Control | Instruction |
|---------|-------------|
| Evidence | Important claims cite files / modules / tests / docs |
| Certainty | Label verified · strongly inferred · uncertain |
| Shape maps | After inspection only; diagram *as-is*; label intent separately |
| Anti-sycophancy | Current arch, operator direction, prior reviews = hypotheses; contradict explicitly when obsolete |
| Don’t wander | Stay in stated purpose unless purpose itself is flawed |

---

## Pasteable skeleton

```text
ROLE: Senior codebase reviewer.
OBJECTIVE: Actual state vs intended design; gaps; unnecessary complexity;
           highest-value next actions; what must NOT be done.

SCOPE: code, docs, tests, config, relevant history.
       Read beyond named files when needed to verify claims.

PROCEDURE: follow the investigation ladder (UNDERSTAND → … → MILESTONE).

CONSTRAINTS:
- Facts before judgment; label verified / inferred / uncertain.
- Evidence for important claims.
- Diagram actual architecture only after inspection; label intent separately.
- Do not maximize recommended work; maximize next-decision quality.
- Stay within stated purpose unless the purpose itself is flawed.

CLOSE WITH:
Where are we? Accomplished? Wrong? Missing? Simplify? Preserve?
Stop doing? Next? Not next? Milestone complete when…?
```

---

## Decision close (required)

Every serious analysis prompt should force answers to:

- Where are we?
- What have we accomplished?
- What’s actually wrong?
- What’s missing?
- What can be simplified?
- What should we preserve?
- What should we stop doing?
- What should happen next?
- What should *not* happen next?
- What proves the next milestone is complete?

---

## Relation to Layer A

| Mode | Role |
|------|------|
| **D** Architecture review | Closest output shape to this ladder |
| **A** Ownership takeover | Same spine; takeover framing |
| **C** Execution roadmap | Consumes ladder → DoD / stops / week |
| **B** Design notebook | Captures doctrine; does not replace inspection |

Install selectively; do not paste this whole kit into `AGENTS.md` or always-on digests unless the operator promotes a one-line reminder.

For short intents that should auto-expand (including automatic Who/What/Why/When/Where/How): see `UNIVERSAL_DEEP_REASONING.md` and `ADAPTIVE_TASK_EXPANSION.md`.  
Mode D cold-lead: `MODE_D_COLD_LEAD.md`. Feature build artifacts: `PRP_TEMPLATE.md` · `EXAMPLES_CONVENTION.md`. Paste index: `PASTEABLES_INDEX.md`.
