# Examples convention

**Status:** decided pin · thin kit  
**Use when:** any feature build or PRP; reduces hallucination of APIs/patterns  
**Companion:** `PRP_TEMPLATE.md` · Cole CE intro (examples folder as hard context)

---

## Pin

Treat **reusable snippets / prior patterns** as first-class context — not optional flavor.

| Do | Don’t |
|----|--------|
| Keep an `examples/` dir (or project-equivalent: `fixtures/patterns/`, `docs/examples/`) | Assume the model “knows” your stack from vibes |
| Point the agent at specific example paths in INITIAL/PRP/prompts | Dump the whole repo as “examples” |
| Prefer small, real, working snippets from *this* codebase or approved past work | Paste giant unrelated tutorials |

---

## Agent instruction (paste)

```text
Before implementing, read the listed example paths and match their patterns
unless the PRP explicitly overrides them. Cite which example you followed.
If no examples are listed and the task is non-trivial, say so and ask or search
the repo for the closest existing pattern before inventing a new one.
```

---

## Overlay tip

If this bites twice in a project, add under `OPERATOR_WORKFLOW.md` Repeated tasks:

> Feature work: always list `examples/` (or equivalent) paths in the ask or PRP.
