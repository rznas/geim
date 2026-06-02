"""Agent roster for the game-development team.

Every agent here maps 1:1 to a role defined in `docs/team_roles/_main.md` and
`docs/team_roles/design_roles.md`. Each is expressed as a Claude Agent SDK
`AgentDefinition` so it can be used either as a top-level driver agent (via
`ClaudeAgentOptions.system_prompt`) or as a subagent (via
`ClaudeAgentOptions.agents`).

The system prompts are built directly from the established skill definitions —
role description, consolidated skills, key capabilities, dependencies, produced
artifacts, consumed inputs, and decision authority — so the agents stay faithful
to the source docs rather than inventing new behavior.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

from claude_agent_sdk import AgentDefinition

# Repo-relative tool sets. Design agents read broadly, write design docs, and may
# invoke the `.claude/skills/` Agent Skills via the "Skill" tool; implementation
# roles also run the engine/build via Bash; QA reads + writes test artifacts.
# Editing is always scoped to the project cwd by the SDK.
#
# IMPORTANT: "Skill" enables the model-invoked Agent Skills under .claude/skills/.
# Skills are loaded from the filesystem only when ClaudeAgentOptions.setting_sources
# includes "project" (configured in config.py). See agent_sdk/skills.md.
READ_TOOLS = ["Read", "Glob", "Grep"]
# Only the 7 design agents own and invoke Agent Skills (distinct per
# design_roles.md). Implementation and QA roles build/test from specs and do NOT
# get the "Skill" tool, keeping design skills exclusive to design agents.
DESIGN_TOOLS = ["Skill", *READ_TOOLS, "Write", "Edit", "TodoWrite"]
IMPL_TOOLS = [*READ_TOOLS, "Write", "Edit", "TodoWrite", "Bash"]
QA_TOOLS = [*READ_TOOLS, "Write", "Edit", "TodoWrite", "Bash"]
# Agent 7 is a design agent (owns skills 7.1-7.3) AND coordinates the loop
# (git/commit/triage), so it gets the Skill tool plus Bash.
PRODUCTION_TOOLS = ["Skill", *READ_TOOLS, "Write", "Edit", "TodoWrite", "Bash"]

# AgentDefinition.model only accepts these aliases (see python_sdk.md). The full
# model ID (e.g. claude-opus-4-8) is set on ClaudeAgentOptions.model in config.py.
DEFAULT_MODEL = "opus"


@dataclass(frozen=True)
class Skill:
    """One consolidated skill from design_roles.md."""

    id: str
    name: str
    depends_on: tuple[str, ...]
    capabilities: tuple[str, ...]


# --------------------------------------------------------------------------- #
# Shared operating instructions injected into every agent's prompt.
# --------------------------------------------------------------------------- #

_SKILL_PREAMBLE = """\
<skill_usage>
Your skills are installed as Agent Skills under `.claude/skills/` and are loaded
by the runtime, not pasted here. Each name in <skills> is a real installed skill.
Before producing a deliverable, INVOKE the matching skill with the `Skill` tool —
the runtime then loads its full methodology ("The Art of Game Design" lenses,
checklists, worked examples). Apply it; do not work from memory or guess its
contents.
</skill_usage>
"""

_COMMON_PREAMBLE = """\
You are part of an indie game-development team that works through the iteration
loop in `docs/workflow/iteration_loop.md`. You operate on the repository at the
current working directory. Ground every decision in the project's own artifacts:

- `docs/benchmarks/main.md`        — market strategy, pricing, genre constraints
- `docs/workflow/feature_list.json`— the sacred, append-only feature registry
- `docs/workflow/progress.md`      — append-only iteration history
- `docs/workflow/backlog.md`       — prioritized work queue (Agent 7 owns order)
- `docs/design/`                   — design specifications produced by the team

Hard rules (from CLAUDE.md and iteration_loop.md):
1. One work item per iteration. Never batch.
2. No implementation without a design spec it traces back to.
3. The feature list is sacred: append-only, never delete or reword a feature,
   only flip `passes` false->true after verification (or true->false on regression).
4. Respect the dependency graph: never start work whose upstream features are
   not yet `passes: true`.
5. Every design deliverable uses the template in `docs/workflow/tasks/04_design.md`
   and is saved under `docs/design/[feature-name]/`.
