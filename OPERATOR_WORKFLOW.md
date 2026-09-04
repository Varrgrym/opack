# Operator workflow (project overlay)

**Status:** living · project-local (opack itself)  
**Baseline:** Layer A `AGENTS.md`  
**Always-on digest:** `.cursor/rules/follow-operator-pack.mdc` (single digest — lab merged 2026-09-01)  
**Opack context:** `@optional/OPACK_OPERATOR_CONTEXT.md` (host roles, families, phrase locks — not always-on)  
**Rule:** keep this file thin. Cursor proposes only after **twice** seen/corrected, or operator says **“remember that.”** Confirm before write.

---

## Standing prompts

- Lab repo: prompt / context / spec / agent-loop formation — `@optional/OPACK_OPERATOR_CONTEXT.md` for host roles, families, `think hard` / `check this`, **machine switch**, philosophy, multi-device.
- Organize / maintain this repo → `EXTRACT_AND_ORGANIZE.md`; keep indexes and install flags coherent.
- Reply shape when you want scan-friendly output → `@optional/OPERATOR_REPLY_PROTOCOL.md` (not always-on).
- Expansion readiness (scout → soldier → settler → builder → defender) → `@optional/EXPANSION_LIFECYCLE.md`; short gate: **Territory claimed?**
- Engagement shape (scatter · sniper · chain · funnel — how to fire per stage) → `@optional/ENGAGEMENT_SHAPES.md`; Scout names the target.
- Runtime stanza with Stage + Shape → `Mode · Stage · Shape · Seat · Multitask · Plan?` — `@optional/RUNTIME.md` §1; router → `@optional/PROMPT_BUNDLES.md` § Framework router.
- **Attacker challenge** (pin Attacker / Grok 4.6 High; open with `Seat: Attacker`; Soldier stage):

  ```text
  Challenge my points. Play attacker.

  For each major claim I make:
  - fact / observation / assumption (label it)
  - what I'm right about (with evidence)
  - what I'm wrong or overconfident about (with evidence)
  - what we should improve (specific, ranked)
  - what we MUST have before proceeding (hard gates — no invented live gates)

  End with: proceed / narrow / stop — and one sentence why.
  ```

## Personality

- (See `OPACK_OPERATOR_CONTEXT.md` — kept out of overlay to reduce always-on duplication.)

## Behaviors

- **Close-out habit:** park optional follow-ups to a durable `@`-able note — `optional/PROMPT_FAMILY_FOLLOWUPS.md` or Log/Pickup row.

## Repeated tasks

- **Chat/export dumps:** `EXTRACT_AND_ORGANIZE.md`; do not re-import content already in `optional/`.
- **Session close (opack):** commit+push if tree changed; Log pickup row if WIP remains.
- **Machine switch:** `config/active-set.yaml` + `scripts/machine-switch.sh` — see `OPACK_OPERATOR_CONTEXT.md` § machine switch.

## Refuses / pins (this repo)

- Do not paste Garden Immune, FOCUS notebooks, organ contracts, or traveler corpora into this pack.
- Do not silently promote Intent Expand or reply protocol into Layer A / always-on without confirm.
- Prefer archive over delete for superseded kits (`optional/archive/`).
- **No project symlinks.** Real folders only — symlinks break Cursor chat binding and hide layout debt.

## Open experiments

- See `OPACK_OPERATOR_CONTEXT.md` § Open experiments.

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
| 2026-08-25 | Close-out: park optional follow-ups | Habit — durable `@`-able note for next chat; CLOSE_CHAT + overlay + digests |
| 2026-08-26 | Close-out: chat≠project harden | Explicit session vs product done; anti-false-done; land Must/Useful/skip; paste stays thin |
| 2026-08-29 | Close-out: this chat | Desktop layout follow-up parked §6 in `PROMPT_FAMILY_FOLLOWUPS.md` |
| 2026-08-30 | Seat habit proof parked | §7 in `PROMPT_FAMILY_FOLLOWUPS.md` — pin model · optional Archivist/Attacker spike |
| 2026-09-01 | Operator reply protocol | Verdict-first · state TLDR · action Next steps · precedence · close-out override — `optional/OPERATOR_REPLY_PROTOCOL.md` |
| 2026-09-01 | User rules trim applied | Removed 13 duplicate global rules; added 6 tooling-only rules via cursor_dialog |
| 2026-09-01 | Session close — prompt efficiency | Handoff parked §8 `PROMPT_FAMILY_FOLLOWUPS.md` |
| 2026-09-01 | §8 digest verify | Trivial + Mode D phrase-lock smoke passed; agents less lost yes. Next: §7 seat proof · §1 field test · §6 desktop layout · satellite user-rules count (§8.2). |
| 2026-09-04 | Attacker challenge standing prompt | Reusable falsify block: right/wrong/improve/hard gates + proceed/narrow/stop close |
| 2026-09-04 | Expansion lifecycle kit | Scout→Defender lens; Settler/territory gate; sibling to phase pipeline |
| 2026-09-04 | Expansion lifecycle v2 | Synthesizer beat · Steward loop · Quartermaster phase 0 |
| 2026-09-04 | Engagement shapes kit | Scatter/sniper/chain; Scout owns target; sibling to lifecycle |
| 2026-09-04 | Framework router landed | PROMPT_BUNDLES picker; RUNTIME Stage·Shape stanza; phase⊂lifecycle map |
| — | **Pickup** | **§8 verify done.** Next `@optional/PROMPT_FAMILY_FOLLOWUPS.md` **§7** · **§1** · **§6** · §8.2 satellite rules. Context: `@optional/OPACK_OPERATOR_CONTEXT.md`. |
