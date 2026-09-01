#!/usr/bin/env bash
# Install opack into a target project.
# Usage: ./install.sh /path/to/project [flags]
#   --with-seats --with-workflow-lab --garden-sibling --force-workflow
#   --profile design|capture|product-mvp|garden-plant|garden-hub|machine|idle
#   --dry-run
set -euo pipefail

PACK_ROOT="$(cd "$(dirname "$0")" && pwd)"
TARGET=""
WITH_SEATS=0
WITH_WORKFLOW_LAB=0
GARDEN_SIBLING=0
FORCE_WORKFLOW=0
DRY_RUN=0
PROFILE=""

usage() {
  echo "Usage: $0 /path/to/project [--with-seats] [--with-workflow-lab] [--garden-sibling] [--force-workflow] [--profile NAME] [--dry-run]" >&2
  exit 2
}

apply_profile() {
  case "$1" in
    design|capture|idle)
      ;;
    product-mvp|machine)
      WITH_SEATS=1
      ;;
    garden-plant)
      WITH_SEATS=1
      GARDEN_SIBLING=1
      ;;
    garden-hub)
      WITH_SEATS=1
      WITH_WORKFLOW_LAB=1
      ;;
    *)
      echo "Unknown --profile: $1 (design|capture|product-mvp|garden-plant|garden-hub|machine|idle)" >&2
      exit 2
      ;;
  esac
}

ARGS=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --with-seats) WITH_SEATS=1; shift ;;
    --with-workflow-lab) WITH_WORKFLOW_LAB=1; shift ;;
    --garden-sibling) GARDEN_SIBLING=1; shift ;;
    --force-workflow) FORCE_WORKFLOW=1; shift ;;
    --dry-run) DRY_RUN=1; shift ;;
    --profile)
      shift
      [[ $# -gt 0 ]] || usage
      PROFILE="$1"
      apply_profile "$PROFILE"
      shift
      ;;
    -h|--help) usage ;;
    *)
      ARGS+=("$1")
      shift
      ;;
  esac
done

[[ ${#ARGS[@]} -eq 1 ]] || usage
TARGET="$(cd "${ARGS[0]}" && pwd)"

run() {
  if [[ "$DRY_RUN" -eq 1 ]]; then
    echo "DRY: $*"
  else
    eval "$@"
  fi
}

echo "target=$TARGET"
[[ -n "$PROFILE" ]] && echo "profile=$PROFILE"
echo "flags: seats=$WITH_SEATS lab=$WITH_WORKFLOW_LAB sibling=$GARDEN_SIBLING force_workflow=$FORCE_WORKFLOW dry_run=$DRY_RUN"

run "mkdir -p \"$TARGET/.cursor/rules\""
run "mkdir -p \"$TARGET/docs\""
run "cp \"$PACK_ROOT/AGENTS.md\" \"$TARGET/AGENTS.md\""
run "cp \"$PACK_ROOT/cursor-rules/follow-operator-pack.mdc\" \"$TARGET/.cursor/rules/follow-operator-pack.mdc\""
run "cp \"$PACK_ROOT/optional/CLOSE_CHAT.md\" \"$TARGET/docs/CLOSE_CHAT.md\""

WF="$TARGET/OPERATOR_WORKFLOW.md"
if [[ -f "$WF" && "$FORCE_WORKFLOW" -eq 0 ]]; then
  echo "keep existing OPERATOR_WORKFLOW.md (use --force-workflow to replace)"
else
  run "cp \"$PACK_ROOT/templates/OPERATOR_WORKFLOW.md\" \"$WF\""
fi

if [[ "$WITH_SEATS" -eq 1 ]]; then
  run "mkdir -p \"$TARGET/docs\""
  run "cp \"$PACK_ROOT/optional/CURSOR_MODEL_SEATS.md\" \"$TARGET/docs/CURSOR_MODEL_SEATS.md\""
  run "cp \"$PACK_ROOT/optional/MODEL_SEAT_PLAYBOOKS.md\" \"$TARGET/docs/MODEL_SEAT_PLAYBOOKS.md\""
  run "cp \"$PACK_ROOT/optional/SEAT_PROMPTS.md\" \"$TARGET/docs/SEAT_PROMPTS.md\""
  echo "seats + playbooks + seat prompts → docs/"
fi

if [[ "$WITH_WORKFLOW_LAB" -eq 1 ]]; then
  run "mkdir -p \"$TARGET/docs/workflow-lab\""
  for f in \
    WORKFLOW_LAB_DIGEST.md \
    PASTEABLES_INDEX.md \
    INTENT_EXPAND.md \
    RUNTIME.md \
    SPEC_BUILD.md \
    MODE_D.md \
    PROJECT_REVIEW.md \
    OWNERSHIP_TAKEOVER.md \
    DESIGN_NOTEBOOK.md \
    REPOSITORY_AUDIT.md \
    EXECUTION_ROADMAP.md \
    EXPLORATORY_ANALYSIS.md \
    RESEARCH_REPORT.md \
    PLAN_APPROVAL.md \
    PHASE_PIPELINE.md \
    PROMPT_BUNDLES.md \
    CHUNKING.md \
    EXTRACT_AND_ORGANIZE.md \
    VIDEO_EXTRACT.md \
    AGENTIC_INTERACTION.md \
    CURSOR_CHAT_HYGIENE.md \
    CLOSE_CHAT.md \
    OPERATOR_REPLY_PROTOCOL.md \
    DAY_PROMPTS.md \
    ORGANISM_PLACEMENT.md \
    INSTALL_PROFILES.md
  do
    run "cp \"$PACK_ROOT/optional/$f\" \"$TARGET/docs/workflow-lab/$f\""
  done
  run "cp \"$PACK_ROOT/cursor-rules/workflow-lab.mdc\" \"$TARGET/.cursor/rules/workflow-lab.mdc\""
  echo "workflow-lab kits → docs/workflow-lab/ (archive/ not copied)"
fi

if [[ "$GARDEN_SIBLING" -eq 1 ]]; then
  run "cp \"$PACK_ROOT/optional/GARDEN_SIBLING.md\" \"$TARGET/GARDEN_SIBLING.md\""
  echo "GARDEN_SIBLING.md — fill HELPER_*_ROOT"
fi

echo "installed operator pack → $TARGET"
echo "  AGENTS.md"
echo "  docs/CLOSE_CHAT.md"
echo "  OPERATOR_WORKFLOW.md"
echo "  .cursor/rules/follow-operator-pack.mdc"
