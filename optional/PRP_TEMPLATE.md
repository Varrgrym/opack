# PRP template (optional experiment)

**Status:** optional · not Layer A · promote to overlay Repeated tasks only after twice useful  
**Origin:** Cole-style Product Requirements Prompt (AI-facing plan), adapted for Cursor  
**Use when:** a named feature needs durable intent → plan → execute (not only in-chat expansion)  
**Companion:** `EXAMPLES_CONVENTION.md` · `AI_WORKFLOW_STACK.md` · `EXTERNAL_READING.md`

---

## Flow

```text
INITIAL.md (intent)
    ↓
generate / flesh out PRP (research + plan + DoD)
    ↓
execute PRP (Engineer; Reviewer on scary)
    ↓
validate BAR → stop or FIC and continue
```

---

## INITIAL (paste / file)

```markdown
## FEATURE
<specific capability, constraints, non-goals>

## EXAMPLES
<paths under examples/ or equivalent — required if any exist>

## DOCUMENTATION
<links, in-repo docs, APIs>

## OTHER CONSIDERATIONS
<gotchas AI usually misses; fail-closed; what NOT to do>
```

---

## PRP skeleton (generate into a dated file)

```markdown
# PRP: <feature-name>

## Goal & success criteria (BAR)
- …

## Context to load (must read)
- examples/…
- docs/…
- relevant modules: …

## Current vs desired shape
- Now: …
- Desired files/modules: …

## Implementation steps
1. … (validation after each)
2. …

## Tests / verification
- …

## Risks & do-not-touch
- …

## Stop when
- BAR met; no scope bloom
```

---

## Execute checklist

1. Open `Seat: Engineer` with PRP path in context.  
2. Implement only named DoD.  
3. Run tests/smokes listed in BAR.  
4. Scary / irreversible → `Seat: Reviewer` on the diff.  
5. Stuck mid multi-file → `Seat: Finisher` (named DoD only).  
6. FIC between phases if long.

**NOT:** start with a Gauntlet wow-loop instead of a PRP. Gauntlet (if used) is polish **after** PRP execution leaves a working MVP.