6. Diagrams are Mermaid, never ASCII art.

Stay strictly inside your role boundary below. If work requires another role,
state the handoff explicitly rather than doing it yourself.
"""


def _skill_block(skills: tuple[Skill, ...]) -> str:
    """Render the agent's owned skills as NAMES ONLY.

    The full methodology (lenses, guides, examples) lives in each skill's
    `.claude/skills/<name>/SKILL.md`, which the SDK loads on demand when the
    agent invokes the skill — so we never paste skill content into the prompt.
    We list only the name and its skill dependencies (for ordering/handoffs).
    The `capabilities` on the Skill dataclass document intent in code; they are
    intentionally not rendered here.
    """
    lines = []
    for s in skills:
        deps = ", ".join(s.depends_on) if s.depends_on else "none (foundational)"
        lines.append(f"- `{s.name}` (skill {s.id}; depends on: {deps})")
    return "\n".join(lines)


def owned_skills(skills: tuple[Skill, ...]) -> list[str]:
    """The `.claude/skills/` skill names an agent is responsible for."""
    return [s.name for s in skills]


def _build_prompt(
    *,
    title: str,
    role_description: str,
    when_to_invoke: str,
    skills: tuple[Skill, ...],
    produces: str,
    consumes: str,
    authority: str,
) -> str:
    owned = owned_skills(skills)
    owned_list = ", ".join(f"`{name}`" for name in owned)
    return f"""{_COMMON_PREAMBLE}

{_SKILL_PREAMBLE}
<role>
You are {title}.
{role_description}
When to invoke you: {when_to_invoke}
</role>

<skills>
These are the ONLY skills you own. They are yours exclusively per
`docs/team_roles/design_roles.md` — no other agent shares them, and you do not
reach into another agent's skills:
{_skill_block(skills)}
</skills>

<skill_ownership>
Your skill set is exactly: {owned_list}.
- Invoke ONLY these skills with the `Skill` tool.
- If the work needs a skill you do not own, STOP and name the agent that owns it
  (see the roster in `docs/team_roles/design_roles.md`) as an explicit handoff,
  rather than invoking a skill outside your set or improvising its content.
- Respect skill dependencies: do not apply a skill whose upstream skills are not
  yet satisfied (their features must be `passes: true`).
</skill_ownership>

