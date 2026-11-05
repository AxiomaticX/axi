# AxiomaticX plugin marketplace

Plugin catalog for Claude Code and Codex.

## Claude Code

```bash
claude plugin marketplace add AxiomaticX/axi
claude plugin install dmu@axiomaticx
```

## Codex

```bash
codex plugin marketplace add AxiomaticX/axi
codex plugin add dmu@axiomaticx
```

Install plugins, then start a new session. Git credentials with read access to
the private source repositories are required. The dmu plugin also needs `uvx` on
PATH to start its local MCP server.
