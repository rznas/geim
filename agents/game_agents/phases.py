"""Phase runners for the 8-phase iteration loop.

Each phase:
  1. Reads its task doc (`docs/workflow/tasks/0N_*.md`) as the operating procedure.
  2. Selects the driver agent (Agent 7 owns most loop coordination; the design
     phase can hand the 7 design agents to the driver as subagents).
  3. Runs the Claude Agent SDK with the phase's structured-output schema so the
     n8n workflows get validated JSON to branch on.

The design skills under `.claude/skills/` are loaded automatically because
`make_options` sets `setting_sources=["project"]` and design agents carry the
`Skill` tool — see config.py and agents.py.
"""

from __future__ import annotations

from dataclasses import dataclass

from claude_agent_sdk import (
    AssistantMessage,
    ClaudeSDKClient,
    ResultMessage,
    TextBlock,
)

from .agents import AGENT_7, DESIGN_AGENTS
from .config import REPO_ROOT, make_options
from .schemas import PHASE_SCHEMAS

# Each phase -> the task doc that defines its procedure (iteration_loop.md §3).
PHASE_DOCS: dict[str, str] = {
    "orient": "docs/workflow/tasks/01_orient.md",
    "triage": "docs/workflow/tasks/02_triage.md",
    "select": "docs/workflow/tasks/03_select.md",
    "design": "docs/workflow/tasks/04_design.md",
    "implement": "docs/workflow/tasks/05_implement.md",
    "test": "docs/workflow/tasks/06_test.md",
    "verify": "docs/workflow/tasks/07_verify.md",
    "commit": "docs/workflow/tasks/08_commit.md",
}

PHASE_ORDER = list(PHASE_DOCS.keys())


@dataclass
class PhaseRun:
    """Result of running one phase."""

    phase: str
    iteration: int
    structured_output: dict | None
    result_text: str
    subtype: str
    is_error: bool
    num_turns: int
    total_cost_usd: float | None
    session_id: str


def _phase_system_prompt(phase: str) -> str:
    """The driver agent's system prompt for a given phase.

    Agent 7 (Production & Business Lead) drives the orchestration phases — it owns
    the feature list, backlog, gates, commits, and playtesting. The design phase
    additionally exposes the 7 design agents as subagents the driver delegates to,
    each invoking only its own distinct skills.
    """
    base = AGENT_7.prompt
    doc = PHASE_DOCS[phase]
    if phase == "design":
        roster = "\n".join(
            f"- `{aid}` owns skills: {', '.join(owned_skills_for(aid))}"
            for aid in DESIGN_AGENTS
        )
        delegation = f"""
<delegation>
For DESIGN work, delegate to the design subagents via the Task tool. Activate
ONLY the agents the Select phase named, in dependency order. Each subagent
invokes only its own distinct skills (design_roles.md). The roster:
{roster}
</delegation>
"""
    else:
        delegation = ""
    return f"""{base}

<current_phase>
You are running Phase '{phase}' of the iteration loop. Follow the procedure in
`{doc}` exactly — read it first with the Read tool, then execute its Actions in
order. Obey the time budget and quality criteria it specifies.
</current_phase>
{delegation}
<output_contract>
When the phase is complete, return the structured result required by the schema.
Set `phase` to '{phase}'. Be honest in verdict fields — a failing test is MAJOR/
CRITICAL, not ALL_PASS. The orchestrator branches on these fields, so accuracy
here determines whether the loop advances or routes back.
</output_contract>
"""


def owned_skills_for(agent_id: str) -> list[str]:
    from .agents import AGENT_SKILLS

    return AGENT_SKILLS.get(agent_id, [])


def _build_user_prompt(phase: str, iteration: int, context: str | None) -> str:
    extra = f"\n\n<context_from_orchestrator>\n{context}\n</context_from_orchestrator>" if context else ""
    return (
        f"Run Phase '{phase}' for iteration {iteration} of the game project at "
        f"{REPO_ROOT}. Start by reading `{PHASE_DOCS[phase]}`, then carry out the "
        f"phase against the current repository state and return the structured "
        f"result."
        f"{extra}"
    )


async def run_phase(
    phase: str,
    iteration: int,
    *,
    context: str | None = None,
    subagents: dict | None = None,
) -> PhaseRun:
    """Execute one iteration-loop phase and return its structured result.

    `context` is free-form text the orchestrator passes between phases (e.g. the
    Select phase's scope statement into Design). `subagents` overrides the default
    set of programmatic subagents (Design phase passes the 7 design agents).
    """
    if phase not in PHASE_DOCS:
        raise ValueError(f"Unknown phase '{phase}'. Valid: {PHASE_ORDER}")

    schema = PHASE_SCHEMAS[phase].model_json_schema()

    # Design phase exposes the design agents as subagents; other phases run as
    # Agent 7 alone (it still uses Bash/Read/Write/Edit to do the work).
    agents = subagents if subagents is not None else (
        DESIGN_AGENTS if phase == "design" else None
    )

    # Agent 7 needs the Task tool to delegate to design subagents in the design phase.
    allowed = list(AGENT_7.tools or [])
    if agents and "Task" not in allowed:
        allowed.append("Task")

    options = make_options(
        system_prompt=_phase_system_prompt(phase),
        allowed_tools=allowed,
        output_schema=schema,
        agents=agents,
    )

    result_text = ""
    structured: dict | None = None
    subtype = ""
    is_error = False
    num_turns = 0
    cost: float | None = None
    session_id = ""

    async with ClaudeSDKClient(options=options) as client:
        await client.query(_build_user_prompt(phase, iteration, context))
        async for message in client.receive_response():
            if isinstance(message, AssistantMessage):
                for block in message.content:
                    if isinstance(block, TextBlock):
                        result_text += block.text
            elif isinstance(message, ResultMessage):
                structured = message.structured_output
                subtype = message.subtype
                is_error = message.is_error
                num_turns = message.num_turns
                cost = message.total_cost_usd
                session_id = message.session_id

    return PhaseRun(
        phase=phase,
        iteration=iteration,
        structured_output=structured,
        result_text=result_text.strip(),
        subtype=subtype,
        is_error=is_error,
        num_turns=num_turns,
        total_cost_usd=cost,
        session_id=session_id,
    )
