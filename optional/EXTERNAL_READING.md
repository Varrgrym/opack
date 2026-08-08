# External reading (workflow lab)

**Status:** pointers only · surveyed **2026-08-08**  
**Use when:** comparing opack kits to public CE / agent-workflow work  
**NOT:** Layer A · not a second constitution · do not vendor these systems into the pack

Hub local capture of Cole’s CE talk: Garden `Universal-Automated-Helper` → `please read cursor and comment/Context Engineering is the New Vibe Coding` ([YouTube](https://www.youtube.com/watch?v=Egeuql3Lrzg)).

Stars below were approximate at survey time; ranks are by **relevance to this lab**, not hype.

---

## Likely “good ones” on context engineering

| Repo | ~Stars | Why it fits |
|------|-------:|-------------|
| [coleam00/context-engineering-intro](https://github.com/coleam00/context-engineering-intro) | 14k | “CE > vibe coding” — pragmatic packing of what the coding agent should see. Closest popular *intro*. |
| [humanlayer/advanced-context-engineering-for-coding-agents](https://github.com/humanlayer/advanced-context-engineering-for-coding-agents) | 2.3k | **Coding agents**, not RAG tourism. Brownfield + **FIC**. Strong match if the remembered piece was agent-specific. |
| [jasontang-ai/Context-Engineering](https://github.com/jasontang-ai/Context-Engineering) | 9k | Karpathy-framed handbook: right info for the *next* step ≈ “smallest high-signal set.” |
| [Meirtz/Awesome-Context-Engineering](https://github.com/Meirtz/Awesome-Context-Engineering) | 3k | Survey / paper index — bibliography, not a workflow. |

**Canonical essay:** [Anthropic — Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) + [anthropics/claude-cookbooks](https://github.com/anthropics/claude-cookbooks) (`tool_use/context_engineering/`). Themes: **compaction · memory · tool clearing · subagent isolation**.

---

## Closest to our whole stack (intent → spec → context → loop)

| Repo | ~Stars | Aligns with |
|------|-------:|-------------|
| [open-gsd/gsd-core](https://github.com/open-gsd/gsd-core) (was [gsd-build/get-shit-done](https://github.com/gsd-build/get-shit-done) / gsd-2) | 8k+ (legacy ~65k) | Meta-prompting + CE + spec-driven long runs — nearest *productized* cousin to Adaptive + Universal + Runtime. Claude-centric; **do not vendor into opack**. |
| [muratcankoylan/Agent-Skills-for-Context-Engineering](https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering) | 18k | Modular skills for context / multi-agent — kits-as-skills shape. |
| [NeoLabHQ/context-engineering-kit](https://github.com/NeoLabHQ/context-engineering-kit) | 1.3k | Skills for result quality; claims **Cursor** compatibility. |
| [ace-agent/ace](https://github.com/ace-agent/ace) | 1.2k | Agentic Context Engineering — evolving/persisting context ≈ living context / memory. |
| [rohitg00/pro-workflow](https://github.com/rohitg00/pro-workflow) | active | Self-correcting memory across sessions + parallel worktrees — handoff/memory + multitask caution. |
| [cased/kit](https://github.com/cased/kit) | 1.3k | Codebase mapping / search toolkit for CE tooling. |

---

## Map: our kits ↔ external analogues

| Our kit | External analogue |
|---------|-------------------|
| Context engineering + chunk/synthesis + **FIC** | Cole intro, HumanLayer advanced, Anthropic compaction/subagents, cased/kit |
| Spec / acceptance / stop | GSD spec-driven; Universal stop points |
| Adaptive expansion (intent ≠ full spec) | GSD meta-prompting; fewer pure “expand any short ask” kits — more *ours* |
| 5W1H + investigation ladder | Scattered in review prompts; rarely seat-aware |
| Seats / active ≤3 / locked tissue | Multi-agent skills; HumanLayer/GSD roles — few lock tissue like we do |
| Failure modes / runtime control | Thin elsewhere; Anthropic “context pollution”; HumanLayer `wsff` (factory without judgment) |
| Analysis prompt formation | HumanLayer + coding-agent prompt gists; our Mode A–D + decide-next close is denser |
| Gauntlet / builder↔critic loops | Anthropic “building effective agents” evaluators; Schumer-style 3-line Gauntlet Loop demos |

---

## Gauntlet Loop video (2026-08-08)

[YouTube](https://youtu.be/BNjzXcEXmg4) — explainer of Matt Schumer’s **Gauntlet Loop** (task · fan-out + critics · high bar). Showcase demos (games/3D/frontend); skill wrappers exist elsewhere.

**Steal:** 3-line shape; gauntlet as polish **after** MVP/brief.  
**Don’t:** default first prompt; swarm without synthesis owner; taste-only stop (“utterly wowed”).  
**Landed:** seat-aware paste in `AI_WORKFLOW_STACK.md` § Gauntlet. Failure cousin: wow-bar (`FAILURE_MODES.md`).

---

## Deep-read outcomes (skim-first three)

| Resource | Steal | Skip / we cover better |
|----------|-------|-------------------------|
| **Cole** | PRP as durable intent→implement artifact; examples folder as hard context | Slogan math; Claude-only slash commands unless translated |
| **HumanLayer** | **FIC** rhythm (landed in `CHUNKING.md` §5b); distilled subagent returns; anti–slop-factory | Commercial stack pitch |
| **open-gsd / GSD** | Phase lifecycle; greppable STATE/CONTEXT ideas | Pulling GSD into Layer A — heavy sibling only |

---

## Opack differentiator (keep honest)

Almost nobody packages our exact combo as one thin portable pack:

**5W1H · adaptive depth · chunk-for-processing pin · FIC · seats (active ≤3) · failure modes · analysis decide-next**

They invented **overlapping pieces**. Steal techniques; do not rediscover “context engineering” as a slogan. Differentiator = **operator workflow lab**, not CE branding.

---

## Optional experiment → thin kits (landed)

| Kit | Role |
|-----|------|
| [`PRP_TEMPLATE.md`](PRP_TEMPLATE.md) | INITIAL → PRP → execute |
| [`EXAMPLES_CONVENTION.md`](EXAMPLES_CONVENTION.md) | Examples as hard context |
| [`MODE_D_COLD_LEAD.md`](MODE_D_COLD_LEAD.md) | Portable Mode D cold-lead |
| [`PASTEABLES_INDEX.md`](PASTEABLES_INDEX.md) | Index of paste blocks |
| Seat-aware Gauntlet paste | `AI_WORKFLOW_STACK.md` |

Install into a project: `./install.sh /path --with-workflow-lab`

---

## Gap list (Canopy + Cole transcript vs opack) — 2026-08-08

Philosophy/modes already covered (Canopy A–D in `AGENTS.md`; Cole CE thesis in stack + FIC). Operational gaps — **thin kits landed**; full Cursor slash automation still optional:

| # | Gap | Status |
|---|-----|--------|
| 1 | PRP artifact workflow | **Thin kit:** `PRP_TEMPLATE.md` (not auto slash-command) |
| 2 | Examples as hard convention | **Thin kit:** `EXAMPLES_CONVENTION.md` |
| 3 | Mode D cold-lead companion | **Thin kit:** `MODE_D_COLD_LEAD.md` (no Immune paste) |
| 4 | Portable “belongs in *this* repo?” | In Mode D cold-lead restraint litmus |
| — | RAG/MCP; OWASP webinar noise | Skip until needed |
| — | Auto `/gauntlet` Cursor skill | Still parked — paste block is enough |

**Next leverage:** use the lab on a real project (Universal + FIC + seats). Do not deep-read more public CE unless a build goal needs it.
