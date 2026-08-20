# Exploratory Project Analysis — Find What We Haven’t Considered

**Status:** active · 2026-08-20 · workflow-lab pasteable  
**Job:** expand the possibility space before deciding where to go  
**NOT:** code review · bug hunt · Mode D · Mode C roadmap · feature wishlist  
**Complements:** Review (what is) · Audit (what’s wrong) · Planning (what next) · **this** (what haven’t we thought of)  
**Related short paste:** `DAY_PROMPTS.md` #3 (gap-only lens) — use this kit for full strategic exploration  
**Install:** `--with-workflow-lab` → `docs/workflow-lab/`

---

## When to use

Paste when you already understand the project (or after a review/audit) and want the model to explore **missed questions, latent capability, and directions** — without instantly turning insight into a backlog.

**Seat hint:** Reviewer or Engineer · Multitask **off** · Plan **no** until after synthesis.

---

## Paste

```text
# Exploratory Project Analysis — Find What We Haven’t Considered

Analyze this project deeply and then explore the possibility space around it.

This is not primarily a code review, bug hunt, roadmap, or feature request.
I want you to help me discover things I have not thought to ask about.

Do not assume that the existing roadmap, architecture, terminology, priorities, or assumptions are complete. They represent what we have considered so far, not necessarily what we should ultimately do.

Do not generate ideas merely to make the project bigger. Favor ideas that create meaningful capability, clarity, leverage, generalization, reliability, or strategic value.

Be willing to conclude that the best direction is not building anything.

## Operating rules (read first)

* Explore before prescribing.
* Skip any section that would only produce filler. Empty is preferred over invented insight. Depth over coverage.
* Do not invent features for the sake of novelty. You may leave the current roadmap, but every elevated idea must connect meaningfully to the project.
* Evidence gate: ground claims in the project, the conversation, or a clear consequence of those. Label speculation as speculation — never silently promote it to fact.
* Label findings throughout as Known · Inferred · Speculative.
* Classify each discovery as one of:
  - Investigate — a question we have not answered
  - Could build — a real capability opportunity
  - Reconsider — something we currently believe that may be wrong or overvalued
* Before elevating any idea: does it strengthen the core purpose, or only add interesting surface area? Interesting ≠ valuable.
* Prefer experiments when uncertainty is high.
* Consider simplification and consolidation as legitimate progress.
* Be willing to recommend doing nothing, abandoning sunk cost, and surprising me.
* Do not optimize for agreement. Optimize for discovering what is actually valuable.

The goal is not a bigger roadmap.
The goal is to expand our understanding of what this project could be before we decide what it should become.

---

## 1. First, Understand the Project

Before exploring possibilities, develop a strong understanding of:

* What the project is
* What it is trying to accomplish
* Why it exists
* Who or what it serves
* What has already been built
* What is currently working
* What is incomplete
* What has been abandoned or deliberately postponed
* What the major components are
* What the major workflows are
* What constraints exist
* What assumptions appear to guide the project
* What the project's current trajectory appears to be

Separate clearly:

**Known** — directly supported by the project.
**Inferred** — a reasonable conclusion from the evidence.
**Speculative** — an interesting possibility that is not established.

Do not silently turn speculation into fact.

---

## 2. What Have We Not Discussed?

This is one of the most important sections.

Look beyond the existing conversations, documentation, TODOs, and roadmap.

Ask: What important questions have we simply never asked?

Look for missing: capabilities · constraints · use cases · failure modes · workflows · users · interfaces · measurements · experiments · architectural considerations · opportunities · risks · assumptions · definitions · success criteria.

Also ask: What would a highly experienced person in this field immediately notice that we haven't discussed?

Do not assume that something is unimportant merely because it doesn't appear in the existing project plans.

### Questions We Have Not Asked Yet

For each question, explain why it might matter. Label Investigate / Could build / Reconsider as appropriate.

---

## 3. What Are We Taking for Granted?

Identify assumptions embedded in the project — especially ones never explicitly stated.

For each important assumption, ask:

* Is it actually true?
* Has it been tested?
* Is it necessary?
* What happens if it is wrong?
* Is there a better alternative?
* Has the project outgrown this assumption?

---

## 4. What Could We Expand?

Take existing capabilities and explore their latent potential.

For every major capability, ask:

* What else could this enable?
* What adjacent problems could it solve?
* Could it become more general or reused elsewhere?
* Could several existing capabilities combine into something substantially more useful?

Do not immediately recommend implementation. First explore the possibility.

---

## 5. What Are the Major Directions This Project Could Take?

Discover the project's natural directions. Use the menu below only as inspiration — do not force categories that don't fit.

Menu (optional): Reliability · Generalization · Automation · Intelligence · Perception · Memory · Performance · User experience · Infrastructure · Modularity · Research · Experimentation · Scalability · Accessibility · Commercialization · Simplification · Polish · Integration · Independence / standalone operation.

Name only the directions that matter here (typically 4–7). Ignore the rest.

For each direction:

### Direction
What does this mean for this particular project?

### Why pursue it?
What value could it create?

### What would it require?
Capabilities, architecture, experiments, resources, etc.

### What would it unlock?
Second-order opportunities.

### What could go wrong?
Complexity, maintenance, scope creep, dependencies, etc.

### How important is it?
Low / Medium / High / Transformative

### Your recommendation
Pursue / Explore / Park / Reject — and why.

---

## 6. Explore the Unusual Directions

Do not restrict yourself to the obvious roadmap.

Ask: What could this project become if we approached it from a completely different angle?

Look for: unexpected applications · alternative architectures · new workflows · different users · different abstractions · combinations with existing capabilities · ways to turn existing work into reusable infrastructure · ways to eliminate rather than add complexity.

Do not recommend novelty for novelty's sake. Ideas must still connect meaningfully to the project. Skip this section if nothing non-obvious is genuinely plausible.

---

## 7. Look for Combinations

Look at existing components and ask: What happens if we combine capabilities that currently operate separately?

For each interesting combo:

**Capability A + Capability B → Potential new capability**

Explain why it is interesting. Classify Investigate / Could build / Reconsider.

Also identify combinations that sound good but probably aren't worth doing.

---

## 8. Look for Latent Capabilities

Ask: What can this project already do that we haven't fully recognized?

Focus on unlocking existing value, not adding features:

* Infrastructure that could be generalized
* Data that could become useful elsewhere
* Interfaces that could support additional workflows
* Automation that could be reused
* Experiments that reveal broader principles
* Tools that could become building blocks

---

## 9. What Are We Overvaluing?

Challenge the current thinking. Identify things receiving too much attention because they are interesting, technically impressive, fun to build, easy to measure, familiar, already partially implemented, or emotionally difficult to abandon.

Ask: Are we mistaking activity for progress?

---

## 10. What Are We Undervaluing?

Identify things that may deserve more attention (e.g. documentation, simplification, testing, reliability, interfaces, cleanup, generalization, measurement, UX, failure recovery, architecture, human workflow). Explain why.

---

## 11. Explore "Do Nothing"

Explicitly consider: What if we don't build anything new?

Could the project benefit more from consolidation, cleanup, refactoring, documentation, testing, using existing capabilities, running experiments, gathering evidence, removing obsolete components, improving workflows, or letting the project mature?

If so, say so. Do not equate progress with development.

---

## 12. Second- and Third-Order Effects

For the most interesting potential directions (not every idea), reason beyond the first step:

Pursue X → enables Y → creates requirement Z → introduces new complexity → changes the architecture → potentially opens another opportunity.

Explore both positive and negative consequences.

Ask: What does this decision cause us to need next? Where could this path eventually lead?

Require at least one full chain for the top candidate direction.

---

## 13. What Would Surprise Us?

Based on everything you understand, identify one sharp item in each:

### Most likely unexpected opportunity
### Most likely unexpected problem
### Most interesting unexpected capability
### Most dangerous assumption

Keep each to a short, concrete claim — not a list of maybes.

---

## 14. Challenge the Existing Direction

Do not simply validate the project.

Ask: If you disagreed with our current direction, what would you argue?

Identify strategies to reconsider, features to remove, priorities to change, assumptions to challenge, things to stop building, and things to investigate earlier.

Then state whether your disagreement is strong, moderate, or speculative.

---

## 15. If You Took Over the Project

Imagine you became responsible tomorrow with no emotional attachment to prior decisions.

This section is unconstrained ownership judgment (not yet a constrained next-move plan — that is §18).

Answer:

### What would you preserve?
### What would you change?
### What would you investigate?
### What would you remove?
### What would you build?
### What would you deliberately refuse to build?
### Where would you want more evidence before deciding?

---

## 16. Explore the Possible Futures

Only if the project has multiple coherent identities; otherwise skip.

Describe plausible futures that fit (examples: Conservative · Capability · Generalization · Radical — invent categories that actually fit).

For each future:

* What does the project become?
* What would we need to do?
* What would we gain / sacrifice?
* What risks would we introduce?
* How compatible is it with the current project?

---

## 17. Rank the Opportunities

Organize discoveries (prefer using the Investigate / Could build / Reconsider labels inside tiers):

### Tier 1 — Strong opportunities
High-value, well-supported directions.

### Tier 2 — Worth investigating
Potentially valuable but requiring evidence.

### Tier 3 — Interesting possibilities
Worth remembering but not currently actionable.

### Tier 4 — Distractions
Technically interesting but likely more complexity than benefit.

### Tier 5 — Explicitly reject
Conflicts with purpose, constraints, or long-term health.

---

## 18. Recommend a Direction

Only after exploring. This is one provisional next move under current constraints (distinct from §15's unconstrained takeover view).

Answer: If this were your project, where would you go next?

1. The direction you would pursue
2. Why
3. What you would investigate first
4. What you would deliberately ignore
5. What evidence would change your mind

Do not simply select the direction with the most features. Optimize for meaningful progress.

---

## 19. Identify Experiments Before Commitments

For uncertain ideas, propose small experiments instead of immediate implementation.

For each promising uncertain direction:

**Question** — What are we trying to learn?
**Experiment** — What is the smallest useful test?
**Evidence** — What would we measure?
**Success** — What result would justify continuing?
**Failure** — What result would tell us to stop?

Distinguish "this sounds promising" from "we have evidence that this is promising."

Also separate mentally:
* Investigate — questions that change the map
* Experiment — small reversible tests
* Bet — only when evidence already justifies commitment

---

## 20. Final Synthesis

End with a concise strategic picture:

### What we know
### What we don't know
### What we haven't considered
### What we could expand
### What we should challenge
### What we may be overvaluing
### What we may be undervaluing
### Most promising directions
### Most dangerous directions
### Best experiments
### Things worth consolidating
### Things worth abandoning
### Things worth simply using rather than developing further

---

## Final Questions

Answer these directly:

1. What is the single most important thing we have not discussed?
2. What is the most promising unexplored direction?
3. What existing capability are we underutilizing?
4. What assumption should we challenge first?
5. What are we most likely to waste time on?
6. What should we investigate rather than build?
7. What should we build rather than merely investigate?
8. What should we consolidate or simplify?
9. What should we stop touching?
10. If you had complete freedom, what direction would you take this project — and why?
11. What question should I be asking you that I haven't thought to ask?
```

---

## Phrase lock (optional short invoke)

```text
Exploratory analysis — find what we haven’t considered.
Follow optional/EXPLORATORY_ANALYSIS.md (or docs/workflow-lab/EXPLORATORY_ANALYSIS.md).
Expand the map; do not invent a backlog. Skip empty sections. Label Known/Inferred/Speculative and Investigate/Could build/Reconsider.
```

---

## Log

| Date | Change | Why |
|------|--------|-----|
| 2026-08-20 | Initial pasteable | Complement to review/audit/planning; expand possibility space before deciding |
