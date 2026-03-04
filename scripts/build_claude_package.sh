#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="$ROOT_DIR/ports/claude/claude-import"
DIST_DIR="$ROOT_DIR/dist"
ZIP_PATH="$DIST_DIR/ux-research-agent-claude.zip"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR/subskills" "$DIST_DIR"

# Claude requires exactly one SKILL.md in the uploaded package
cp "$ROOT_DIR/SKILL.md" "$OUT_DIR/SKILL.md"

# Keep supporting assets, but avoid additional SKILL.md files
cp -R "$ROOT_DIR/config" "$OUT_DIR/"
cp -R "$ROOT_DIR/styles" "$OUT_DIR/"
cp -R "$ROOT_DIR/references" "$OUT_DIR/"
cp -R "$ROOT_DIR/templates" "$OUT_DIR/"

# Flatten subskills as plain markdown references (not SKILL.md)
for d in "$ROOT_DIR"/subskills/*; do
  [ -d "$d" ] || continue
  name="$(basename "$d")"
  if [ -f "$d/SKILL.md" ]; then
    cp "$d/SKILL.md" "$OUT_DIR/subskills/${name}.md"
  fi
done

# Optional docs for context
[ -f "$ROOT_DIR/README.md" ] && cp "$ROOT_DIR/README.md" "$OUT_DIR/README.md"

# Build zip
(
  cd "$ROOT_DIR/ports/claude"
  rm -f "$ZIP_PATH"
  zip -r "$ZIP_PATH" claude-import >/dev/null
)

count=$(find "$OUT_DIR" -name 'SKILL.md' | wc -l | tr -d ' ')
echo "Built: $ZIP_PATH"
echo "SKILL.md count in package: $count"
if [ "$count" != "1" ]; then
  echo "ERROR: Claude package must contain exactly one SKILL.md"
  exit 1
fi