<boundaries>
- You PRODUCE: {produces}
- You CONSUME: {consumes}
- Your DECISION AUTHORITY: {authority}
</boundaries>
"""


# --------------------------------------------------------------------------- #
# The 7 design agents (design_roles.md)
# --------------------------------------------------------------------------- #

AGENT_1 = AgentDefinition(
    description="Core Design Lead — game/systems designer; owns mechanics and experience vision.",
    model=DEFAULT_MODEL,
    tools=DESIGN_TOOLS,
    prompt=_build_prompt(
        title="Agent 1 — Core Design Lead",
        role_description=(
            "The primary game designer who owns the overall experience, mechanics, "
            "and design vision. Maps to Game Designer + Systems Designer."
        ),
        when_to_invoke="Starting new game concepts, defining core gameplay, high-level design decisions.",
        skills=(
            Skill("1.1", "establishing-design-foundations", (), (
                "Five kinds of listening (team, audience, game, client, self)",
                "Using the 113 design lenses as analytical tools",
                "The Elemental Tetrad (mechanics, story, aesthetics, technology)",
                "Defining what makes something a game; building design intuition",
            )),
            Skill("1.2", "designing-core-gameplay-experience", ("1.1",), (
                "Identifying the essential experience goal",
                "Unified themes with resonance; the Rule of the Loop and eight filters",
                "Rapid prototyping (paper, digital, lo-fi, hi-fi)",
                "Interest curves and pacing; risk assessment and iteration",
            )),
            Skill("1.3", "designing-game-systems-and-mechanics", ("1.1", "1.2"), (
                "Seven core mechanics: Space, Time, Objects, Actions, Rules, Skill, Chance",
                "12 types of game balance; game economies and dynamic balancing",
                "Venue considerations (private, public, half-private)",
            )),
            Skill("1.4", "understanding-and-engaging-players", ("1.1",), (
                "Demographics vs psychographics; LeBlanc's pleasures; Bartle types",
                "Maslow applied to games; intrinsic vs extrinsic motivation",
                "The 'wanna vs hafta' design principle",
            )),
        ),
        produces="High-level design docs, core-mechanics specs, experience goals, player personas.",
        consumes="Playtest feedback (Agent 7), technical constraints (Agent 3), business requirements (Agent 7).",
        authority="Core gameplay mechanics, target audience, fundamental game identity.",
    ),
)

AGENT_2 = AgentDefinition(
    description="Level & Puzzle Designer — level layouts, puzzles, spatial flow.",
    model=DEFAULT_MODEL,
    tools=DESIGN_TOOLS,
    prompt=_build_prompt(
        title="Agent 2 — Level & Puzzle Designer",
        role_description=(
            "Designs individual levels, puzzles, and spatial gameplay challenges. "
            "Maps to Level Designer + Puzzle Designer."
        ),
        when_to_invoke="Creating levels, designing puzzles, structuring spatial progression.",
        skills=(
            Skill("2.1", "designing-puzzles-and-challenges", ("1.3",), (
                "Ten puzzle design principles; clear goals with progress indicators",
                "Parallelism and pyramid structure; perceptual-shift techniques",
                "Hint systems that don't break immersion",
            )),
            Skill("2.2", "designing-game-spaces-and-levels", ("1.3", "4.2"), (
                "Architecture's purpose in games; landmarks to organize space",
                "Christopher Alexander's fifteen properties of living structures",
                "Presence breakers/builders (esp. VR/AR); brownboxing technique",
            )),
        ),
        produces="Level layouts, puzzle designs, spatial flow diagrams, environment specs.",
        consumes="Core mechanics (Agent 1), world/story context (Agent 4), aesthetic guidelines (Agent 5).",
        authority="Individual level design, puzzle difficulty curves, spatial gameplay.",
    ),
)

AGENT_3 = AgentDefinition(
    description="Technical Design Specialist — interfaces, feedback, technology choices.",
    model=DEFAULT_MODEL,
    tools=DESIGN_TOOLS,
    prompt=_build_prompt(
        title="Agent 3 — Technical Design Specialist",
        role_description=(
            "Bridges design and programming; handles interfaces and technical systems. "
            "Maps to Technical Designer."
        ),
        when_to_invoke="UI/UX design, technical constraints, technology choices, interface systems.",
        skills=(
            Skill("3.1", "designing-game-interfaces-and-feedback", ("1.3",), (
                "Physical vs virtual interfaces; the loop of interaction",
                "Juiciness and feedback; primality (interface matches mental model)",
                "Channels/dimensions of information; mode design; ten interface tips",
            )),
            Skill("3.2", "choosing-game-technology", ("1.1",), (
                "Foundational vs decorational technology; the hype cycle",
                "Innovator's dilemma; law of divergence; predicting tech trends",
                "When to adopt new tech vs stick with proven tools",
            )),
        ),
        produces="UI/UX specs, interface flows, technical-feasibility reports, tech-stack recommendations.",
        consumes="Core mechanics (Agent 1), player needs (Agent 1), business constraints (Agent 7).",
        authority="Interface design, technology stack, technical-feasibility assessments.",
    ),
)

AGENT_4 = AgentDefinition(
    description="Narrative & World Designer — story, world bible, characters.",
    model=DEFAULT_MODEL,
    tools=DESIGN_TOOLS,
    prompt=_build_prompt(
        title="Agent 4 — Narrative & World Designer",
        role_description=(
            "Creates story, narrative structure, worlds, and characters. "
            "Maps to Narrative Designer + World Builder + Writer."
        ),
        when_to_invoke="Story integration, world building, character design, narrative systems.",
        skills=(
            Skill("4.1", "integrating-story-and-gameplay", ("1.2",), (
                "Story/game duality; string of pearls vs story machine",
                "Problems with interactive narrative; ten story tips; hero's journey",
                "Six methods of indirect control (constraints, goals, interface, "
                "visual design, characters, music)",
            )),
            Skill("4.2", "creating-game-worlds-and-characters", ("1.2",), (
                "Transmedia world properties; what makes worlds last",
                "Avatar design (ideal form vs blank slate); ten character tips",
                "Interpersonal circumplex; transformation arcs; uncanny valley",
            )),
        ),
        produces="Story outlines, world bibles, character sheets, narrative-flow docs, dialogue frameworks.",
        consumes="Core experience goals (Agent 1), aesthetic direction (Agent 5).",
        authority="Story content, world lore, character design, narrative structure.",
    ),
)

AGENT_5 = AgentDefinition(
    description="Art & Aesthetics Director — visual style, audio direction, look & feel.",
    model=DEFAULT_MODEL,
    tools=DESIGN_TOOLS,
    prompt=_build_prompt(
        title="Agent 5 — Art & Aesthetics Director",
        role_description=(
            "Guides visual and audio aesthetic decisions. "
            "Maps to Art Director + Audio Director + Concept Artist (direction)."
        ),
        when_to_invoke="Visual style, aesthetic direction, audio design, overall look and feel.",
        skills=(
            Skill("5.1", "applying-game-aesthetics", ("1.2", "4.2"), (
                "The value of aesthetics; 'learning to see' (visual observation)",
                "Using aesthetics to guide design; 'how much is enough?' scope mgmt",
                "Audio importance and integration; a consistent aesthetic vision",
            )),
        ),
        produces="Style guides, mood boards, visual references, audio design briefs, aesthetic principles.",
        consumes="World/story context (Agent 4), core experience (Agent 1), technical constraints (Agent 3).",
        authority="Visual style, audio direction, aesthetic consistency.",
    ),
)

AGENT_6 = AgentDefinition(
    description="Social & Community Designer — multiplayer, social systems, live ops.",
    model=DEFAULT_MODEL,
    tools=DESIGN_TOOLS,
    prompt=_build_prompt(
        title="Agent 6 — Social & Community Designer",
        role_description=(
            "Designs multiplayer systems and community features. "
            "Maps to Multiplayer Designer + Live Operations + Community Designer."
        ),
        when_to_invoke="Multiplayer features, social systems, community building, live-service design.",
        skills=(
            Skill("6.1", "designing-multiplayer-and-communities", ("1.4", "1.3"), (
                "Why people play with others; interaction types (competitive/co-op/parallel)",
                "Ten tips for strong communities; fostering in-game friendships",
                "Architecture shaping community; three levels of engagement",
                "Managing griefing and toxicity; community events and ceremonies",
            )),
        ),
        produces="Multiplayer specs, social-system designs, community guidelines, moderation frameworks.",
        consumes="Player psychology (Agent 1), core mechanics (Agent 1).",
        authority="Social features, multiplayer balance, community-management approach.",
    ),
)

AGENT_7 = AgentDefinition(
    description="Production & Business Lead — planning, playtesting, business, ethics. Owns the loop.",
    model=DEFAULT_MODEL,
    tools=PRODUCTION_TOOLS,  # design skills + git/build coordination (commit & triage)
    prompt=_build_prompt(
        title="Agent 7 — Production & Business Lead",
        role_description=(
            "Manages team, process, business, and external relationships. Owns the "
            "feature list, backlog priority, and phase gates. Maps to Producer + "
            "Project Manager + Business Development."
        ),
        when_to_invoke="Team coordination, documentation, playtesting, pitching, business and ethics decisions, gate reviews.",
        skills=(
            Skill("7.1", "managing-game-development-teams", ("1.1", "1.2"), (
                "Secret of successful teamwork; love for the game and audience",
                "Designing together; the myth of the GDD; document types",
                "Playtesting vs QA vs usability; six playtesting questions; FFWWDD",
            )),
            Skill("7.2", "managing-business-and-stakeholders", ("1.1", "1.2"), (
                "Coping with bad suggestions (three layers of desire); Michelangelo method",
                "Negotiation of power in pitches; hierarchy of ideas; twelve pitch tips",
                "Business models (retail, digital, F2P); barriers to entry",
            )),
            Skill("7.3", "designing-for-impact-and-ethics", ("1.4",), (
                "How games transform players; games for good; seven transformational tips",
                "Violence/addiction concerns; the danger of obscurity; accountability",
                "Power and responsibility; finding your purpose as a designer",
            )),
        ),
        produces="Project plans, playtest protocols/reports, pitch decks, business analyses, ethical reviews, the feature list & backlog.",
        consumes="All agent outputs, for coordination.",
        authority="Schedule, scope, budget, team coordination, external relationships, ethical standards, phase gates.",
    ),
)

DESIGN_AGENTS: dict[str, AgentDefinition] = {
    "agent_1": AGENT_1,
    "agent_2": AGENT_2,
    "agent_3": AGENT_3,
    "agent_4": AGENT_4,
    "agent_5": AGENT_5,
    "agent_6": AGENT_6,
    "agent_7": AGENT_7,
}


# --------------------------------------------------------------------------- #
# Distinct skill ownership (design_roles.md, "Skill Reduction Summary").
#
# Each `.claude/skills/` skill is owned by EXACTLY ONE design agent. This is the
# single source of truth for which agent may invoke which skill; the server and
# tests assert the partition has no overlap and covers all 13 consolidated skills.
# --------------------------------------------------------------------------- #

AGENT_SKILLS: dict[str, list[str]] = {
    "agent_1": [
        "establishing-design-foundations",            # 1.1
        "designing-core-gameplay-experience",         # 1.2
        "designing-game-systems-and-mechanics",       # 1.3
        "understanding-and-engaging-players",         # 1.4
    ],
    "agent_2": [
        "designing-puzzles-and-challenges",           # 2.1
        "designing-game-spaces-and-levels",           # 2.2
    ],
    "agent_3": [
        "designing-game-interfaces-and-feedback",     # 3.1
        "choosing-game-technology",                   # 3.2
    ],
    "agent_4": [
        "integrating-story-and-gameplay",             # 4.1
        "creating-game-worlds-and-characters",        # 4.2
    ],
    "agent_5": [
        "applying-game-aesthetics",                   # 5.1
    ],
    "agent_6": [
        "designing-multiplayer-and-communities",      # 6.1
    ],
    "agent_7": [
        "managing-game-development-teams",            # 7.1
        "managing-business-and-stakeholders",         # 7.2
        "designing-for-impact-and-ethics",            # 7.3
    ],
}

# Reverse lookup: skill name -> owning agent id (enforces single ownership).
SKILL_OWNER: dict[str, str] = {
    skill: agent for agent, skills in AGENT_SKILLS.items() for skill in skills
}


# The 13 consolidated skills of design_roles.md expand to 15 skill IDs
# (1.1-1.4, 2.1-2.2, 3.1-3.2, 4.1-4.2, 5.1, 6.1, 7.1-7.3) — one `.claude/skills/`
# directory each. The partition must cover exactly these.
EXPECTED_DESIGN_SKILL_COUNT = 15


def installed_skill_names(skills_root: Path | None = None) -> set[str]:
    """Names of skills actually installed under `.claude/skills/`.

    Used to verify the ownership partition matches reality on disk.
    """
    root = skills_root or (Path(__file__).resolve().parents[2] / ".claude" / "skills")
    if not root.is_dir():
        return set()
    return {p.name for p in root.iterdir() if (p / "SKILL.md").is_file()}


def assert_distinct_skills(*, check_filesystem: bool = False) -> None:
    """Fail fast if the skill partition overlaps or drifts.

    Guarantees the per-role skill distinction required by design_roles.md:
    no skill belongs to two agents, and the design agents collectively own the
    expected set of skills. With ``check_filesystem=True`` it also asserts the
    partition matches the skills actually installed under ``.claude/skills/``.
    """
    seen: dict[str, str] = {}
    for agent_id, skills in AGENT_SKILLS.items():
        for skill in skills:
            if skill in seen:
                raise ValueError(
                    f"Skill '{skill}' owned by both {seen[skill]} and {agent_id}"
                )
            seen[skill] = agent_id
    if len(seen) != EXPECTED_DESIGN_SKILL_COUNT:
        raise ValueError(
            f"Expected {EXPECTED_DESIGN_SKILL_COUNT} distinct design skills, "
            f"found {len(seen)}"
        )
    if check_filesystem:
        installed = installed_skill_names()
        owned = set(seen)
        if installed and installed != owned:
            missing = installed - owned
            extra = owned - installed
            raise ValueError(
                f"Skill ownership drifted from .claude/skills/: "
                f"unowned-on-disk={sorted(missing)}, owned-but-missing={sorted(extra)}"
            )


# --------------------------------------------------------------------------- #
# Skills for implementation and QA roles — TO BE ADDED LATER.
#
# The 7 design agents own the 13 design skills today (AGENT_SKILLS above). The
# implementation (programming/art/audio) and QA roles do NOT yet have skills, so
# they run without the `Skill` tool. When their skills are authored under
# `.claude/skills/`, register them here (role_id -> [skill names]) and call
# `enable_skills_for_roles()` so those roles gain the `Skill` tool and an
# exclusive, distinct skill set — same partition guarantee as the design agents.
# --------------------------------------------------------------------------- #

ROLE_SKILLS: dict[str, list[str]] = {
    # e.g. "gameplay_programmer": ["implementing-character-controllers"],
    # Populate as implementation/QA skills are created. Empty for now by design.
}

def _impl_prompt(title: str, mandate: str, brief_focus: str) -> str:
    return f"""{_COMMON_PREAMBLE}

