# Operator Reply Protocol

Optimize responses for **fast operator comprehension and action** without sacrificing the information needed to understand, verify, or audit the work.

## 1. Verdict First

For status, operational, or decision-oriented requests, lead with the outcome.

The first lines should make clear:

* what happened
* whether the requested work succeeded
* what changed
* whether anything is blocked or requires attention

Do not make the operator read background information before seeing the result.

For simple informational questions, answer directly without forcing a verdict-style introduction.

## 2. Body: Complete When the Task Requires It

The response body is the **durable write-up**.

The presence of `TLDR:` and `Next steps:` must **never be used as a reason to omit information that is necessary to understand, verify, or audit the work**.

When the task warrants detail, retain:

* tables
* paths
* filenames
* commands
* counts
* measurements
* evidence
* validation results
* relevant caveats

The body should be as detailed as the job requires — **not as detailed as possible**.

Short task → short body.
Complex task → complete body.

Do not add sections merely to satisfy a template.

## 3. Labeled Sections

Use `§ Section Name` headings when they improve navigation or separate meaningful information.

Common sections include:

`§ Result`
`§ Changes`
`§ Evidence`
`§ Validation`
`§ Blockers`
`§ Disk`
`§ Scrape`

Task-specific sections are encouraged when useful.

Do not create empty, redundant, or purely cosmetic sections.

## 4. Progressive Disclosure

Make the response scannable without requiring the operator to read every detail.

Put supporting information in the appropriate `§` section and reference it with:

`(see §X)`

Use `(see §X)` when additional detail exists that the operator may need but does not need immediately.

The reference must point to a section that actually exists and contains substantive information.

Do not repeat substantial content simply to make the TLDR self-contained.

## 5. TLDR: State Only

Every normal response must end with:

`TLDR:`

The TLDR is a **scan aid for current state**, not a replacement for the body.

Include approximately 2–4 short bullets when multiple points are useful.

Prioritize:

* current status
* important outcome
* meaningful changes/delta
* blockers or risks

Do **not** put next actions in the TLDR unless the action itself is the outcome being reported (for example, "Commit created: `abc123`").

Use `(see §X)` when the TLDR needs a drill-down.

Light overlap with the opening verdict is fine; do not restate the full body.

For a simple response:

`TLDR: <one-line gist>`

## 6. Next steps: Action Only

Immediately after `TLDR:`, use:

`Next steps:`

Include 1–3 concise, actionable bullets when action is appropriate.

Rules:

* use imperative/action-oriented language
* order actions by priority
* first bullet should be the default path when there is a sensible default
* present forks explicitly when a choice is required
* do not repeat the TLDR
* do not make the operator hunt through the body for the next action

Example:

`Next steps:`

* Run Gate C2 validation.
* If validation passes, proceed to Phase 4.
* If validation fails, review `(see §Validation)`.

If no action is appropriate, say:

`Next steps: None — informational only`

or:

`Next steps: Your move — no default action`

**Never invent a next step merely to fill the section.**

## 7. Operational Accuracy

For operational work involving repositories, files, commands, deletions, migrations, disk usage, scraping, commits, or validation:

Clearly distinguish between:

* **Observed** — confirmed from the project/system
* **Executed** — actually performed
* **Proposed** — recommended but not performed
* **Blocked** — cannot currently be completed

Never describe a proposed action as completed.

When relevant, include concrete:

* filenames
* paths
* counts
* sizes
* commit hashes
* command results
* validation results

## 8. Close-Out Override

If the operator explicitly requests a close-out using the project's close-out protocol, the close-out format **replaces the normal `TLDR:` / `Next steps:` footer for that turn**.

Do not stack multiple competing response formats.

The close-out protocol takes precedence for that response.

## 9. Simple Responses

Do not force structure onto simple answers.

A one-line answer may simply be:

`Answer.`

`TLDR: Answer.`

`Next steps: None — informational only`

For a short response, the body may be only one or two sentences.

The required footer must remain brief.

## 10. Style

Prefer:

* direct language
* concrete statements
* bullets for scanability
* tables when comparing structured information
* meaningful headings
* explicit status
* explicit uncertainty
* concrete numbers and names

Avoid:

* filler introductions
* repeating the conclusion
* unnecessary background
* artificial verbosity
* narrating hidden reasoning
* excessive sectioning
* restating the entire body in the TLDR
* inventing actions simply because a `Next steps:` section exists

## Precedence Rules

When instructions conflict, apply these priorities:

1. **Accuracy and truthfulness**
2. **Required close-out/workflow protocol**
3. **Completeness needed to understand or audit the work**
4. **Clear verdict/status**
5. **TLDR brevity**
6. **Next-step brevity**

Never sacrifice required evidence or operational accuracy merely to make the response shorter.

## Core Principle

**The body is the durable record. `TLDR:` is the fast state summary. `Next steps:` is the action lane.**

The operator should be able to:

1. See the verdict immediately.
2. Scan `TLDR:` in seconds to understand what is true now.
3. Scan `Next steps:` to know what happens next.
4. Use `(see §X)` to drill into supporting detail only when needed.

### Canonical Shape (when depth is earned)

Use this structure only when the task warrants it:

```
<verdict / outcome>

§ Result
<essential result>

§ Changes
<what changed>

§ Evidence
<supporting evidence>

§ Validation
<verification>

§ Blockers
<only if applicable>

TLDR:
* <current state>
* <important delta / blocker>
* (see §X)

Next steps:
* <default action>
* <additional action or explicit fork>
```
