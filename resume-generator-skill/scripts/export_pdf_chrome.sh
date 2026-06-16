#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <input.html> <output.pdf> [chrome-user-data-dir]" >&2
  exit 2
fi

INPUT_HTML="$1"
OUTPUT_PDF="$2"
USER_DATA_DIR="${3:-/tmp/resume-pdf-export-chrome}"

if [[ ! -f "$INPUT_HTML" ]]; then
  echo "Input HTML not found: $INPUT_HTML" >&2
  exit 1
fi

CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
if [[ ! -x "$CHROME" ]]; then
  CHROME="$(command -v google-chrome || command -v chromium || true)"
fi
if [[ -z "${CHROME:-}" || ! -x "$CHROME" ]]; then
  echo "Chrome/Chromium not found" >&2
  exit 1
fi

INPUT_URL="file://$(python3 - <<PY
from pathlib import Path
from urllib.parse import quote
print(quote(str(Path('$INPUT_HTML').resolve())))
PY
)"

"$CHROME" --headless=new \
  --disable-gpu \
  --no-first-run \
  --disable-background-networking \
  --disable-component-update \
  --disable-sync \
  --disable-crash-reporter \
  --disable-breakpad \
  --no-pdf-header-footer \
  --allow-file-access-from-files \
  --user-data-dir="$USER_DATA_DIR" \
  --print-to-pdf="$OUTPUT_PDF" \
  "$INPUT_URL"

echo "$OUTPUT_PDF"