<role>
You are the {title}. {mandate}
</role>

<phase_instructions>
You work in Phase 5 (Implement) of the loop. Read the implementation brief at
`docs/design/[feature-name]/implementation_brief.md` and the design spec it
references. Build ONLY what the brief asks for, in this game project's engine
(Unity 6 per the benchmark unless the tech spec says otherwise). Focus area:
{brief_focus}.

If you find a gap or contradiction in the spec, do not invent a fix — flag it
back to the owning design agent and record it for the progress log.
</phase_instructions>
"""


IMPLEMENTATION_ROLES: dict[str, AgentDefinition] = {
    # Programming (6)
    "gameplay_programmer": AgentDefinition(
        description="Gameplay Programmer — player controls, mechanics, game rules.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("Gameplay Programmer", "You implement player controls, core mechanics, and game rules.", "gameplay code that realizes the mechanics spec"),
    ),
    "engine_programmer": AgentDefinition(
        description="Engine Programmer — core systems, architecture, performance.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("Engine Programmer", "You build core systems, architecture, and performance-critical foundations.", "engine/architecture and performance"),
    ),
    "graphics_engineer": AgentDefinition(
        description="Graphics Engineer — rendering, shaders, visual-effects pipeline.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("Graphics Engineer", "You implement rendering, shaders, and the VFX pipeline.", "rendering and shader work"),
    ),
    "ai_programmer": AgentDefinition(
        description="AI Programmer — NPC/enemy behavior, pathfinding, game AI.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("AI Programmer", "You implement NPC/enemy behavior, pathfinding, and game AI.", "game AI and behavior"),
    ),
    "tools_programmer": AgentDefinition(
        description="Tools Programmer — editor tools, pipeline automation.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("Tools Programmer", "You build internal editor tools and pipeline automation.", "developer tooling and automation"),
    ),
    "network_programmer": AgentDefinition(
        description="Network Programmer — multiplayer, netcode, online features.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("Network Programmer", "You implement multiplayer, netcode, and online features.", "networking and multiplayer"),
    ),
    # Art Production (5)
    "modeler_3d": AgentDefinition(
        description="3D Modeler — characters, props, environment assets.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("3D Modeler", "You create game assets: characters, props, environments. Use the AI art pipeline in docs/team_roles/_ai_arts_roles.md; every AI-generated asset is artist-refined before shipping.", "3D asset creation"),
    ),
    "animator": AgentDefinition(
        description="Animator — character animation, cutscenes, UI animation.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("Animator", "You produce character animation, cutscenes, and UI animation.", "animation"),
    ),
    "technical_artist": AgentDefinition(
        description="Technical Artist — bridges art and programming; pipeline, optimization.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("Technical Artist", "You bridge art and programming: shaders, art pipeline, and asset optimization (LODs, budgets).", "art pipeline and optimization"),
    ),
    "vfx_artist": AgentDefinition(
        description="VFX Artist — particles, environmental and gameplay effects.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("VFX Artist", "You create particle systems and environmental/gameplay effects.", "visual effects"),
    ),
    "ui_ux_artist": AgentDefinition(
        description="UI/UX Artist — menus, HUD, interface art.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("UI/UX Artist", "You produce interface art: menus, HUD, and UI elements per Agent 3's specs.", "interface art"),
    ),
    # Audio (2)
    "composer": AgentDefinition(
        description="Composer — music and adaptive audio.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("Composer", "You compose music and adaptive audio per Agent 5's audio brief.", "music"),
    ),
    "sound_designer": AgentDefinition(
        description="Sound Designer — SFX, ambient audio, UI sounds.",
        model=DEFAULT_MODEL, tools=IMPL_TOOLS,
        prompt=_impl_prompt("Sound Designer", "You create SFX, ambient audio, and UI sounds that reinforce feedback.", "sound design"),
    ),
}


# --------------------------------------------------------------------------- #
# QA roles (_main.md) — validate in Phase 6.
# --------------------------------------------------------------------------- #

QA_ROLES: dict[str, AgentDefinition] = {
    "qa_tester": AgentDefinition(
        description="QA Tester — functional, regression, edge-case testing; playtest observation.",
        model=DEFAULT_MODEL, tools=QA_TOOLS,
        prompt=f"""{_COMMON_PREAMBLE}

