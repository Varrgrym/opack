# Spec → build (PRP + examples)

**Status:** active consolidated kit · 2026-08-08  
**Archives:** `archive/PRP_TEMPLATE.md` · `EXAMPLES_CONVENTION.md`  
**Use when:** a named feature needs durable intent → plan → execute  
**NOT:** Layer A · every tiny fix

---

## Flow

```text
INITIAL (intent + examples + docs + non-goals)
    → PRP (research + plan + DoD / BAR)
    → execute (Engineer; Reviewer on scary)
    → validate BAR → stop or FIC and continue
```

Gauntlet / polish loops only **after** MVP.

---

## Examples pin

Treat reusable snippets as **hard context**:

| Do | Don’t |
|----|--------|
| Keep `examples/` (or fixtures/patterns) | Assume the model “knows” your stack |
| Point at specific example paths in INITIAL/PRP | Dump the whole repo as “examples” |
| Prefer small real snippets from *this* codebase | Giant unrelated tutorials |

**Agent paste:** Before implementing, read listed example paths and match patterns unless PRP overrides. Cite which example you followed. If none listed on a non-trivial task, say so and find the closest in-repo pattern before inventing.

---

## INITIAL (paste)

```markdown
## FEATURE
<capability, constraints, non-goals>

## EXAMPLES
<paths under examples/ or equivalent>

## DOCUMENTATION
<in-repo docs, APIs>

## OTHER CONSIDERATIONS
<gotchas; fail-closed; what NOT to do>
```

---

## PRP skeleton (dated file)

```markdown
# PRP: <feature-name>

## Goal & success criteria (BAR)
- …

## Context to load (must read)
- …

## Examples to match
- …

## Plan (smallest slices)
- …

## DoD / stop
- …

## What we will NOT do
- …
```

Execute with `Seat: Engineer`. Scary landings → `Seat: Reviewer`.
