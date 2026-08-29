#!/usr/bin/env bash
# Idempotent Cloud Agent bootstrap for Mole (shell + Go).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

export PATH="/usr/local/go/bin:$HOME/.local/bin:$PATH"

need() {
    if ! command -v "$1" > /dev/null 2>&1; then
        echo "missing required tool: $1" >&2
        exit 1
    fi
}

need git
need bash
need go
need python3

# Bats + shell tooling for scripts/test.sh
if ! command -v bats > /dev/null 2>&1; then
    sudo apt-get update -qq
    sudo DEBIAN_FRONTEND=noninteractive apt-get install -y -qq bats shellcheck jq
fi

# graphify (code-only graph; no LLM keys required)
if ! command -v graphify > /dev/null 2>&1; then
    python3 -m pip install --user 'git+https://github.com/Graphify-Labs/graphify.git'
    export PATH="$HOME/.local/bin:$PATH"
fi

make build
make test-go

# Syntax-check shell sources
find bin lib -name '*.sh' -print0 | xargs -0 -n1 bash -n

echo "cloud-agent-install: OK ($(go version | awk '{print $3}'))"
