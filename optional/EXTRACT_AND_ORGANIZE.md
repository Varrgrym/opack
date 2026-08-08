# Extract & organize (dumps / chats / messy inputs)

**Status:** decided · repeated operator pattern  
**Use when:** “analyze this and extract what is useful” · “organize the repo” · ChatGPT/export dumps · long notes · Downloads drops  
**Companion:** Mode **B** (design notebook) · `INTENT_EXPAND.md` · FIC (`CHUNKING.md`)  
**NOT:** paste whole dumps into Layer A · vendor Garden Immune from chat exports

---

## Phrase lock

| Operator says | Do |
|---------------|-----|
| **organize the repo** / keep it maintained | Coherence pass: structure · naming · drift · duplication · what to consolidate; prefer maintain over feature add |
| **analyze this and extract what is useful** | Filter → map to existing kits → land only net-new · park gaps · discard noise |
| Drop a path/file (Downloads, .txt export, transcript) | Same extract protocol; cite source path |

Do **not** ask “what format?” if Mode B + extract protocol fits. Open with runtime stanza on substantial extracts.

---

## Extract protocol

```text
1. SCOPE     What is the artifact? (chat export, notes, video transcript, …)
2. NOISE     Strip unrelated threads (games tier lists, ads, one-off trivia)
3. SIGNAL    Label: fact · observation · conclusion · assumption · open Q · recommendation · decided · NOT · parked
4. MAP       Already in opack / hub? → note “covered” (don’t duplicate)
5. NET-NEW   Only land what improves kits or overlay (propose → confirm if Layer A)
6. ORGANIZE  Place under optional/ · overlay log — keep pack thin; prefer archive/ over delete
7. STOP      When remaining text is noise or already covered
```

**Pin:** Extract for **leverage**, not completeness. A 10k-line ChatGPT export may yield one page of net-new doctrine.

---

## Organize-the-repo (maintenance)

When asked to organize / maintain the repo (often):

1. Inventory: what kits/docs exist; index drift (README, PASTEABLES, digests)  
2. Duplication: merge overlapping optional docs; fix broken cross-links  
3. Standing prompts / overlay: still true?  
4. Install paths: `--with-seats` / `--with-workflow-lab` still accurate?  
5. Decide: consolidate vs leave · do not invent new subsystems for neatness  
6. Close: what changed · what left alone · next maintain pass if any  

Pairs with Mode D cold-lead restraint: **coherence over feature count**.

---

## Runtime defaults

```text
Runtime: Mode=B (or D if whole-repo maintain) · Seat=Engineer · Multitask=off · Plan=no
```

Large dump → chunk for processing → synthesize before claiming “fully extracted.”

---

## Source note — ChatGPT “Prompt Formation” export (2026-08-08)

Example path: `Downloads/ChatGPT-Prompt Formation.txt` (~10k lines).

| Region | Content | Disposition |
|--------|---------|-------------|
| Early | MonMate / tier lists / unrelated | **Noise** — discard |
| Mid | Garden fine-tooth / consolidation / “should we build?” | Hub/Garden — **not** Layer A; mirrored in analysis kits |
| Mid | Mode C-style roadmap prompts (milestones, stop points) | **Covered** — `AGENTS.md` Mode C |
| Late | Prompt/context/spec/gauntlet · Adaptive · 5W1H · chunk pin · lab scope | **Covered** — workflow-lab optional kits |
| — | Net-new after this extract | **None** beyond this extract/organize pattern itself |

Re-running extract on the same export should stop at “already covered.”
