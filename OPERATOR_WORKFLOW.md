# Operator workflow (project overlay)

**Status:** living · project-local (opack itself)  
**Baseline:** Layer A `AGENTS.md`  
**Always-on digest:** `.cursor/rules/follow-operator-pack.mdc`  
**Rule:** keep this file thin. Cursor proposes only after **twice** seen/corrected, or operator says **“remember that.”** Confirm before write.

---

## Standing prompts

- This repo’s lab chats may focus on **prompt / context / specification / agent-loop formation** — Garden is an occasional example only.
- **“Review this project” / fine-tooth / full review** → Mode D + `INTENT_EXPAND` coverage; do not ask which mode. Runtime stanza. No review fleets.
- **“Organize the repo” / extract dumps** → `EXTRACT_AND_ORGANIZE.md`. Often Mode B.
- **Video / YouTube** / “without watching it myself” → `VIDEO_EXTRACT.md` — source-first knowledge extract, not a transcript recap.
- 5W1H on substantial work; skip ceremony on trivia.
- Large scope: **chunk for processing, never for understanding** (`CHUNKING.md`). FIC on long sessions.
- Runtime / failures / Auto≠seats: `RUNTIME.md`. Feature builds: `SPEC_BUILD.md`.
- Lab front doors: `WORKFLOW_LAB_DIGEST.md` · `PASTEABLES_INDEX.md` (full essays in `optional/archive/`).
- Desire **order**; meticulous notes are mandatory memory — chat is not storage.
- **Necessary complexity only**; many moving parts → Murphy; prefer consolidate.
- Prefer structure in **3s** where it helps (active families / WIP, standing seats, roadmap tiers) — not fake triads everywhere.
- **Active families (note, not law):** (1) Garden · (2) Game development · (3) Updating systems (substrate / Proxmox-of-devices to host Garden). Hands primarily on one; two more in mind. Many repos OK while clearing backlog.
- Before new surface: prefer park or merge into a family story — opack documents mess meticulously if you skip this.
- **Host roles (differentiate behavior):** **Workhorse** = Pop / Linux (`~/Desktop/…` clones — Garden runtime, heavy plants, Proxmox-of-devices). **Satellite** = Windows / Samsung (capture + light Windows-native work; paths/shells/vision differ — do not pretend Pop behavior). On satellite: organize in **thoughts** (`C:\Users\mmedi\Projects\thoughts`) → `workhorse-queue.md`; do not fight hub/plant execution there. On workhorse: execute queued Garden work; prefer `~/Desktop/` paths; do not assume Windows paths.
- **Multi-device pickup:** chat is not storage. After meaningful pack work → **commit + push** (clean tree on `origin`). Leave **decide-next / parked / NOT** in the overlay Log (or commit body) so another device can `git pull` and continue without re-deriving state.
- Phrase lock **“think hard”** → same seat: raise thinking budget if offered (High / Extra High / xhigh) · raise process (short plan / program-design when blast is high) · raise verify (tests, diff, DoD) · stop if the stack is already bad. Do **not** simulate a second seat in the same Auto chat.
- Phrase lock **“check this”** (or scary / irreversible / “I might regret this”) → produce an artifact (diff, claim, tests), then **pin Reviewer** (Opus 5 High) on that artifact — or **Attacker** (Grok 4.6 High) if the ask is falsify / “this can’t be wrong.” Label without pin = theater. Not a review fleet: gated, not every prompt.
- Phrase lock **“close out this chat”** / “can I close?” → `CLOSE_CHAT.md` (lab): goals · extract · YES / NO / YES WITH LAND.

## Personality

- Radical candor; challenge complexity theater; prefer consolidation over new subsystems unless a real gap demands them.
- Seasonal tender of related systems: clean → make space → refocus when attention clouds.

## Behaviors

- Prefer durable notes + remote sync over “I’ll remember from chat.” Dirty unpushed opack after a fix session is a handoff failure.

## Repeated tasks

- When landing prompt-lab doctrine: put full shapes under `optional/`; promote only short digests to always-on / user rules after explicit confirm.
- **Organize / maintain the repo** often — keep indexes, cross-links, digests, and install flags coherent; prefer consolidation over new kits.
- **Chat/export dumps** (“analyze and extract useful”): run `EXTRACT_AND_ORGANIZE.md`; do not re-import content already in optional/.
- **Session close (opack):** if the tree changed → commit with why → push → confirm `0 ahead / 0 behind`. If WIP remains, one Log row: done · next · parked.

