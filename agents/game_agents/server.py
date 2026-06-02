"""FastAPI server exposing the iteration loop to n8n.

Endpoints
---------
GET  /health                      -> liveness + config snapshot
GET  /agents                      -> roster + distinct skill ownership
POST /phase/{phase}               -> run one loop phase, return structured JSON
POST /agent/{agent_id}            -> run a single named agent ad hoc

The n8n sub-workflows in `docs/workflow/n8n/` POST to /phase/{phase} and branch
on the returned `structured_output` (verdicts, routes, counts).
"""

from __future__ import annotations

from typing import Any

from fastapi import FastAPI, HTTPException
from pydantic import BaseModel

from claude_agent_sdk import (
    AssistantMessage,
    ClaudeSDKClient,
    ResultMessage,
    TextBlock,
)

from . import __version__
from .agents import (
    ALL_AGENTS,
    ALL_ROLE_SKILLS,
    assert_distinct_skills,
)
from .config import (
    MAX_TURNS,
    MODEL,
    PERMISSION_MODE,
    repo_root_str,
    make_options,
)
from .phases import PHASE_ORDER, run_phase

app = FastAPI(
    title="Game Dev Iteration Loop — Agent SDK",
    version=__version__,
    description="Claude Agent SDK server driving the 8-phase game-dev iteration loop.",
)


@app.on_event("startup")
async def _validate_skill_partition() -> None:
    # Fail fast if skill ownership overlaps or drifts from .claude/skills/ on disk.
    assert_distinct_skills(check_filesystem=True)


class PhaseRequest(BaseModel):
    iteration: int = 1
    context: str | None = None


class AgentRequest(BaseModel):
    prompt: str
    iteration: int | None = None


@app.get("/health")
async def health() -> dict[str, Any]:
    return {
        "status": "ok",
        "version": __version__,
        "repo_root": repo_root_str(),
        "model": MODEL,
        "permission_mode": PERMISSION_MODE,
        "max_turns": MAX_TURNS,
        "phases": PHASE_ORDER,
    }


@app.get("/agents")
async def list_agents() -> dict[str, Any]:
    return {
        "agents": {
            aid: {
                "description": a.description,
                "tools": a.tools,
                "skills": ALL_ROLE_SKILLS.get(aid, []),
            }
            for aid, a in ALL_AGENTS.items()
        },
        "skill_ownership": ALL_ROLE_SKILLS,
    }


@app.post("/phase/{phase}")
async def post_phase(phase: str, body: PhaseRequest) -> dict[str, Any]:
    if phase not in PHASE_ORDER:
        raise HTTPException(404, f"Unknown phase '{phase}'. Valid: {PHASE_ORDER}")
    run = await run_phase(phase, body.iteration, context=body.context)

    if run.subtype == "error_max_structured_output_retries":
        # The agent did real work but couldn't satisfy the schema. Surface it so
        # the orchestrator can decide (retry / inspect result_text) rather than
        # silently treating it as success.
        raise HTTPException(
            422,
            detail={
                "error": "structured_output_failed",
                "phase": phase,
                "result_text": run.result_text,
            },
        )

    return {
        "phase": run.phase,
        "iteration": run.iteration,
        "ok": not run.is_error,
        "subtype": run.subtype,
        "structured_output": run.structured_output,
        "result_text": run.result_text,
        "num_turns": run.num_turns,
        "total_cost_usd": run.total_cost_usd,
        "session_id": run.session_id,
    }


@app.post("/agent/{agent_id}")
async def post_agent(agent_id: str, body: AgentRequest) -> dict[str, Any]:
    """Run a single named agent ad hoc (outside the loop), e.g. ask Agent 3 for a
    technology assessment. Uses that agent's own system prompt and tools."""
    agent = ALL_AGENTS.get(agent_id)
    if agent is None:
        raise HTTPException(404, f"Unknown agent '{agent_id}'. Valid: {list(ALL_AGENTS)}")

    options = make_options(
        system_prompt=agent.prompt,
        allowed_tools=list(agent.tools or []),
    )

    text = ""
    cost: float | None = None
    session_id = ""
    is_error = False
    async with ClaudeSDKClient(options=options) as client:
        await client.query(body.prompt)
        async for message in client.receive_response():
            if isinstance(message, AssistantMessage):
                for block in message.content:
                    if isinstance(block, TextBlock):
                        text += block.text
            elif isinstance(message, ResultMessage):
                cost = message.total_cost_usd
                session_id = message.session_id
                is_error = message.is_error

    return {
        "agent": agent_id,
        "ok": not is_error,
        "result_text": text.strip(),
        "total_cost_usd": cost,
        "session_id": session_id,
    }
