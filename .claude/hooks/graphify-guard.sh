#!/usr/bin/env bash
# Portable graphify PreToolUse hook: no-op when graphify is absent.
set -euo pipefail
mode="${1:-}"
if [ -z "$mode" ]; then
    exit 0
fi
if ! command -v graphify > /dev/null 2>&1; then
    exit 0
fi
exec graphify hook-guard "$mode"
