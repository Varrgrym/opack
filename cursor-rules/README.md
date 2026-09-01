# cursor-rules — always-on source

**Canonical full pack:** `../AGENTS.md`  
**Edit here:** `follow-operator-pack.mdc` (single always-on digest; lab content merged 2026-09-01)  
**Install output:** `install.sh` copies `follow-operator-pack.mdc` into the target’s `.cursor/rules/`.

In the **opack** repo itself, keep `.cursor/rules/` in sync by re-copying after edits:

```bash
cp cursor-rules/follow-operator-pack.mdc .cursor/rules/
```

Do not maintain divergent doctrine in both places.

**Upgrade note:** remove stale `.cursor/rules/workflow-lab.mdc` on targets that installed before 2026-09-01 — it duplicated the always-on digest.
