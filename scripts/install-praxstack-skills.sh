#!/usr/bin/env bash
# Install praxstack/skills-and-personas for Cursor (global + canonical new-skills).
# Repo: https://github.com/praxstack/skills-and-personas
set -euo pipefail

REPO_URL="${PRAXSTACK_REPO_URL:-https://github.com/praxstack/skills-and-personas.git}"
CLONE_DEST="${PRAXSTACK_DEST:-$HOME/skills-and-personas}"
CURSOR_SKILLS="${CURSOR_SKILLS:-$HOME/.cursor/skills}"
PERSONAS_DEST="${PRAXSTACK_PERSONAS_DEST:-$HOME/.cursor/personas-praxstack}"
SKILLS=(npx -y skills@latest add)

if [ ! -d "$CLONE_DEST/.git" ]; then
    git clone --depth 1 "$REPO_URL" "$CLONE_DEST"
fi

echo "==> portable install (skills/ extended catalog)"
"${SKILLS[@]}" praxstack/skills-and-personas --skill '*' -g -a cursor -y

echo "==> canonical new-skills/ -> $CURSOR_SKILLS"
mkdir -p "$CURSOR_SKILLS"
for skill_dir in "$CLONE_DEST"/new-skills/*/; do
    [ -d "$skill_dir" ] || continue
    name="$(basename "$skill_dir")"
    [ "$name" = "_audit" ] && continue
    target="$CURSOR_SKILLS/$name"
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "skip (existing dir): $target" >&2
        continue
    fi
    ln -sfn "$skill_dir" "$target"
done

echo "==> symlink extended-only skills from ~/.agents/skills"
if [ -d "$HOME/.agents/skills" ]; then
    for skill_dir in "$HOME/.agents/skills"/*/; do
        [ -d "$skill_dir" ] || continue
        name="$(basename "$skill_dir")"
        target="$CURSOR_SKILLS/$name"
        [ -e "$target" ] && continue
        ln -sfn "$skill_dir" "$target"
    done
fi

echo "==> personas + prompts -> $PERSONAS_DEST"
mkdir -p "$PERSONAS_DEST"
ln -sfn "$CLONE_DEST/personas" "$PERSONAS_DEST/personas"
ln -sfn "$CLONE_DEST/md-personas" "$PERSONAS_DEST/md-personas"
ln -sfn "$CLONE_DEST/team-personas" "$PERSONAS_DEST/team-personas"
ln -sfn "$CLONE_DEST/prompts" "$PERSONAS_DEST/prompts"
ln -sfn "$CLONE_DEST/.claude/agents" "$PERSONAS_DEST/claude-agents"

canonical_count="$(find "$CLONE_DEST/new-skills" -mindepth 1 -maxdepth 1 -type d ! -name '_audit' | wc -l | tr -d ' ')"
cursor_count="$(find "$CURSOR_SKILLS" -mindepth 1 -maxdepth 1 | wc -l | tr -d ' ')"

echo "praxstack repo:     $CLONE_DEST"
echo "canonical skills:   $canonical_count"
echo "cursor skills dir:  $cursor_count entries"
echo "personas:           $PERSONAS_DEST"
echo "lifecycle prompts:  $PERSONAS_DEST/prompts/high-end-operator/"
echo "APEX contract:      $PERSONAS_DEST/prompts/apex/APEX-CORE.md"

if [ -f "$CURSOR_SKILLS/apex-autonomous-mode/SKILL.md" ] || [ -f "$CURSOR_SKILLS/autonomous-orchestrion/SKILL.md" ]; then
    echo "verify: praxstack skills discoverable"
else
    echo "warning: expected praxstack skills missing in $CURSOR_SKILLS" >&2
    exit 1
fi
