#!/usr/bin/env bash
# Install operator-cursor-pack into a target project.
# Usage: ./install.sh /path/to/project [--with-seats] [--garden-sibling] [--force-workflow]
set -euo pipefail

PACK_ROOT="$(cd "$(dirname "$0")" && pwd)"
TARGET=""
WITH_SEATS=0
GARDEN_SIBLING=0
FORCE_WORKFLOW=0

usage() {
  echo "Usage: $0 /path/to/project [--with-seats] [--garden-sibling] [--force-workflow]" >&2
  exit 2
}

for arg in "$@"; do
  case "$arg" in
    --with-seats) WITH_SEATS=1 ;;
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

if [[ "$GARDEN_SIBLING" -eq 1 ]]; then
  cp "$PACK_ROOT/optional/GARDEN_SIBLING.md" "$TARGET/GARDEN_SIBLING.md"
  echo "installed GARDEN_SIBLING.md — fill HELPER_*_ROOT"
fi

echo "installed operator pack → $TARGET"
echo "  AGENTS.md"
echo "  OPERATOR_WORKFLOW.md"
echo "  .cursor/rules/follow-operator-pack.mdc"
