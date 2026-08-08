# Failure modes (prompt / agent)

**Status:** decided · optional half-pager  
**Use when:** a “good” prompt or session produces bad agent behavior — diagnose the *mode*, then fix the right layer  
**Companion:** `RUNTIME_CONTROL.md` · `AI_WORKFLOW_STACK.md` · `CHUNKING.md`

---

## Quick map

| Symptom | Likely failure | Fix layer |
|---------|----------------|-----------|
| Confident but wrong | README-only / no verify | Context + execution |
| Endless TODOs | Idea-max, no priority/stop | Spec + prioritization |
| Rebuilds working system | Taste refactor / premise unchallenged | Challenge + consolidate |
| Local fix, global break | Chunk without synthesis | Chunking pin |
| “Verified” without proof | False completion | Tool policy + honesty |
| Thrash / reopen solved | No stop / no running model | Stop + handoff |
| Five agents, no decision | Always-on multitask | Runtime control |
| Builder self-LGTMs scary diff | Wrong seat | Seat routing |
| Ignores stated purpose | Wandering / speculative arch | Don’t-wander |
| Asks 20 clarifying Qs | Under-used evidence | Resolve from repo first |
| Giant unrelated PR | No change chunking | Edit slices + gates |
| Looks busy, repo worse | Activity ≠ progress | Session close check |

---

## Classic modes (names to use in notes)

1. **README theater** — docs claim X; never checked code/tests.  
2. **Premature build** — jumped to implement before inventory/intent.  
3. **Sycophantic agreement** — treated operator proposal as proven.  
4. **Scope bloom** — intent expanded without gate.  
5. **False verification** — said tested/fixed; didn’t run or didn’t check.  
6. **Fragmented truth** — parallel or chunked work never synthesized.  
7. **Interestingness bias** — prioritized neat issues over purpose impact.  
8. **Infinite polish** — no stopping point; good-enough refused.  
9. **Seat collapse** — one model both builds and regret-passes.  
10. **Prompt-harder reflex** — failed context/spec/tools/eval; longer wording won’t save it.  
11. **Slop rework** — shipped low-signal code that next week’s agent “fixes” again (HumanLayer / Faros-style failure). Prefer FIC + Reviewer on scary paths + tests over token-maxxing.  
12. **Factory without judgment** — more loops/harness without stop criteria, seats, or human gates (`wsff`: harness alone is not enough).  
13. **Wow-bar / wrong objective** — Gauntlet (or any loop) runs for hours optimizing taste/visual flare while off-brief (no MVP, no DoD, no tests). Fix: brief first; bar = evidence; multitask off unless synthesis-owned.

---

## Recovery (minimal)

When you notice a mode mid-session:

1. Name the failure mode.  
2. Stop the current loop.  
3. Re-state intent + stop condition.  
4. Restore facts vs inferences.  
5. Resume at the correct layer (often: more context, less coding).

Do not “think harder” on a bad stack.
