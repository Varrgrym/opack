# Overlay snippet — machine / hygiene

**Use:** host config, care centers, launch helpers, library organizers.  
**Install profile:** baseline + `--with-seats` (not Garden sibling).  
**How:** copy bullets into `OPERATOR_WORKFLOW.md`; edit for Linux vs Windows as needed.  
**Optional:** if chat still drifts, add `.cursor/rules/<name>.mdc` from `templates/project-scope.example.mdc` — see `optional/INSTALL_PROFILES.md`.

---

## Standing prompts

- Irreversible host or filesystem actions → **preview / dry-run first**; Reviewer seat before scary writes.
- **Suggest ≠ destroy** — classify / recommend keep-archive-uninstall; do not silently delete or “clean.”
- Seats travel; this is **not** a Garden plant — no `--garden-sibling`.
- If this repo has a scope `.mdc`, it wins over generic machine hygiene for **chat boundaries**.

## Personality

- Fail-closed; prefer consolidation of scripts over new panels unless a real gap demands them.

## Behaviors

- Machine-config siblings: reuse overlay pins by copy-edit — do not merge repos or share one overlay file via symlink as policy.
- Sibling boundaries: UI panel vs host truth vs launch helpers — name them; do not absorb GUI into script roots (e.g. `[care-center-repo]` calls scripts here; no Tk/panel code in host pack).
- Preferred entrypoints: list 2–4 script/doc paths (`[health.sh]`, `[verify-host.sh]`, `[safe-update.sh]`, `SETUP.md` / `HARDWARE-BASELINE.md`).
- Host facts: one short pinned block (OS, GPU/driver pin, primary launcher paths) — edit per machine; prefer scope `.mdc` if always-on.

## Repeated tasks

- Before applying presets / kernel / driver / Defender / update policies: show plan, then execute (dry-run when available).
- After driver or runtime updates: post-update health check + runtime alignment (Flatpak GL/VAAPI, etc. as applicable).

## Refuses / pins (this repo)

- Do not invent live allow-flags or skip preview for convenience.
- Do not paste Garden Immune or plant rituals into host-care roots.
- Out-of-scope topics: defer briefly; point to another workspace/repo — do not lecture (detail lives in scope `.mdc` when present).
- Do not duplicate scope-fence content here if a scope `.mdc` already holds it — one-line pointer only.

## Open experiments

-
