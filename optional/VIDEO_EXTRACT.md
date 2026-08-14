# Deep video intelligence / knowledge extraction

**Status:** decided · 2026-08-14 · workflow-lab pasteable  
**Use when:** YouTube / local video / “extract this video” / “without watching it myself”  
**Companion:** Mode **B** · [`EXTRACT_AND_ORGANIZE.md`](EXTRACT_AND_ORGANIZE.md) · FIC ([`CHUNKING.md`](CHUNKING.md)) · dense residue → [`ORGANISM_PLACEMENT.md`](ORGANISM_PLACEMENT.md)  
**NOT:** Layer A · always-on mega-prompt · Mode E · shallow “summarize the video” · inventing comments or visuals you did not have

---

## Phrase lock

| Operator says | Do |
|---------------|-----|
| **extract this video** / **deep video intelligence** / **without watching it myself** | This kit — full knowledge report, not a plot recap |
| Drops a **YouTube URL**, video file, transcript + comments | Same; cite source |
| Generic “summarize this video” | Still this kit unless they explicitly want a one-paragraph recap |

Do **not** ask “what format?” if a video source is present. Open with runtime stanza.

---

## Runtime + fail-closed

```text
Runtime: Mode=B · Seat=Engineer (Archivist if large comment corpus) · Multitask=off · Plan=no unless multi-hour / multi-source
```

- **Sources you actually have.** Use video, transcript, visuals, audio, metadata, comments only where they provide evidence. Label **VIDEO / VISUAL / COMMENTS / INFERENCE**.
- **Do not invent.** If comments, frames, or on-screen numbers were not fetched, say **unavailable** — do not hallucinate a comment section.
- **Visuals are first-class.** A short demo can outrank a long talk. If you cannot inspect frames, flag **VISUAL: not inspected**.
- **No external fact-check** unless asked. Preserve weak claims; flag evidentiary weakness.
- **Long sources:** chunk for processing, then synthesize (`CHUNKING.md`). Context-as-variable: huge transcripts = handle + slice, not one-shot paste of the whole dump (`AGENTIC_INTERACTION.md`).
- **After the report:** Keep/Park into the capture inbox (`sources/` + Mode B). Do not paste the report into Layer A. Personal ideas Keep/Park; reject only PII/secrets/ops noise.

---

## Paste opener (standing)

```text
Deep video intelligence — extract useful knowledge as if I will not watch this myself.
Do not give a shallow summary. Source-first: spoken + visual + comments (if available).
Label VIDEO / VISUAL / COMMENTS / INFERENCE. Observed vs stated vs inferred vs speculative.
Capture failures, numbers-with-context, transferable principles. Then Keep / Maybe / Discard / follow-up.
Runtime: Mode=B · Seat=Engineer · Multitask=off · Plan=no
Source: <URL or path>
```

---

## Working prompt (operator spec)

Analyze the provided video as if I am trying to **extract all of the useful knowledge from it without watching it myself**.

Do not give me a shallow summary of what happens.

Your job is to determine **what is actually worth remembering, learning, questioning, or applying**.

Treat the video, transcript, visuals, audio, metadata, and comments as potential sources of evidence. Use each only where it actually provides information.

### 1. First: Understand the Whole Video

Analyze the video from beginning to end.

Identify:

- What the creator is trying to accomplish
- The main subject
- The major questions being answered
- The major claims being made
- The reasoning used to reach those claims
- Important demonstrations
- Experiments or tests
- Results
- Comparisons
- Examples
- Important caveats
- Unexpected discoveries
- Conclusions
- Recommendations
- Things the creator appears uncertain about

Do not assume that something is unimportant simply because it occupies little of the video's runtime.

A 20-second demonstration may contain more useful information than 10 minutes of discussion.

### 2. Capture Information From All Available Modalities

Do not rely exclusively on the transcript.

**Spoken content:** explanations, arguments, instructions, numbers, measurements, experiences, conclusions, qualifications, changes of opinion.

**Visual content** (especially if absent from the transcript): demonstrations, software interfaces, code, diagrams, charts, tables, before/after comparisons, hardware, physical objects, settings, configurations, on-screen numbers, processes, UI workflows, visual evidence, things the creator points at or manipulates. If something is visually demonstrated but not adequately explained verbally, capture it.

**Audio:** tone, emphasis, corrections, uncertainty, warnings, reactions to unexpected results — only when it materially affects the information. Do not overinterpret emotion.

### 3. Build a Knowledge Map

Before writing a summary, organize into: core concepts · facts/observations · claims · evidence · methods · results · lessons · limitations · open questions · useful details (small but later-valuable).

### 4. Separate Evidence From Interpretation

