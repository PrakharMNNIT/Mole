# Agent skill packs — curated reference

Curated third-party skill systems for super-pro developer workflows on Mole. **Do not** bulk-install Microsoft’s full skills catalog (context rot). Prefer the core 10 below plus stack-specific packs when needed.

## Core 10 (installed for this repo)

| Pack | Upstream | Install path | In-repo vendor prefix |
| --- | --- | --- | --- |
| **pstack** | [cursor/plugins/pstack](https://github.com/cursor/plugins/tree/main/pstack) | Cursor marketplace plugin (native) | `pstack-*` |
| **superpowers** | [obra/superpowers](https://github.com/obra/superpowers) | `npx skills add obra/superpowers -g -a cursor` | *(marketplace — not vendored)* |
| **mattpocock** | [mattpocock/skills](https://github.com/mattpocock/skills) | `npx skills add mattpocock/skills -g -a cursor` | `mattpocock-*` |
| **gstack** | [garrytan/gstack](https://github.com/garrytan/gstack) | `scripts/install-gstack-cursor.sh` (runtime + slash aliases) | `gstack-*` |
| **shadcn** | [shadcn/ui](https://github.com/shadcn/ui) | `npx skills add shadcn/ui -s shadcn` | `shadcn-shadcn` |
| **trailofbits** | [trailofbits/skills](https://github.com/trailofbits/skills) | `npx skills add trailofbits/skills -g -a cursor` | `trailofbits-*` |
| **agent-browser** | [vercel-labs/agent-browser](https://github.com/vercel-labs/agent-browser) | `npx skills add vercel-labs/agent-browser -g -a cursor` | `agent-browser` |
| **agent-skills** | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | `npx skills add vercel-labs/agent-skills -g -a cursor` | `vercel-*` |
| **find-skills** | [vercel-labs/skills](https://github.com/vercel-labs/skills) | `npx skills add vercel-labs/skills -g -a cursor` | `find-skills` |
| **compound-engineering** | [EveryInc/compound-engineering-plugin](https://github.com/EveryInc/compound-engineering-plugin) | `npx skills add EveryInc/compound-engineering-plugin -g -a cursor` | `ce-*`, `lfg` |
| **praxstack** | [praxstack/skills-and-personas](https://github.com/praxstack/skills-and-personas) | `scripts/install-praxstack-skills.sh` | `apex-*`, `backend-pe*`, `constellation-team`, etc. |

Install helpers:

```bash
./scripts/install-agent-skills.sh      # portable packs (npx skills)
./scripts/install-gstack-cursor.sh     # gstack runtime + /plan-ceo-review aliases
./scripts/install-praxstack-skills.sh  # goals/skills/personas from praxstack repo
./scripts/vendor-agent-skills.sh       # copy into .claude/skills/ + .agents/skills/
```

### praxstack/skills-and-personas

Personal workflow layer: 41 canonical skills (`new-skills/`), 87 extended skills (`skills/`), personas, and lifecycle prompts.

| Layer | Path after install | Use |
| --- | --- | --- |
| Canonical skills | `~/.cursor/skills/` (from `new-skills/`) | `apex-autonomous-mode`, `backend-pe`, `constellation-team`, `kingmode`, `principal-engineer`, … |
| Extended catalog | `~/.agents/skills/` + symlinks | `teach-pro-max`, `brain-ops`, `research-compendium`, … |
| Personas | `~/.cursor/personas-praxstack/` | `personas/`, `md-personas/`, `team-personas/`, `.claude/agents/` |
| Lifecycle prompts | `~/.cursor/personas-praxstack/prompts/` | High-End Operator (Think→Ship), APEX (`APEX-CORE.md`) |

Where both trees share a slug (e.g. `backend-pe`), the canonical `new-skills/` copy wins in `~/.cursor/skills/`.

## Also worth knowing (selective use)

| Pack | Notes |
| --- | --- |
| [anthropics/skills](https://github.com/anthropics/skills) | Official Agent Skills spec examples; good templates |
| [github/spec-kit](https://github.com/github/spec-kit) | Spec-driven development CLI + skills |
| [github/awesome-copilot](https://github.com/github/awesome-copilot) | Index of Copilot/custom prompts — cherry-pick only |
| [microsoft/skills](https://github.com/microsoft/skills) | Large catalog — install targeted skills only |
| **AWS / Cloudflare / Supabase** | Use provider docs + narrow stack skills when touching those surfaces |

## Mole-specific warnings

- **`CLAUDE.md` is a symlink to `AGENTS.md`.** Do not run gstack skills that rewrite `CLAUDE.md` (`gstack-sync-gbrain`, `gstack-ship`, `gstack-review` routing blocks). Use Mole-native skills: `bugs`, `mole`, `release-flow`, `release-notes`.
- **gstack slash commands:** Cursor’s `--host cursor` installer emits `gstack-*` directories. Use `scripts/install-gstack-cursor.sh` to add unprefixed aliases so `/plan-ceo-review` appears (workaround for [gstack#2361](https://github.com/garrytan/gstack/issues/2361)).
- **Tests:** `MOLE_TEST_NO_AUTH=1`, `TERM=xterm-256color` for full Bats suite.

## graphify

[Graphify-Labs/graphify](https://github.com/Graphify-Labs/graphify) builds a queryable code graph. Output: `graphify-out/` (`GRAPH_REPORT.md`, `graph.json`, `graph.html`). See `graphify-out/README.md`.
