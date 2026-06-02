# game-agents

A [Claude Agent SDK](https://docs.claude.com/en/api/agent-sdk/overview) project
(Python) that runs the 8-phase game-development **iteration loop** defined in
[`docs/workflow/`](../docs/workflow/), exposed over HTTP so the
[n8n workflows](../docs/workflow/n8n/) can orchestrate it.

## What's here

| Module | Purpose |
|---|---|
| `game_agents/agents.py` | The roster: 7 design agents + 13 implementation roles + 2 QA roles, as SDK `AgentDefinition`s built from `docs/team_roles/`. Holds the **distinct skill ownership** partition. |
| `game_agents/schemas.py` | Pydantic structured-output schema per phase (the verdicts/routes n8n branches on). |
| `game_agents/phases.py` | The 8 phase runners; each reads its `docs/workflow/tasks/0N_*.md` and runs the driver agent with structured output. |
| `game_agents/config.py` | Env-driven `ClaudeAgentOptions` factory. Loads `.claude/skills/` + `CLAUDE.md` via `setting_sources=["project"]`. |
| `game_agents/server.py` | FastAPI app: `/phase/{phase}`, `/agent/{id}`, `/agents`, `/health`. |

## How skills work (not hardcoded)

The 15 design skills live as **Agent Skills** under
[`.claude/skills/`](../.claude/skills/). They are **not** pasted into prompts.
The SDK loads them from the filesystem because `config.py` sets
`setting_sources=["project"]`, and the 7 design agents carry the `Skill` tool —
so Claude **autonomously invokes** the right skill and the runtime loads its full
methodology on demand. Prompts only name *which* skills each agent owns.

Each of the 13 consolidated skills is owned by **exactly one** agent
(`AGENT_SKILLS` in `agents.py`), matching `docs/team_roles/design_roles.md`.
`assert_distinct_skills()` runs at server startup and fails fast on any overlap.
Implementation/QA role skills are **added later** — register them in
`ROLE_SKILLS` and call `enable_skills_for_roles()`.

## Setup (uv)

```bash
cd agents
cp .env.sample .env            # add your ANTHROPIC_API_KEY
uv sync                        # create venv + install deps
uv run game-agents-server      # serves http://127.0.0.1:8787
```

Requires the Claude Code CLI on PATH (the SDK drives it). Verify:

```bash
curl -s localhost:8787/health | python -m json.tool
curl -s localhost:8787/agents | python -m json.tool   # see skill ownership
```

## Run one phase

```bash
curl -s -X POST localhost:8787/phase/orient \
  -H 'content-type: application/json' \
  -d '{"iteration": 1}' | python -m json.tool
```

The response's `structured_output` matches the phase's schema in `schemas.py`.

## Env vars

See [`.env.sample`](.env.sample). Key ones: `ANTHROPIC_API_KEY` (required),
`GAME_AGENT_MODEL`, `GAME_REPO_ROOT`, `GAME_AGENT_PERMISSION_MODE`,
`GAME_AGENT_HOST`/`PORT`.
