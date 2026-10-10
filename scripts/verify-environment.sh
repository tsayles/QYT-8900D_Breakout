#!/usr/bin/env bash
set -euo pipefail

EXIT_MISSING_TOOL=2
EXIT_MISSING_LIB=3
EXIT_UNSUPPORTED_CLI=4

REPORT_DIR=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --report-dir)
      REPORT_DIR="$2"
      shift 2
      ;;
    *)
      echo "Unknown argument: $1" >&2
      exit 1
      ;;
  esac
done

if [[ -z "${REPORT_DIR}" ]]; then
  REPORT_DIR="$(pwd)/artifacts/verify-environment"
fi

mkdir -p "$REPORT_DIR"

if ! command -v kicad-cli >/dev/null 2>&1; then
  echo "kicad-cli not found. Install KiCad before running verification." | tee "$REPORT_DIR/error.log"
  exit "$EXIT_MISSING_TOOL"
fi

if ! command -v git >/dev/null 2>&1; then
  echo "git not found. Install git before running verification." | tee -a "$REPORT_DIR/error.log"
  exit "$EXIT_MISSING_TOOL"
fi

if ! command -v python3 >/dev/null 2>&1; then
  echo "python3 not found. Install python3 before running verification." | tee -a "$REPORT_DIR/error.log"
  exit "$EXIT_MISSING_TOOL"
fi

if ! kicad-cli sch --help | grep -q '\<erc\>'; then
  echo "kicad-cli does not provide 'sch erc'. Use a KiCad version with headless ERC support (KiCad 8+)." | tee -a "$REPORT_DIR/error.log"
  exit "$EXIT_UNSUPPORTED_CLI"
fi

if ! kicad-cli pcb --help | grep -q '\<drc\>'; then
  echo "kicad-cli does not provide 'pcb drc'. Use a KiCad version with headless DRC support (KiCad 8+)." | tee -a "$REPORT_DIR/error.log"
  exit "$EXIT_UNSUPPORTED_CLI"
fi

if [[ ! -d /usr/share/kicad/symbols || ! -d /usr/share/kicad/footprints ]]; then
  echo "Required KiCad symbols/footprints not found under /usr/share/kicad/." | tee -a "$REPORT_DIR/error.log"
  exit "$EXIT_MISSING_LIB"
fi

{
  echo "kicad_cli_version=$(kicad-cli version)"
  echo "git_version=$(git --version)"
  echo "python_version=$(python3 --version)"
  echo "symbols_dir=/usr/share/kicad/symbols"
  echo "footprints_dir=/usr/share/kicad/footprints"
} | tee "$REPORT_DIR/toolchain.txt"

echo "Environment verification passed. Report: $REPORT_DIR/toolchain.txt"
