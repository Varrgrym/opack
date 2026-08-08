#!/usr/bin/env bash
# Install operator-cursor-pack into a target project.
# Usage: ./install.sh /path/to/project [--with-seats] [--with-workflow-lab] [--garden-sibling] [--force-workflow]
set -euo pipefail

PACK_ROOT="$(cd "$(dirname "$0")" && pwd)"
TARGET=""
WITH_SEATS=0
WITH_WORKFLOW_LAB=0
GARDEN_SIBLING=0
FORCE_WORKFLOW=0

usage() {
  echo "Usage: $0 /path/to/project [--with-seats] [--with-workflow-lab] [--garden-sibling] [--force-workflow]" >&2
  exit 2
}

for arg in "$@"; do
  case "$arg" in
    --with-seats) WITH_SEATS=1 ;;
    --with-workflow-lab) WITH_WORKFLOW_LAB=1 ;;
    --garden-sibling) GARDEN_SIBLING=1 ;;
    --force-workflow) FORCE_WORKFLOW=1 ;;
    -h|--help) usage ;;
    *)
      if [[ -z "$TARGET" ]]; then
        TARGET="$arg"
      else
        echo "Unexpected arg: $arg" >&2
        usage
      fi
      ;;
  esac
done

[[ -n "$TARGET" ]] || usage
TARGET="$(cd "$TARGET" && pwd)"

mkdir -p "$TARGET/.cursor/rules"

cp "$PACK_ROOT/AGENTS.md" "$TARGET/AGENTS.md"
cp "$PACK_ROOT/cursor-rules/follow-operator-pack.mdc" "$TARGET/.cursor/rules/follow-operator-pack.mdc"

WF="$TARGET/OPERATOR_WORKFLOW.md"
if [[ -f "$WF" && "$FORCE_WORKFLOW" -eq 0 ]]; then
  echo "keep existing OPERATOR_WORKFLOW.md (use --force-workflow to replace)"
else
  cp "$PACK_ROOT/templates/OPERATOR_WORKFLOW.md" "$WF"
fi

if [[ "$WITH_SEATS" -eq 1 ]]; then
  mkdir -p "$TARGET/docs"
  cp "$PACK_ROOT/optional/CURSOR_MODEL_SEATS.md" "$TARGET/docs/CURSOR_MODEL_SEATS.md"
  cp "$PACK_ROOT/optional/MODEL_SEAT_PLAYBOOKS.md" "$TARGET/docs/MODEL_SEAT_PLAYBOOKS.md"
  echo "installed seats + playbooks → docs/"
fi

if [[ "$WITH_WORKFLOW_LAB" -eq 1 ]]; then
  mkdir -p "$TARGET/docs/workflow-lab"
  for f in \
    WORKFLOW_LAB_DIGEST.md \
    PASTEABLES_INDEX.md \
    ANALYSIS_PROMPT_FORMATION.md \
    AI_WORKFLOW_STACK.md \
    ADAPTIVE_TASK_EXPANSION.md \
    UNIVERSAL_DEEP_REASONING.md \
    CHUNKING.md \
    RUNTIME_CONTROL.md \
    FAILURE_MODES.md \
    EXTERNAL_READING.md \
    EXTRACT_AND_ORGANIZE.md \
    PRP_TEMPLATE.md \
    EXAMPLES_CONVENTION.md \
    MODE_D_COLD_LEAD.md \
    INSTALL_PROFILES.md
  do
    cp "$PACK_ROOT/optional/$f" "$TARGET/docs/workflow-lab/$f"
  done
  if [[ -f "$PACK_ROOT/cursor-rules/workflow-lab.mdc" ]]; then
    cp "$PACK_ROOT/cursor-rules/workflow-lab.mdc" "$TARGET/.cursor/rules/workflow-lab.mdc"
  elif [[ -f "$PACK_ROOT/.cursor/rules/workflow-lab.mdc" ]]; then
    cp "$PACK_ROOT/.cursor/rules/workflow-lab.mdc" "$TARGET/.cursor/rules/workflow-lab.mdc"
  fi
  echo "installed workflow-lab kits → docs/workflow-lab/"
fi

if [[ "$GARDEN_SIBLING" -eq 1 ]]; then
  cp "$PACK_ROOT/optional/GARDEN_SIBLING.md" "$TARGET/GARDEN_SIBLING.md"
  echo "installed GARDEN_SIBLING.md — fill HELPER_*_ROOT"
fi

echo "installed operator pack → $TARGET"
echo "  AGENTS.md"
echo "  OPERATOR_WORKFLOW.md"
echo "  .cursor/rules/follow-operator-pack.mdc"
