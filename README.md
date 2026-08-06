# opack

**Portable Cursor operator pack** — own workspace / own git repo.  
Clone once; install into any project in one command. No Garden Immune / constitution.

| Piece | Role |
|-------|------|
| `AGENTS.md` | Canonical baseline (behavior, craft, review modes) |
| `templates/OPERATOR_WORKFLOW.md` | Project overlay + standing prompts |
| `cursor-rules/follow-operator-pack.mdc` | Always-on digest (keeps prompts in mind) |
| `optional/CURSOR_MODEL_SEATS.md` | Which model seat to open |
| `optional/MODEL_SEAT_PLAYBOOKS.md` | How that seat must behave |
| `optional/GARDEN_SIBLING.md` | Layer B — Garden plants only |

---

## Quick install into any project

From this repo:

```bash
./install.sh /path/to/your/project
./install.sh /path/to/your/project --with-seats
./install.sh /path/to/Cookie --with-seats --garden-sibling
```

Default copies: `AGENTS.md` · `OPERATOR_WORKFLOW.md` · `.cursor/rules/follow-operator-pack.mdc`  
`--with-seats` also copies seats picker + playbooks into `docs/` (creates `docs/` if needed).  
`--garden-sibling` copies `GARDEN_SIBLING.md` (fill `HELPER_*_ROOT` after).

---

## Clone / open as its own workspace

```bash
git clone https://github.com/Varrgrym/opack.git
# or local:
# ~/Desktop/opack
```

Open this folder in Cursor when you want to **edit the pack itself**. Edit here, then re-run `install.sh` on projects to refresh (or copy selectively).

---

## Mental model

```text
You (habits)     → Cursor user rules (global)
Any repo         → this pack (install.sh)
Garden hub       → Immune stays on hub — not here
Peeled plant     → pack + optional GARDEN_SIBLING.md
```

**AGENTS.md** = how Cursor behaves in the repo.  
**Seats** = which model chat to open.  
**Playbooks** = open with `Seat: Engineer|Reviewer|Finisher|Archivist|Attacker`.

---

## Edit vs install

| Goal | Where |
|------|--------|
| Change universal baseline | Edit this repo’s `AGENTS.md` / digest / playbooks |
| Change one project’s habits | That project’s `OPERATOR_WORKFLOW.md` |
| Refresh a project after pack edits | Re-run `./install.sh /path/to/project` (won’t overwrite existing `OPERATOR_WORKFLOW.md` unless `--force-workflow`) |

---

## Not included (on purpose)

Garden harness · FOCUS / EG-D · `POLICY_*` · full refuses / organ contracts. Those stay on the Garden hub.

Hub mirror (legacy pointer): `Universal Automated Helper/OPERATOR_STARTER/` — **this repo is canonical.**

---

## One line

**One thin pack repo → install into any root. Grow the overlay per project. Don’t paste a second constitution.**