## Refuses / pins (this repo)

- Do not paste Garden Immune, FOCUS notebooks, organ contracts, or traveler corpora into this pack.
- Do not silently promote Intent Expand full kit into Layer A / always-on without confirm.
- Prefer archive over delete for superseded kits (`optional/archive/`).
- **No project symlinks.** Real folders only — symlinks are a path quick-fix that break Cursor chat binding, confuse installs, and hide layout debt. Move/rename for real; never `ln -s` project roots unless the operator explicitly overrides.

## Open experiments

- Keep lab digests short; promote kits only after twice useful.
- Opack as Garden’s local-AI rulebook later (still portable Layer A for non-Garden roots).
- **Tissue re-bake (parked):** optional nudge in **opack root only** — not in other installs’ digests.
- **Windows satellite path (detail):** **thoughts** at `C:\Users\mmedi\Projects\thoughts` (Windows). On Pop workhorse the same repo is `~/Desktop/thoughts`. Capture inbox (raw / sources / by-family / workhorse-queue). Not library organizer; see standing prompt Host roles.

## Upstream candidates

- Prefer consolidate · notes over chat-only memory — only if operator wants every install to inherit (personal 3s / families stay overlay).

---

## Log (optional)

| Date | Change | Why |
|------|--------|-----|
| 2026-08-08 | Standing prompts + workflow-lab kits | Capture prompt-formation lab purpose; land optional docs |
| 2026-08-08 | Universal Deep-Reasoning + 5W1H | Automatic situation model without over-engineering trivia |
| 2026-08-08 | Chunking kit + workflow-lab digest promoted | Semantic chunks + synthesis pin; short user rule + opack `.mdc` |
| 2026-08-08 | Runtime control + failure modes | Mode/seat/multitask/gates; Adaptive §4b; parked secondary gaps |
| 2026-08-08 | Locked seat tissue + active-set rule | Gemini 3.1 Pro Archivist; Grok 4.5 High Attacker; ≤3 active / idle declared |
| 2026-08-08 | Archivist ask tightened | named question → cite → compress → hand off (esp. Flash) |
| 2026-08-08 | FIC + EXTERNAL_READING | Steal HumanLayer FIC; pointer list; no GSD vendor-in |
| 2026-08-08 | EXTERNAL_READING expanded | Full CE survey + kit map + deep-read outcomes |
| 2026-08-08 | Canopy/Cole gap list parked | PRP · examples convention · Mode D cold-lead; stop CE survey |
| 2026-08-08 | Gauntlet Loop video noted | Task/method/bar steal; wow-bar failure mode; not default-on |
| 2026-08-08 | Roles durable / tissue snapshot | New models swap lock table; keep five jobs in mind |
| 2026-08-08 | Valuable remnants landed | Seat Gauntlet paste · PRP · examples · Mode D · paste index · --with-workflow-lab |
| 2026-08-08 | Review phrase lock + coverage + runtime stanza | “Review this project” → Mode D; no fleets; Adaptive §14 |
| 2026-08-08 | Extract & organize pattern | Chat dumps / maintain-repo phrase lock; EXTRACT_AND_ORGANIZE.md |
| 2026-08-08 | Install profiles + overlay snippets | Stage dials; naming pin; design/plant/machine templates |
| 2026-08-08 | Operator philosophy + active families | Order/notes/Murphy/3s; Garden·Games·Systems note; no PHILOSOPHY.md |
| 2026-08-08 | Tissue re-bake ritual parked | System-update analogue for seats; no implement until pain / “add that” |
| 2026-08-08 | Windows satellite machine note | Not Linux workhorse; ideas-inbox vs library-organizer considered |
| 2026-08-08 | thoughts repo bootstrapped | `Projects/thoughts` capture inbox; Garden runtime deferred on Windows |
| 2026-08-08 | Lab consolidate → archive | Intent/Runtime/Spec/Mode D/Chunking thin; EXTERNAL+Stack archived |
| 2026-08-12 | No project symlinks | Operator pin — real folders only; not a layout quick-fix |
| 2026-08-12 | Host roles standing prompt restored | Operator: need satellite vs workhorse behavior split (not “this PC is Windows”) |
| 2026-08-12 | Digest hot-path ~30k paste threshold | Promote literal threshold from AGENTIC kit into always-on digest + AGENTS/RUNTIME/lab digests |
| 2026-08-12 | Lab index↔install align (`598a9e6`) | ORGANISM in lab dial; PASTEABLES shipped vs opack-local; archive/template path fixes |
| 2026-08-12 | Path-aware AGENTS + install smoke | After-install path table; `tests/install_smoke.sh`; creative kit install **NOT** (thin dial) |
| 2026-08-12 | Multi-device pickup stance | Commit+push after meaningful work; Log decide-next for other devices |
| 2026-08-12 | Close Mode D Later | DAY_PROMPTS full TOC; archive `profile-review-2026-08-12.md` |
| 2026-08-12 | Self-test fixes | ~30k in workflow-lab.mdc; `--profile capture`; INSTALL_PROFILES CLI column; smoke digest sync |
| 2026-08-12 | Pop path migrate | Handoffs + bridges → `~/Desktop/…`; Archives stay Windows-labeled |
| 2026-08-14 | Video extract pasteable | Phrase lock: YouTube / without-watching → `VIDEO_EXTRACT.md`; not always-on |
| 2026-08-16 | Notes commit+push = multi-device save | Scoped: notes/pack/overlay autosave; product code still ask; not always-push |
| 2026-08-20 | Exploratory analysis pasteable | Possibility-space kit; complements review/audit/planning; not a backlog generator |
| 2026-08-20 | Review/Audit/Plan engines | `PROJECT_REVIEW` · `REPOSITORY_AUDIT` · `EXECUTION_ROADMAP` — peer pasteables to exploration |
| 2026-08-20 | Mode D: trajectory · unknowns · confidence · leverage | Strengthen review without stealing Audit/Explore jobs |
| 2026-08-20 | Audit + Roadmap judgment parity | Same confidence/unknowns/leverage kit; Explore left exploratory |
| 2026-08-20 | Audit anti-AI-review controls | Evidence hierarchy · execute≠read · full-scale definition · preserve→expand sequence |
| 2026-08-20 | Roadmap anti-backlog controls | Priority gate · observable DoD · completion threshold · progress≠activity |
| 2026-08-20 | Mode A/B engines + Explore harden + day #1/#5 sync | Complete AGENTS mode paste parity; leftovers closed |
| 2026-08-20 | Seat prompts menu | Short openers per seat; compose with modes — not mega-prompts |
| 2026-08-20 | Phase pipeline kits | Research report · plan approval gate · Research→Plan→Code→Verify conductor |
| 2026-08-21 | Prompt bundles kit | Relation layer: ladder · named bundles · router · STOP — not Mode E |
| 2026-08-21 | Bundles operating discipline | Exercise rung · stupid router · reduce-work metric · no premature routing auto |
| 2026-08-21 | Bundles full doctrine | Next useful state · handoff · five-core metadata · twice-bitten · Path A · anti-Prompt-OS |
| 2026-08-23 | Attacker tissue → Grok 4.6 High | Picker/docs moved; same falsify job; xhigh optional for load-bearing |
| 2026-08-23 | think hard / check this phrase locks | Depth vs disagreement; Auto ≠ second mind; Reviewer/Attacker pin on artifact |
| 2026-08-25 | Cursor chat hygiene pasteable | Thin UX: new chat · `@` · side chat · ring; doctrine stays AGENTIC/RUNTIME; ships with `--with-workflow-lab` |
| 2026-08-25 | Session hygiene callouts | Plan on blast · land durable · warehouse→handle · fat/DoD→new chat; always-on digest; no fake token meters |
| 2026-08-25 | Close-out phrase lock | `CLOSE_CHAT.md` — goals · extract · YES/NO/YES WITH LAND; ships with lab |
| 2026-08-25 | Prompt-family follow-ups parked | Field test · re-install · specialists — `optional/PROMPT_FAMILY_FOLLOWUPS.md` |
| — | **Pickup** | **opack local: clear.** Optional next: `optional/PROMPT_FAMILY_FOLLOWUPS.md` (field test / re-install / specialists on pain). Also: re-install digests / `--with-workflow-lab` on product repos. Parked: R1/R8 until twice-bitten. Do not: Mode E · review fleets · fake 30k telemetry |
