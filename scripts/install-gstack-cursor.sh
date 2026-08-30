#!/usr/bin/env bash
# Install gstack runtime + Cursor skills with unprefixed slash-command discoverability.
# Cursor's --host cursor installer emits gstack-* directory names; slash commands like
# /plan-ceo-review require unprefixed ~/.cursor/skills/<name>/ entries (gstack #2361).
set -euo pipefail

GSTACK_DEST="${GSTACK_DEST:-$HOME/.cursor/skills/gstack}"
CURSOR_SKILLS="${CURSOR_SKILLS:-$HOME/.cursor/skills}"
REPO_URL="${GSTACK_REPO_URL:-https://github.com/garrytan/gstack.git}"

if [ ! -d "$GSTACK_DEST/.git" ]; then
    mkdir -p "$(dirname "$GSTACK_DEST")"
    git clone --depth 1 "$REPO_URL" "$GSTACK_DEST"
fi

# setup may exit 1 on checklist.md self-symlink when runtime root is ~/.cursor/skills/gstack (#2361)
setup_log="$(mktemp)"
trap 'rm -f "$setup_log"' EXIT
if ! (cd "$GSTACK_DEST" && ./setup --host cursor > "$setup_log" 2>&1); then
    if grep -qE 'checklist\.md|File exists' "$setup_log"; then
        echo "warning: gstack setup returned nonzero (benign checklist.md ln); continuing" >&2
    else
        cat "$setup_log" >&2
        exit 1
    fi
fi

# Workaround: link gstack-<skill> → <skill> so /plan-ceo-review et al. appear in Cursor.
linked=0
for prefixed in "$CURSOR_SKILLS"/gstack-*/; do
    [ -d "$prefixed" ] || continue
    base="$(basename "$prefixed")"
    [ "$base" = "gstack" ] && continue
    short="${base#gstack-}"
    target="$CURSOR_SKILLS/$short"
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "skip (existing dir): $target" >&2
        continue
    fi
    ln -sfn "$prefixed" "$target"
    linked=$((linked + 1))
done

echo "gstack runtime: $GSTACK_DEST"
echo "cursor skills:  $CURSOR_SKILLS"
echo "unprefixed aliases linked: $linked"
if [ -f "$CURSOR_SKILLS/plan-ceo-review/SKILL.md" ]; then
    echo "verify: plan-ceo-review discoverable"
else
    echo "warning: plan-ceo-review alias missing" >&2
    exit 1
fi
