# Runtime hygiene ideas (along wrong-seat line)

**Status:** design notebook · 2026-08-08 · opack optional  
**Theme:** high-signal routing / session control **without** ceremony tax  
**Landed:** wrong-seat · handoff packet · DoD/stop · decide-low/ask-high (`RUNTIME.md` + digest + `AGENTS.md`)  
**Also landed (extract line):** personal Keep/Park + capture overlay template  
**NOT:** Auto model picker · sixth seat · per-turn interrogation

---

## Principle (decided)

Prefer **call out mismatch once** over **ask permission every time**.  
Operator pins models; pack teaches *when* the current chat is the wrong tool.

---

## Same-line improvements (recommend next)

| # | Idea | Why | Blast | Label |
|---|------|-----|-------|--------|
| R1 | **Depth callout** — “thin answer / Mode B / Mode D?” only when the ask is ambiguous *and* wrong depth would waste a session | Mirrors wrong-seat without always opening Mode picker | low | recommendation |
| R2 | **Plan? only on blast radius** — already in RUNTIME; tighten: never ask Plan for trivia; one line when irreversible | Stops Plan theater | low | recommendation |
| R3 | **DoD / stop callout** — when polish starts: “DoD met — stop unless you want polish” | Counters infinite polish / wow-bar | low | **decided** (in `RUNTIME.md`) |
| R4 | **Handoff packet** — when redirecting seat: 3 bullets (intent · facts so far · open risk) so Reviewer/Finisher doesn’t cold-start | Makes manual seats usable | med | **decided** (in `RUNTIME.md`) |
| R5 | **Failure-mode name** — on thrash: name mode from RUNTIME table once, then re-spec | Already in kit; make it a standing habit in digest | low | recommendation |
| R6 | **Decide-low / ask-high** — low blast: decide + do; high blast / live / seats / pack growth: ask or fail-closed | Matches “good decisions” without unbounded autonomy | med | **decided** (RUNTIME + digests) |
| R7 | **One active job** — if operator piles three unrelated asks: name the primary, park the rest | Stops multitask thrash without fleets | low | recommendation |
| R8 | **Evidence gate callout** — “I haven’t verified X — treating as assumption” when about to build on unread code | Counters confident-wrong / README theater | low | recommendation |
| R9 | **Consolidate vs build** — when feature itch appears mid-task: one line “consolidate first?” only if it changes the week | Coherence over feature count | low | recommendation |
| R10 | **Tissue vs seat** — if model feels weak for the *named* seat: say “seat job is right; tissue may be wrong” not “open five models” | Keeps roles enduring | low | parked |

---

## Anti-patterns (NOT)

| # | Refuse |
|---|--------|
| N1 | Per-question “who should answer?” |
| N2 | Auto-spawn Reviewer/Attacker fleets |
| N3 | Mandatory runtime stanza on every trivia ask |
| N4 | Personality / autonomy sprawl without twice-seen or “remember that” |
| N5 | Turning this notebook into Layer A wholesale |

---

## Suggested land order (if continuing)

1. ~~Wrong-seat callout~~ **done**  
2. ~~Handoff packet (R4)~~ **done**  
3. ~~DoD / stop (R3)~~ **done**  
4. ~~Decide-low / ask-high (R6)~~ **done** (RUNTIME + digest; pointer in AGENTS)  
5. Depth / evidence callouts (R1, R8) — only after they bite twice

---

## Open questions

1. ~~R6 placement~~ → RUNTIME + always-on digest (scoped table).  
2. ~~Handoff packet form~~ → three bullets in RUNTIME (not a separate pasteable).  
3. Promote R1/R8 into digest only after twice-seen in real chats?

---

## Log

| Date | Note |
|------|------|
| 2026-08-08 | Opened from wrong-seat discussion; landed callout; listed same-line improvements |
| 2026-08-08 | Landed R3/R4/R6 + EXTRACT Keep/Park + `overlay-capture-inbox.md` |
