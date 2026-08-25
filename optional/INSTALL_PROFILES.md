# Install profiles (MVP dials)

**Status:** portable operator note · 2026-08-08  
**Role:** Pick **how much** pack to install by **project stage** — not by how related repos feel.

Same Layer A everywhere. Relatedness does **not** auto-upgrade dials. `--garden-sibling` is only for peeled Garden plants.

---

## Profile matrix

| Profile | `--profile` | Stage / example | Install | Overlay |
|---------|-------------|-----------------|---------|---------|
| **Design / lore** | `design` | Theory, locks, dumps (e.g. Fallen Blade) | Baseline only | Mode B notebook; paste `templates/overlay-design.md` or **`overlay-creative-operator.md`** + [`optional/CREATIVE_OPERATOR_KIT.md`](CREATIVE_OPERATOR_KIT.md) |
| **Capture inbox** | `capture` (same dial as `design`) | Ideas/sources satellite (e.g. thoughts) — not product runtime | Baseline only | Paste `templates/overlay-capture-inbox.md`; Mode B + Keep/Park personal |
| **Product MVP** | `product-mvp` | Playable slice + design (e.g. MH creatures) | Baseline + `--with-seats` | Light seats; paste **`overlay-creative-operator.md`** + link [`CREATIVE_OPERATOR_KIT.md`](CREATIVE_OPERATOR_KIT.md); phase pin + `BUILD_FOCUS` / MVP metrics in overlay |
| **Garden plant** | `garden-plant` | Peeled plant (Cookie, DocuBot, scrape) | Baseline + `--with-seats` + `--garden-sibling` | Paste `templates/overlay-garden-plant.md`; fill `HELPER_*_ROOT` |
| **Garden hub** | `garden-hub` | Universal Automated Helper | Baseline + `--with-seats` + `--with-workflow-lab` | Hub owns Immune — never paste Immune into opack |
| **Machine / hygiene** | `machine` | Host config, care centers, launch helpers | Baseline + `--with-seats` | Paste `templates/overlay-machine.md`; optional scope `.mdc` if chat drifts |
| **Idle / toy** | `idle` | Abandoned or tiny bots | Skip, or baseline only | Do nothing is correct |

**Baseline** = `AGENTS.md` + `OPERATOR_WORKFLOW.md` + `.cursor/rules/follow-operator-pack.mdc`

`capture` and `design` are the **same install dial** (baseline only) — the name only helps you remember which overlay snippet to paste.

---

## Related repos (pin)

| DNA | What travels |
|-----|----------------|
| **Shared** | Posture, craft, Modes A–D, seat **jobs** (tissue snapshot is global) |
| **Local** | Each root’s `OPERATOR_WORKFLOW.md` — copy-edit snippets; do not merge overlays upward |
| **Organism** | Hub Immune + plant `GARDEN_SIBLING.md` only |

Machine-config siblings and Garden plants can both be “yours” and both automation-ish — **only plants get `--garden-sibling`**.

Do **not** invent cluster roles, per-repo seat names, or a crawler that “reacts” to GitHub. Operator picks the profile.

---

## Commands (examples)

```bash
./install.sh /path/to/fallen-blade-tactics --profile design
./install.sh /path/to/thoughts --profile capture
./install.sh /path/to/MonsterHunter-CreaturesofSonaria --profile product-mvp
./install.sh /path/to/cookie-clicker-family --profile garden-plant
./install.sh /path/to/Universal-Automated-Helper --profile garden-hub
./install.sh /path/to/machine-config-pop-rtx4070 --profile machine
./install.sh /path/to/project --dry-run --profile garden-hub
```

Equivalent flag form still works (`--with-seats`, `--with-workflow-lab`, `--garden-sibling`).

After install: paste matching snippet bullets into that project’s `OPERATOR_WORKFLOW.md` (never overwrite a living overlay with `--force-workflow` unless intentional).

---

## Optional: chat scope rule (machine repos)

**Not installed by default** — operator adds manually after paste overlay.

When `OPERATOR_WORKFLOW.md` alone is not enough to stop scope drift, add a second always-on rule:

`.cursor/rules/<name>.mdc` (`alwaysApply: true`)

**Shape:** in scope · out of scope · preferred workflows · sibling boundaries · host facts · brief defer behavior.

Copy from [`templates/project-scope.example.mdc`](../templates/project-scope.example.mdc) or an existing machine sibling. Fill placeholders; do **not** symlink across repos.

**No dual maintenance:** scope fence lives in the `.mdc` *or* overlay Refuses/pins — not both verbatim. Overlay may point to the scope rule in one line.

`install.sh` does not copy scope rules; `--profile machine` stays thin.

---

## Naming (accuracy)

- Suggest freely: seat jobs · Mode A–D · install dials · certainty labels (fact / decided / NOT / parked).
- Adopt the operator’s **project vocabulary** into overlays only after twice-seen or “remember that.”
- Do **not** invent Mode E, a sixth standing seat, or org-chart names for repo clusters.

Full growth rules: root `AGENTS.md` § Pack growth.
