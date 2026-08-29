#!/usr/bin/env bash
# Copy global ~/.agents/skills into .claude/skills/ with prefix namespacing
# and mirror symlinks under .agents/skills/ (per VENDORED_SKILLS.md).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="${SKILLS_SRC:-$HOME/.agents/skills}"
CLAUDE_SKILLS="$ROOT/.claude/skills"
AGENTS_SKILLS="$ROOT/.agents/skills"

mkdir -p "$CLAUDE_SKILLS" "$AGENTS_SKILLS"

vendor_one() {
    local src_name="$1"
    local dest_prefix="$2"
    local src="$SRC/$src_name"
    local dest_name="${dest_prefix}${src_name}"
    local dest="$CLAUDE_SKILLS/$dest_name"

    [ -d "$src" ] || {
        echo "skip missing: $src_name" >&2
        return 0
    }
    [ -f "$src/SKILL.md" ] || {
        echo "skip no SKILL.md: $src_name" >&2
        return 0
    }

    rm -rf "$dest"
    cp -a "$src" "$dest"

    # Relative symlink: .agents/skills/<name> -> ../../.claude/skills/<name>
    ln -sfn "../../.claude/skills/$dest_name" "$AGENTS_SKILLS/$dest_name"
    echo "vendored $dest_name"
}

# trailofbits (security / audit)
for s in "$SRC"/trailmark* "$SRC"/static-analysis* "$SRC"/code-audit* "$SRC"/differential-review* \
    "$SRC"/variant-analysis* "$SRC"/property-based-testing* "$SRC"/build-* "$SRC"/constant-time* \
    "$SRC"/dwarf-expert* "$SRC"/semgrep* "$SRC"/burpsuite* "$SRC"/code-improver* "$SRC"/pr-improver* \
    "$SRC"/skill-improver* "$SRC"/fp-check* "$SRC"/dimensional-analysis* "$SRC"/vulnerability-triage-brocards* \
    "$SRC"/github-triage* "$SRC"/open-sourcing* "$SRC"/writing-lean-proofs* "$SRC"/modern-cpp*; do
    [ -d "$s" ] || continue
    vendor_one "$(basename "$s")" "trailofbits-"
done

# vercel agent-skills + find-skills + agent-browser
for s in "$SRC"/vercel-* "$SRC"/find-skills "$SRC"/agent-browser "$SRC"/web-design-guidelines "$SRC"/writing-guidelines; do
    [ -d "$s" ] || continue
    vendor_one "$(basename "$s")" ""
done

# compound engineering (ce-*)
for s in "$SRC"/ce-* "$SRC"/lfg; do
    [ -d "$s" ] || continue
    vendor_one "$(basename "$s")" ""
done

# shadcn
vendor_one shadcn shadcn-

echo "Vendor complete under $CLAUDE_SKILLS"
