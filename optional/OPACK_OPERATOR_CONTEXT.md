# Opack operator context (opack-local)

**Status:** active · 2026-09-01 · opack overlay companion  
**Job:** hold opack-specific standing context moved out of thin `OPERATOR_WORKFLOW.md` — `@` when working in this repo  
**NOT:** Layer A · always-on · second constitution  
**Install:** **not copied** by `install.sh` — lives in the opack clone only

---

## Lab purpose

This repo’s chats may focus on **prompt / context / specification / agent-loop formation** — Garden is an occasional example only.

Lab front doors: `WORKFLOW_LAB_DIGEST.md` · `PASTEABLES_INDEX.md` (full essays in `optional/archive/`).

When landing prompt-lab doctrine: put full shapes under `optional/`; promote only short digests to always-on after explicit confirm.

---

## Philosophy & habits

- Desire **order**; meticulous notes are mandatory memory — chat is not storage.
- **Necessary complexity only**; many moving parts → Murphy; prefer consolidate.
- Prefer structure in **3s** where it helps (active families / WIP, standing seats, roadmap tiers) — not fake triads everywhere.
- Radical candor; challenge complexity theater; prefer consolidation over new subsystems unless a real gap demands them.
- Seasonal tender of related systems: clean → make space → refocus when attention clouds.
- Prefer durable notes + remote sync over “I’ll remember from chat.” Dirty unpushed opack after a fix session is a handoff failure.

---

## Active families (note, not law)

1. **Garden**
2. **Game development**
3. **Updating systems** (substrate / Proxmox-of-devices to host Garden)

Hands primarily on one; two more in mind. Many repos OK while clearing backlog.

Before new surface: prefer park or merge into a family story — opack documents mess meticulously if you skip this.

---

## Host roles (differentiate behavior)

| Role | Machine | Behavior |
|------|---------|----------|
| **Workhorse** | Pop / Linux (`~/Desktop/…` clones) | Garden runtime, heavy plants, Proxmox-of-devices; execute queued Garden work; prefer `~/Desktop/` paths |
| **Satellite** | Windows / Samsung | Capture + light Windows-native work; paths/shells/vision differ — do not pretend Pop behavior |

**Satellite:** organize in **thoughts** (`C:\Users\mmedi\Projects\thoughts`) → `workhorse-queue.md`; do not fight hub/plant execution there.

**Workhorse:** same repo at `~/Desktop/thoughts`; do not assume Windows paths.

**Windows satellite path (detail):** capture inbox (raw / sources / by-family / workhorse-queue). Not library organizer.

---

## Multi-device pickup

Chat is not storage. After meaningful pack work → **commit + push** (clean tree on `origin`). Leave **decide-next / parked / NOT** in the overlay Log (or commit body) so another device can `git pull` and continue without re-deriving state.

---

## Phrase locks (opack-specific)

### “think hard”

Same seat: raise thinking budget if offered (High / Extra High / xhigh) · raise process (short plan / program-design when blast is high) · raise verify (tests, diff, DoD) · stop if the stack is already bad. Do **not** simulate a second seat in the same Auto chat.

### “check this”

Scary / irreversible / “I might regret this” → produce an artifact (diff, claim, tests), then **pin Reviewer** (Opus 5 High) on that artifact — or **Attacker** (Grok 4.6 High) if the ask is falsify / “this can’t be wrong.” Label without pin = theater. Not a review fleet: gated, not every prompt.

### “machine switch”

Leaving one machine or arriving on the other → sync **active set only** (3 product repos + helpers — not every Desktop folder).

1. **Review:** `scripts/machine-switch.sh` (dry-run default) or equivalent status per repo in `config/active-set.yaml`
2. **Read:** branch · ahead/behind · dirty · last commit
3. **Act by class:**
   - `notes` / `capture` — ff-only pull if clean+behind (`--apply`); commit+push if ahead before leaving
   - `product` — report only; push when you land a slice
   - missing path on this role — skip (workhorse-only is normal)
4. **Semantic WIP:** Pickup row in overlay Log if git state isn’t enough

Copy `config/active-set.example.yaml` → `config/active-set.yaml` (gitignored) and edit paths/focus list.

### Reply shape (on request)

Verdict first on status/ops · complete body (footer never excuses omission) · `TLDR:` state only · `Next steps:` action only · `(see §X)` for depth · close-out replaces footer — full rules: `OPERATOR_REPLY_PROTOCOL.md`.

---

## Session & close-out habits

- **Close-out habit:** optional / non-blocking next steps → write a parked follow-ups note (or Log/Pickup pointer) so the **next** chat can `@` it. Example: `PROMPT_FAMILY_FOLLOWUPS.md`. Empty = omit.
- **Session close (opack):** if the tree changed → commit with why → push → confirm `0 ahead / 0 behind`. If WIP or optional follow-ups remain, land a parked note + one Log/Pickup row: done · next · parked path.

---

## Open experiments (opack)

- Keep lab digests short; promote kits only after twice useful.
- Opack as Garden’s local-AI rulebook later (still portable Layer A for non-Garden roots).
- **Tissue re-bake (parked):** optional nudge in **opack root only** — not in other installs’ digests.