For important points, classify:

- **Observed** — directly demonstrated or shown
- **Stated** — explicitly claimed by the creator
- **Inferred** — reasonable conclusion from evidence, not directly stated
- **Speculative** — possible interpretation with insufficient evidence

Do not silently turn speculation into fact. Strong claim + weak evidence → keep the claim, flag the weakness.

### 5. Extract the "Why," Not Just the "What"

For every important technique, decision, or recommendation: what was done · why · what problem · what happened · why it worked or failed · under what conditions · when it might not · general principle underneath.

Look for **transferable knowledge**. Prefer “Increasing X improved Y under these conditions, but introduced Z” over “changed setting X from 50 to 75.”

### 6. Look for Generalizable Principles

Broader strategy · reusable workflow · diagnostic technique · pattern · mental model · mistake worth avoiding · decision-making principle · optimization strategy · apply-elsewhere. Separate genuine generalization from speculation.

### 7. Analyze Failures and Negative Information

Failed attempts · mistakes · things that didn't work · approaches abandoned · unexpected problems · bottlenecks · tradeoffs · false assumptions · warnings · “don't do this.” Negative knowledge prevents repeated experimentation.

### 8. Extract Numbers and Concrete Parameters

Dedicated section: measurements, times, costs, speeds, scores, percentages, settings, dimensions, hardware specs, resource usage, thresholds, test conditions, before/after. Preserve units and context. Never report a number without enough context to know what it represents.

### 9. Analyze the Creator's Reasoning

Where appropriate: **Problem → Hypothesis → Action → Observation → Result → Conclusion**. Flag weak, incomplete, or contradictory reasoning. Do not “correct” the creator unless asked for external fact-checking.

### 10. Read and Analyze the Comments (if available)

Secondary knowledge source — not a recap of vibes.

Look for: valuable additions · corrections · alternative methods · real-world experiences · edge cases · expert clarification · consensus (independent repeats) · substantive disagreement · repeated questions that reveal gaps.

Ignore: memes, jokes, praise, insults, engagement bait, repetitive reactions.

Do not treat a highly-liked comment as automatically correct. Comments are evidence, not authority.

### 11. Distinguish Sources

**VIDEO** · **VISUAL** · **COMMENTS** · **INFERENCE** — do not merge these as equally authoritative.

### 12. Identify the Highest-Value Information

- **Tier 1 — Essential** — major loss if never watched
- **Tier 2 — Valuable** — worth preserving
- **Tier 3 — Context** — helpful background
- **Tier 4 — Noise** — does not improve understanding

Focus the final output on Tiers 1 and 2.

### 13. Produce a Structured Knowledge Report

## Executive Summary

The video's actual value: what we learned, why it matters, most important takeaway.

## Core Knowledge

## Important Findings

Organized by topic.

## Methods / Techniques

## Experiments and Results

For each meaningful experiment: Question · Hypothesis · Method · Conditions · Result · Conclusion · Limitations.

## Important Visual Information

Learned primarily from what was shown rather than said.

## Failures / Mistakes / Warnings

## Numbers / Parameters / Settings

Consolidated reference table; numbers with context.

## Transferable Principles

## Comment Intelligence

Corrections · additional knowledge · alternative methods · real-world reports · edge cases · expert insights · disagreements · unresolved questions. Only comments that add meaning.

## Claims Requiring Caution

Lack evidence · circumstance-dependent · anecdotal · conflict with other video evidence · disputed in comments.

## Open Questions

## Most Valuable Takeaways

**10–20** highest-value pieces; concise but usable months later.

### 14. Create a Reusable Knowledge Base

If this were permanent project/personal knowledge, what should be retained?

- **Keep** — preserve permanently
- **Maybe** — needs verification or more context
- **Discard** — transient, redundant, or low-value
- **Follow-up research** — investigate separately

### 15. Final Quality Check

1. Entire video, not just beginning or conclusion?
2. Important visual information?
3. Numbers and parameters?
4. Failures and negative results?
5. Claims vs evidence?
6. Generalizable principles?
7. Comments for additions and corrections (if available)?
8. Comments not treated as automatically authoritative?
9. VIDEO / VISUAL / COMMENTS / INFERENCE distinguished?
10. Long-term usefulness over volume?
11. Context preserved for later use?
12. What is actually worth remembering?

Do not optimize for the longest report. Optimize for **highest information density and highest long-term usefulness**.

Ultimate goal: understand the important knowledge in this video — including useful information hidden in demonstrations and comments — without watching it.

---

## Log

| Date | Change |
|------|--------|
| 2026-08-14 | Landed operator spec as pasteable; phrase lock + fail-closed + Keep/Park after report |
