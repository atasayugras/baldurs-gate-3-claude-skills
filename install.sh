#!/usr/bin/env bash
# BG3 Claude Skills - macOS/Linux installer
# Copies all skills to ~/.claude/skills/ and agents to ~/.claude/agents/

set -e

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
SKILLS_SOURCE="$REPO_ROOT/skills"
SKILLS_DEST="$HOME/.claude/skills"

AGENTS_SOURCE="$REPO_ROOT/.claude/agents"
AGENTS_DEST="$HOME/.claude/agents"

# Install skills
mkdir -p "$SKILLS_DEST"

skill_count=0
for skill_dir in "$SKILLS_SOURCE"/*/; do
    name=$(basename "$skill_dir")
    target="$SKILLS_DEST/$name"
    if [ -d "$target" ]; then
        echo "Updating skill:  $name"
        rm -rf "$target"
    else
        echo "Installing skill: $name"
    fi
    cp -r "$skill_dir" "$target"
    skill_count=$((skill_count + 1))
done

# Install agents
agent_count=0
if [ -d "$AGENTS_SOURCE" ]; then
    mkdir -p "$AGENTS_DEST"
    for agent_dir in "$AGENTS_SOURCE"/*/; do
        name=$(basename "$agent_dir")
        target="$AGENTS_DEST/$name"
        if [ -d "$target" ]; then
            echo "Updating agent:  $name"
            rm -rf "$target"
        else
            echo "Installing agent: $name"
        fi
        cp -r "$agent_dir" "$target"
        agent_count=$((agent_count + 1))
    done
fi

echo ""
echo "Done."
echo "  $skill_count skill(s) installed to $SKILLS_DEST"
if [ "$agent_count" -gt 0 ]; then
    echo "  $agent_count agent(s) installed to $AGENTS_DEST"
fi
echo ""
echo "Restart Claude Code to pick up the new skills and agents."
echo ""
echo "Slash commands:"
for skill_dir in "$SKILLS_SOURCE"/*/; do
    echo "  /$(basename "$skill_dir")"
done
echo ""
echo "Agents:"
if [ -d "$AGENTS_SOURCE" ]; then
    for agent_dir in "$AGENTS_SOURCE"/*/; do
        echo "  $(basename "$agent_dir")"
    done
fi
