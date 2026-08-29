# Graphify output (Mole codebase knowledge graph)

Regenerate locally (no LLM API key required for code-only mode):

```bash
pip install 'git+https://github.com/Graphify-Labs/graphify.git'
graphify extract . --code-only
graphify cluster-only . --no-label
```

Tracked in git: `GRAPH_REPORT.md` (human audit). Large `graph.json` / `graph.html` are gitignored; open `graphify-out/graph.html` after regeneration.

Built from commit noted in the report header.
