# Chunking (context + task)

**Status:** decided · optional kit  
**Use when:** project or task exceeds reliable single-pass reasoning  
**Core idea:** Break large information or work into smaller **meaningful** units the agent can process reliably, while preserving enough context between units.  
**Pin:** **Chunk for processing, never for understanding.** Segment to manage load; reconstruct relationships before project-level conclusions.

---

## What chunking is not

Not “split every N tokens.”  
Good chunks follow **semantic boundaries**: function · module · API contract · decision · document section · workflow · coherent subsystem.

---

## 1. Context chunking

Bad:

```text
Entire project → huge context → reason about everything
```

Better — meaningful slices, then upward synthesis:

```text
Architecture → Core code → Interfaces → Tests → Docs → Config
```

Each slice is a coherent unit, not an arbitrary window.

---

## 2. Task chunking

User goal → agent creates work units (prompt expansion / specification generation):

```text
Understand → Map → Intended behavior → Inspect impl → Intent ↔ impl
→ Errors → Gaps → Duplication → Complexity → Prioritize → Recommend → Verify
```

---

## 3. Large projects — investigate then synthesize

```text
PROJECT
  ├── STRUCTURE (code / docs / tests)
  └── PURPOSE (requirements)
        → per-chunk investigation
        → relationship map
        → project-level model
        → findings
```

**Bad chunking:** 20 folders → 20 unrelated summaries.  
**Good chunking:** 20 folders → understand each → relationships → one coherent model.

---

## 4. Opack investigation branch

When scope exceeds practical reasoning:

```text
USER PROMPT
  → INTERPRET INTENT
  → 5W1H
  → CONTEXT DISCOVERY
  → TOO LARGE?
        ├── No  → investigate directly
        └── Yes → CHUNK (semantic)
                  → INVESTIGATE CHUNKS
                  → CROSS-CHUNK ANALYSIS
                  → SYNTHESIS
                  → SPECIFICATION
                  → ACTION
                  → VALIDATION
```

Instruction shape:

> When the project exceeds practical reasoning scope, decompose into meaningful chunks, investigate each chunk, maintain a running model, and perform a **synthesis pass** before conclusions.

That makes context engineering **procedural**.

---

## 5. Recursive / hierarchical chunking

```text
Project
  ├── Subproject A → Module A1, A2, A3 → summary A
  ├── Subproject B → …
  └── Subproject C → …
        → project architecture (higher-level summaries)
```

Hold detail only where needed; roll summaries upward (hierarchical context management). Goal: **actually understand**, not pretend to.

---

## 5b. Frequent intentional compaction (FIC)

**Source note:** HumanLayer “advanced context engineering for coding agents” (steal name + rhythm; do not import their product stack). Related: Anthropic compaction / tool clearing / subagent isolation.

**Idea:** Brownfield agents often fail from **context pollution**, not “need a smarter model.” Deliberately compress and re-inject high-signal state throughout the session — not once at the end.

```text
work a slice
    ↓
compact (facts · paths · decisions · open unknowns · do-not-touch)
    ↓
re-inject compact context into the next slice
    ↓
repeat
```

| Do | Don’t |
|----|--------|
| Compress after meaningful progress (chunk, phase, or stuck point) | Carry every tool dump and dead alley forward |
| Keep: verified facts, paths, decided/NOT, stop criteria | Keep: raw transcripts, duplicate file dumps, speculation as fact |
| Subagents return **distilled** summaries (Archivist protocol) | Subagents return 20 unrelated folder essays |
| Pair with synthesis before project-level claims | Compact *away* relationships (violates the pin above) |

FIC is the **in-session rhythm**; semantic chunking is the **scope strategy**. Use both on large work.

---

## Warning — chunking can destroy context

Splitting `authentication.py` from `authorization.py` and `config/security.md` can yield locally sensible, globally wrong conclusions.

Requirements:

| Need | Why |
|------|-----|
| Cross-references | Adjacent contracts stay linked |
| Running model | Accumulated understanding across chunks |
| Synthesis pass | Project-level conclusions only after reconstruction |
| Authority marks | Which source of truth wins when chunks conflict |

---

## Operating rules

1. **Chunk for processing, never for understanding.**  
2. Prefer semantic boundaries over token quotas.  
3. Before project-level claims: cross-chunk analysis + synthesis.  
4. Prefer existing structure (folders, packages, docs) as first-cut chunks; refine when boundaries are wrong.  
5. Label chunk findings as local until synthesis elevates them.  
6. If synthesis contradicts a chunk conclusion, the synthesis wins — and record why.

---

## Companion kits

`UNIVERSAL_DEEP_REASONING.md` · `ADAPTIVE_TASK_EXPANSION.md` · `ANALYSIS_PROMPT_FORMATION.md` · `AI_WORKFLOW_STACK.md` · `EXTERNAL_READING.md`
