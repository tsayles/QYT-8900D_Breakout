#!/usr/bin/env bash
set -euo pipefail

EXIT_USAGE=1
EXIT_NO_PROJECT=2
EXIT_UNSUPPORTED_FORMAT=4
EXIT_MISSING_FILES=5
EXIT_MISSING_TOOL=6

PROJECT_PATH=""
OUT_DIR="$(pwd)/artifacts/fabrication"
LEGACY_COPY=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    --project)
      PROJECT_PATH="$2"
      shift 2
      ;;
    --out-dir)
      OUT_DIR="$2"
      shift 2
      ;;
    --legacy-copy)
      LEGACY_COPY=true
      shift
      ;;
    *)
      echo "Unknown argument: $1" >&2
      exit "$EXIT_USAGE"
      ;;
  esac
done

if [[ -z "$PROJECT_PATH" ]]; then
  mapfile -t modern_projects < <(find . -type f -name '*.kicad_pro' -not -path './fixtures/*' | sort)
  if [[ ${#modern_projects[@]} -gt 0 ]]; then
    PROJECT_PATH="${modern_projects[0]}"
  else
    mapfile -t legacy_projects < <(find . -type f -name '*.pro' | sort)
    if [[ ${#legacy_projects[@]} -gt 0 ]]; then
      PROJECT_PATH="${legacy_projects[0]}"
    else
      echo "No KiCad project found (.kicad_pro or .pro)." >&2
      exit "$EXIT_NO_PROJECT"
    fi
  fi
fi

if [[ "$PROJECT_PATH" == *.pro ]]; then
  if [[ "$LEGACY_COPY" == true ]]; then
    TEMP_ROOT="$(mktemp -d /tmp/kicad-legacy-XXXXXX)"
    PROJECT_DIR="$(cd "$(dirname "$PROJECT_PATH")" && pwd)"
    PROJECT_BASENAME="$(basename "${PROJECT_PATH%.pro}")"
    DEST_DIR="$TEMP_ROOT/$PROJECT_BASENAME"
    mkdir -p "$DEST_DIR"
    find "$PROJECT_DIR" -maxdepth 1 -type f \
      \( -name "$PROJECT_BASENAME.pro" -o -name "$PROJECT_BASENAME.sch" -o -name "$PROJECT_BASENAME.kicad_pcb" -o -name "$PROJECT_BASENAME-cache.lib" -o -name "$PROJECT_BASENAME.net" -o -name "$PROJECT_BASENAME*.bak" \) \
      -exec cp '{}' "$DEST_DIR" ';'

    cat <<EOF
Legacy project copied to temporary workspace:
  $DEST_DIR

Next steps (non-destructive):
  1) Open the copied project in KiCad 7+.
  2) Save as modern .kicad_pro/.kicad_sch in the temporary workspace.
  3) Run scripts/check-design.sh and scripts/export-fabrication.sh against the temporary converted copy.

Historical source files in the repository were not modified.
EOF
    exit "$EXIT_UNSUPPORTED_FORMAT"
  fi

  echo "Unsupported legacy project format: $PROJECT_PATH" >&2
  echo "Re-run with --legacy-copy to prepare a temporary conversion workspace in /tmp." >&2
  exit "$EXIT_UNSUPPORTED_FORMAT"
fi

BASE="${PROJECT_PATH%.kicad_pro}"
PCB_FILE="${BASE}.kicad_pcb"
mkdir -p "$OUT_DIR/gerbers"
mkdir -p "$OUT_DIR/drill"
LOG_FILE="$OUT_DIR/export.log"

if ! command -v kicad-cli >/dev/null 2>&1; then
  echo "kicad-cli not found. Install KiCad before exporting fabrication files." | tee "$LOG_FILE"
  exit "$EXIT_MISSING_TOOL"
fi

if [[ ! -f "$PROJECT_PATH" || ! -f "$PCB_FILE" ]]; then
  echo "Missing project or PCB file for fabrication export." | tee "$LOG_FILE"
  echo "  project: $PROJECT_PATH" | tee -a "$LOG_FILE"
  echo "  pcb:     $PCB_FILE" | tee -a "$LOG_FILE"
  exit "$EXIT_MISSING_FILES"
fi

kicad-cli pcb export gerbers --output "$OUT_DIR/gerbers" "$PCB_FILE" 2>&1 | tee -a "$LOG_FILE"
kicad-cli pcb export drill --output "$OUT_DIR/drill" "$PCB_FILE" 2>&1 | tee -a "$LOG_FILE"

echo "Fabrication files exported to $OUT_DIR"
