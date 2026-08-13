# Creative operator kit — portable

**Status:** v1 · 2026-08-12 · operator-confirmed promote from FBT  
**Role:** repeatable **Talk → Plan → Materialize → Code MVP → Refine → Publish** method + **evidence-based operator profile** for design-heavy work across repos.

**Not Layer A** — stays in `optional/` + project overlays until universal enough for `AGENTS.md`.

---

## What this kit is

| Piece | File | Use |
|-------|------|-----|
| **Front door** | this file | Install map · context axes · paste prompts |
| **Pipeline (method)** | [`CREATIVE_PIPELINE.md`](CREATIVE_PIPELINE.md) | Phases, sub-steps, loops, gates, anti-patterns |
| **Checklist (print)** | [`CREATIVE_PIPELINE_CHECKLIST.md`](CREATIVE_PIPELINE_CHECKLIST.md) | Pin per session; phase pin at top |
| **Operator profile** | [`OPERATOR_CREATIVE_PROFILE.md`](OPERATOR_CREATIVE_PROFILE.md) | Team role, strengths/risks, Cursor defaults — evidence not MBTI |
| **Overlay snippet** | [`../templates/overlay-creative-operator.md`](../templates/overlay-creative-operator.md) | Thin bullets → project `OPERATOR_WORKFLOW.md` |
| **Instance charter** | [`../templates/CREATIVE_INSTANCE.md`](../templates/CREATIVE_INSTANCE.md) | One page per repo: cargo tier + phase pin + product SoT + scope fence |
| **ChatGPT extract** | [`EXTRACT_CHAT_EXPORT_PROMPT.md`](EXTRACT_CHAT_EXPORT_PROMPT.md) | HTML export — parameterized `{PROJECT_ROOT}` |
| **General extract** | [`EXTRACT_AND_ORGANIZE.md`](EXTRACT_AND_ORGANIZE.md) | Messy dumps / organize repo |

**Reference pair:** FBT = **Full** cargo · Phase 3 Materialize · **no runtime**. MHCOS = **Lite** cargo · Phase 4 Code MVP · **runtime yes**. Process cargo ≠ product phase — not ranked by doc count.

**First reference instance:** Fallen Blade Tactics — `fallen-blade-tactics/docs/process/` (case studies, wave-1 pins, game-specific anti-patterns).

---

## Install by project type

| Project | Copy / link | Overlay |
|---------|-------------|---------|
| **Design-heavy product** (game, creative tool) | Copy pipeline + checklist + profile into `docs/process/` **or** link to opack path | Paste `overlay-creative-operator.md` + fill phase pin |
| **Capture inbox** (thoughts) | Keep kit in opack; pin profile + pipeline link in overlay | Profile axis: *process architect* secondary |
| **Product MVP with code** | Pipeline + profile; Engineer seat for Phase 4 | Phase pin + MVP metrics in overlay |
| **Garden / machine** | Profile + phase pin only; Materialize may = stub/smoke not pixels | Use existing plant/machine overlays |

**Rule:** one **canonical** copy per machine (`opack/optional/`). Project copies are **instances** — add project examples; don’t fork the method silently.

**Install:** manual copy/link from `optional/` into `docs/process/` (or paste overlay only). **NOT** on `install.sh` dials — **decided** 2026-08-12 (keep lab dial thin; creative kit stays opack-local).

**Instance sync:** FBT may run ahead of portable (case studies, v2 retrospective). On twice-seen correction, promote **patterns** to opack canonical; keep product names in instances only.

**Second instance:** MHCOS (`MonsterHunter-CreaturesofSonaria`) — Lite cargo · `docs/process/CREATIVE_INSTANCE.md` · `BUILD_FOCUS_PIN.md` as build SoT.

---

## Two axes (every product repo)

| Axis | Question |
|------|----------|
| **Process cargo** | Full / Lite / Capture — how much kit lives *in* the repo |
| **Product phase** | Talk → Plan → Materialize → Code MVP → Refine → Publish |

Charter (`docs/process/CREATIVE_INSTANCE.md`) records **both**. Phase pin SoT = charter; overlay links, does not duplicate.

---

## Gate integrity (portable rule)

**Checklist is SoT** for phase approve (3A.9, 3B.5, MVP exit). Production plans and review notes may record progress but must not claim pass while checklist gates are open. Cursor: sync checklist before marking steps [x] elsewhere.

---

## Context axes (same operator, different primary seat)

| Context | Primary seat | Materialize often means |
|---------|--------------|-------------------------|
| Game / FBT | Creative director / design lead | Gray sprites, collision matrix, AI prompts |
| thoughts / extract | Process architect / idea organizer | Organism maps, Keep/Park, source notes |
| opack / workflow | Process architect / kit maintainer | Templates, install profiles, method docs |
| Garden hub | Systems owner / critic | MVP smokes, peer steals, fail-closed gates |

Profile doc holds the **full** multi-context map; overlay holds **current project** pin only.

---

## Paste — new design-heavy project

> Install opack creative operator kit. Create `docs/process/CREATIVE_INSTANCE.md` from `templates/CREATIVE_INSTANCE.md`. Set process cargo (Full / Lite / Capture) and product phase. Fill product SoT links and phase scope fence. Paste `overlay-creative-operator.md` into `OPERATOR_WORKFLOW.md` (link charter — do not duplicate phase pin). Copy pipeline + checklist into `docs/process/` **only if tier is Full**. Add extract pointer (`EXTRACT_CHAT_EXPORT_PROMPT.md`). Evidence from this repo only.

---

## Paste — refine profile

> Read opack `optional/OPERATOR_CREATIVE_PROFILE.md` and evidence in [project paths]. Refine operator profile: team role by context, Cursor defaults, phase preferences. Output: updated profile section + 10-line `OPERATOR_WORKFLOW` overlay draft.

---

## Relationship to Layer A

| Layer | Holds |
|-------|--------|
| **AGENTS.md** | Posture, modes A–D, seats, pack growth — no pipeline, no personal profile |
| **OPERATOR_WORKFLOW.md** | Project pins, phase pin, links to kit |
| **This kit** | Repeatable creative method + operator working profile |

---

## Log

| Date | Change |
|------|--------|
| 2026-08-12 | Promoted from FBT session; portable kit + profile refinements (gameplay vs process implementer) |
| 2026-08-12 | Profile v2 + review doc; gate integrity rule; PASTEABLES fix; MHCOS instance open |
| 2026-08-12 | Profile v3 — habit patterns, Garden axis (Cookie/DocuBot), Cursor gap-cover table |
| 2026-08-13 | CREATIVE_INSTANCE template · EXTRACT_CHAT_EXPORT promote · two-axis model · MHCOS+FBT reference pair |
