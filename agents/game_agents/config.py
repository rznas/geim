"""Central configuration for the game-dev Agent SDK project.

Everything that varies by environment lives here and is read from env vars so the
n8n workflows / Docker / CI can configure the project without code changes.
"""

from __future__ import annotations

import os
from functools import lru_cache
from pathlib import Path

from claude_agent_sdk import AgentDefinition, ClaudeAgentOptions

from .agents import ALL_AGENTS


def _repo_root() -> Path:
    """Resolve the game repository root.

    Defaults to the parent of the `agents/` directory (i.e. the repo this package
    lives in), overridable with GAME_REPO_ROOT so the server can drive a checkout
    that lives elsewhere (e.g. a mounted volume in Docker).
    """
    env = os.environ.get("GAME_REPO_ROOT")
    if env:
        return Path(env).expanduser().resolve()
    return Path(__file__).resolve().parents[2]


REPO_ROOT = _repo_root()

# Full model ID for the run. AgentDefinition.model uses short aliases ("opus"),
# but ClaudeAgentOptions.model takes a concrete ID. Keep both in sync via env.
MODEL = os.environ.get("GAME_AGENT_MODEL", "claude-opus-4-8")
FALLBACK_MODEL = os.environ.get("GAME_AGENT_FALLBACK_MODEL") or None

# Per-phase turn ceiling so a runaway phase can't loop forever. Generous because
# design/implement phases legitimately do a lot of file work.
MAX_TURNS = int(os.environ.get("GAME_AGENT_MAX_TURNS", "60"))

# Optional hard cost ceiling per phase invocation (USD). 0/unset = no limit.
_budget = os.environ.get("GAME_AGENT_MAX_BUDGET_USD")
MAX_BUDGET_USD = float(_budget) if _budget else None

# Whether phase agents may edit files / run bash without prompting. The whole
# point of unattended n8n runs is autonomy, so default to acceptEdits. Set to
# "default" to force interactive approval, or "plan" for a dry run.
PERMISSION_MODE = os.environ.get("GAME_AGENT_PERMISSION_MODE", "acceptEdits")


@lru_cache(maxsize=1)
def repo_root_str() -> str:
    return str(REPO_ROOT)


def make_options(
    *,
    system_prompt: str,
    allowed_tools: list[str],
    output_schema: dict | None = None,
    agents: dict[str, AgentDefinition] | None = None,
    max_turns: int | None = None,
) -> ClaudeAgentOptions:
    """Build a ClaudeAgentOptions for a phase run.

    - `setting_sources=["project"]` so CLAUDE.md (the project's hard rules) is
      loaded into context for every phase — see modifying-system-prompts.md.
    - `cwd` pins the agent to the game repo so all Read/Write/Bash are scoped.
    - `output_format` (when a schema is given) yields validated structured JSON
      on ResultMessage.structured_output for the n8n workflows to branch on.
    """
    options = ClaudeAgentOptions(
        system_prompt=system_prompt,
        allowed_tools=allowed_tools,
        cwd=repo_root_str(),
        setting_sources=["project"],
        permission_mode=PERMISSION_MODE,
        model=MODEL,
        fallback_model=FALLBACK_MODEL,
        max_turns=max_turns or MAX_TURNS,
        max_budget_usd=MAX_BUDGET_USD,
        agents=agents,
    )
    if output_schema is not None:
        options.output_format = {"type": "json_schema", "schema": output_schema}
    return options


# The full roster, exposed so the server can offer per-role invocation and so the
# orchestrating phases can hand specific agents to the driver as subagents.
AGENTS = ALL_AGENTS
