#!/usr/bin/env bash
# Install recommended portable agent skill packs (global, Cursor-targeted).
# Superpowers is a Cursor marketplace plugin — not vendored here.
set -euo pipefail

SKILLS=(npx -y skills@latest add)

install_pack() {
    local repo="$1"
    shift
    echo "==> $repo $*"
    "${SKILLS[@]}" "$repo" -g -a cursor -y "$@"
}

install_pack obra/superpowers
install_pack trailofbits/skills
install_pack vercel-labs/agent-skills
install_pack vercel-labs/skills # find-skills
install_pack vercel-labs/agent-browser
install_pack EveryInc/compound-engineering-plugin
install_pack mattpocock/skills
install_pack shadcn/ui -s shadcn

# pstack: native Cursor plugin (cursor/plugins/pstack) — already vendored in-repo.
# gstack: scripts/install-gstack-cursor.sh (runtime + slash-command aliases).

echo "Done. Global skills under ~/.agents/skills/ (Cursor copies as needed)."
