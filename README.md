# opack

**Portable Cursor operator pack** — clone once; install thin by default.  
No Garden Immune / constitution.

## What installs by default

| Piece | Role |
|-------|------|
| `AGENTS.md` | Layer A baseline |
| `OPERATOR_WORKFLOW.md` | Project overlay |
| `.cursor/rules/follow-operator-pack.mdc` | Always-on digest |

**Optional dials:** `--with-seats` · `--with-workflow-lab` · `--garden-sibling`  
**Lab front doors** (only with `--with-workflow-lab`): `WORKFLOW_LAB_DIGEST.md` · `PASTEABLES_INDEX.md` → kits behind them.  
**Seats:** `CURSOR_MODEL_SEATS.md` · `MODEL_SEAT_PLAYBOOKS.md`  
**Profiles:** `optional/INSTALL_PROFILES.md`

---

## Install by stage (MVP)

| Profile | `--profile` | Install |
|---------|-------------|---------|
| Design / lore | `design` | Baseline only |
| Capture inbox | `capture` | Baseline only (+ paste `templates/overlay-capture-inbox.md`) |
| Product MVP | `product-mvp` | Baseline + `--with-seats` |
| Garden plant | `garden-plant` | Baseline + `--with-seats` + `--garden-sibling` |
| Garden hub | `garden-hub` | Baseline + `--with-seats` + `--with-workflow-lab` |
| Machine / hygiene | `machine` | Baseline + `--with-seats` |
| Idle / toy | `idle` | Skip, or baseline only |

Full matrix: [`optional/INSTALL_PROFILES.md`](optional/INSTALL_PROFILES.md).

```bash
./install.sh /path/to/project
./install.sh /path/to/project --with-seats
./install.sh /path/to/project --with-workflow-lab
./install.sh /path/to/Cookie --with-seats --garden-sibling
./install.sh /path/to/project --profile garden-plant
./install.sh /path/to/project --dry-run --with-seats
```

Baseline stays thin. **Do not** imply “install everything.”

Smoke (from opack root): `./tests/install_smoke.sh`

---

## Auto vs seats

Cursor **Auto** does **not** read opack playbooks. It uses Cursor Router (Cost / Balance / Intelligence).  
Seats are **manual**: pin the model and/or open with `Seat: Engineer|Reviewer|Finisher|Archivist|Attacker`. Details: `optional/RUNTIME.md`.

---

## Always-on rules (no dual constitutions)

Edit **`cursor-rules/`** only. `install.sh` copies into the target `.cursor/rules/`. In this repo: `cp cursor-rules/*.mdc .cursor/rules/` after edits.

---

## Clone

```bash
git clone https://github.com/Varrgrym/opack.git
# ~/Desktop/opack
```

---

## Mental model

```text
You (habits)     → Cursor user rules (global)
Any repo         → this pack (thin install)
Garden hub       → Immune stays on hub
Peeled plant     → pack + GARDEN_SIBLING.md
Lab essays       → optional/ + archive/ (not default install)
```

---

## Not included

Garden harness · FOCUS / EG-D · `POLICY_*` · organ contracts.  
Superseded kits live under `optional/archive/` (prefer archive over delete).

---

## One line

**Thin default · seats optional · lab behind two front doors — not a second constitution.**
