#!/usr/bin/env bash
set -euo pipefail

EXIT_USAGE=1
EXIT_NO_PROJECT=2
EXIT_UNSUPPORTED_FORMAT=4
EXIT_MISSING_FILES=5
EXIT_MISSING_TOOL=6

PROJECT_PATH=""
REPORTS_DIR="$(pwd)/artifacts/check-design"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --project)
      PROJECT_PATH="$2"
      shift 2
      ;;
    --reports-dir)
      REPORTS_DIR="$2"
      shift 2
      ;;
    *)
      echo "Unknown argument: $1" >&2
      exit "$EXIT_USAGE"
      ;;
  esac
done

mkdir -p "$REPORTS_DIR"

if ! command -v kicad-cli >/dev/null 2>&1; then
  echo "kicad-cli not found. Install KiCad before running design checks." | tee "$REPORTS_DIR/error.log"
  exit "$EXIT_MISSING_TOOL"
fi

if [[ -z "$PROJECT_PATH" ]]; then
  mapfile -t modern_projects < <(find . -type f -name '*.kicad_pro' -not -path './fixtures/*' | sort)
  if [[ ${#modern_projects[@]} -gt 0 ]]; then
    PROJECT_PATH="${modern_projects[0]}"
  else
    mapfile -t legacy_projects < <(find . -type f -name '*.pro' | sort)
    if [[ ${#legacy_projects[@]} -gt 0 ]]; then
      echo "Legacy KiCad project detected (${legacy_projects[0]})." | tee "$REPORTS_DIR/legacy-format.log"
      echo "Headless ERC/DRC requires KiCad 6+ .kicad_pro format." | tee -a "$REPORTS_DIR/legacy-format.log"
      echo "Copy project to a temporary workspace before opening in newer KiCad; never overwrite historical sources." | tee -a "$REPORTS_DIR/legacy-format.log"
      exit "$EXIT_UNSUPPORTED_FORMAT"
    fi
    echo "No KiCad project found (.kicad_pro or .pro)." | tee "$REPORTS_DIR/no-project.log"
    exit "$EXIT_NO_PROJECT"
  fi
fi

if [[ "$PROJECT_PATH" == *.pro ]]; then
  echo "Unsupported legacy project format: $PROJECT_PATH" | tee "$REPORTS_DIR/legacy-format.log"
  echo "Use scripts/export-fabrication.sh --project '$PROJECT_PATH' --legacy-copy for non-destructive legacy testing instructions." | tee -a "$REPORTS_DIR/legacy-format.log"
  exit "$EXIT_UNSUPPORTED_FORMAT"
fi

if [[ ! -f "$PROJECT_PATH" ]]; then
  echo "Project file not found: $PROJECT_PATH" | tee "$REPORTS_DIR/error.log"
  exit "$EXIT_NO_PROJECT"
fi

BASE="${PROJECT_PATH%.kicad_pro}"
SCH_FILE="${BASE}.kicad_sch"
PCB_FILE="${BASE}.kicad_pcb"

if [[ ! -f "$SCH_FILE" || ! -f "$PCB_FILE" ]]; then
  echo "Expected files not found:" | tee "$REPORTS_DIR/error.log"
  echo "  schematic: $SCH_FILE" | tee -a "$REPORTS_DIR/error.log"
  echo "  pcb:       $PCB_FILE" | tee -a "$REPORTS_DIR/error.log"
  exit "$EXIT_MISSING_FILES"
fi

echo "Running schematic PDF export: $SCH_FILE" | tee "$REPORTS_DIR/commands.log"
kicad-cli sch export pdf --output "$REPORTS_DIR/schematic.pdf" "$SCH_FILE" 2>&1 | tee "$REPORTS_DIR/sch-export.log"

echo "Running ERC: $SCH_FILE" | tee -a "$REPORTS_DIR/commands.log"
kicad-cli sch erc --output "$REPORTS_DIR/erc.rpt" "$SCH_FILE" 2>&1 | tee "$REPORTS_DIR/erc.log"

echo "Running DRC: $PCB_FILE" | tee -a "$REPORTS_DIR/commands.log"
kicad-cli pcb drc --output "$REPORTS_DIR/drc.rpt" "$PCB_FILE" 2>&1 | tee "$REPORTS_DIR/drc.log"

echo "Design checks passed for $PROJECT_PATH" | tee -a "$REPORTS_DIR/commands.log"