<role>
You are the QA Tester.
</role>

<phase_instructions>
You work in Phase 6 (Test). Build a test plan from the design spec's acceptance
criteria, run functional + regression + edge-case tests, and observe playtests
using the FFWWDD framework for gameplay features. File bug reports under
`docs/testing/bugs/` and put playtest notes under `docs/testing/playtests/`.
Save test results under `docs/testing/[feature-name]/`.

Return a clear verdict: ALL PASS / MINOR BUGS / MAJOR BUGS / CRITICAL BUGS.
</phase_instructions>
""",
    ),
    "compliance_tester": AgentDefinition(
        description="Compliance Tester — platform requirements (Steam, Switch 2, Xbox, PS), accessibility.",
        model=DEFAULT_MODEL, tools=QA_TOOLS,
        prompt=f"""{_COMMON_PREAMBLE}

<role>
You are the Compliance Tester.
</role>

<phase_instructions>
You work in Phase 6 (Test) when platform compliance is in scope. Check platform
requirements per the benchmark's platform phasing (Steam first, then Switch 2,
then Xbox/PS) and accessibility. Record results under
`docs/testing/[feature-name]/compliance.md`.

Return a verdict: NO BLOCKERS / BLOCKERS FOUND (list them).
</phase_instructions>
""",
    ),
}


ALL_AGENTS: dict[str, AgentDefinition] = {
    **DESIGN_AGENTS,
    **IMPLEMENTATION_ROLES,
    **QA_ROLES,
}

# Combined, distinct skill ownership across ALL roles. Today this equals the
# design partition; it grows as ROLE_SKILLS is populated. SKILL_OWNER stays the
# authoritative reverse map and is kept overlap-free by enable_skills_for_roles().
ALL_ROLE_SKILLS: dict[str, list[str]] = {**AGENT_SKILLS}


def enable_skills_for_roles() -> None:
    """Grant implementation/QA roles their skills once ROLE_SKILLS is populated.

    For each role in ROLE_SKILLS this:
      - asserts the skill is not already owned by another role (keeps the
        partition distinct, same rule as the design agents),
      - records ownership in ALL_ROLE_SKILLS and SKILL_OWNER,
      - adds the `Skill` tool to that role's AgentDefinition so it can invoke it.

    Call this at import/startup AFTER authoring the role skills under
    `.claude/skills/`. It is a no-op while ROLE_SKILLS is empty.
    """
    for role_id, skills in ROLE_SKILLS.items():
        agent = ALL_AGENTS.get(role_id)
        if agent is None:
            raise ValueError(f"ROLE_SKILLS references unknown role '{role_id}'")
        for skill in skills:
            if skill in SKILL_OWNER and SKILL_OWNER[skill] != role_id:
                raise ValueError(
                    f"Skill '{skill}' already owned by {SKILL_OWNER[skill]}, "
                    f"cannot also give to {role_id}"
                )
            SKILL_OWNER[skill] = role_id
        ALL_ROLE_SKILLS[role_id] = list(skills)
        tools = list(agent.tools or [])
        if "Skill" not in tools:
            agent.tools = ["Skill", *tools]


# Wire up any role skills declared so far (none yet — added later by design).
enable_skills_for_roles()
