#!/usr/bin/env bash
# BG3 Claude Skills - macOS/Linux installer

set -e

SOURCE="$(cd "$(dirname "$0")/skills" && pwd)"
DEST="$HOME/.claude/skills"

mkdir -p "$DEST"

count=0
for skill_dir in "$SOURCE"/*/; do
    name=$(basename "$skill_dir")
    target="$DEST/$name"
    if [ -d "$target" ]; then
        echo "Updating: $name"
        rm -rf "$target"
    else
        echo "Installing: $name"
    fi
    cp -r "$skill_dir" "$target"
    count=$((count + 1))
done

echo ""
echo "Done. $count skills installed to $DEST"
echo "Restart Claude Code to pick up the new skills."
echo ""
echo "Available commands:"
for skill_dir in "$SOURCE"/*/; do
    echo "  /$(basename "$skill_dir")"
done
