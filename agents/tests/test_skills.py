"""Tests for the distinct skill-ownership guarantee (design_roles.md) and the
independent evaluator's isolation (harness-design-long-running-apps)."""

from game_agents.agents import (
    AGENT_SKILLS,
    ALL_AGENTS,
    DESIGN_AGENTS,
    EVALUATOR,
    SKILL_OWNER,
    assert_distinct_skills,
    installed_skill_names,
)


def test_partition_is_distinct_and_matches_filesystem():
    # No overlap, expected count, and matches .claude/skills/ on disk.
    assert_distinct_skills(check_filesystem=True)


def test_every_design_skill_has_exactly_one_owner():
    owners = [SKILL_OWNER[s] for skills in AGENT_SKILLS.values() for s in skills]
    # Each skill name appears once in SKILL_OWNER.
    flat = [s for skills in AGENT_SKILLS.values() for s in skills]
    assert len(flat) == len(set(flat))
    assert set(owners) == set(AGENT_SKILLS)


def test_owned_skills_exist_on_disk():
    installed = installed_skill_names()
    if installed:  # skip if running outside the repo
        for skills in AGENT_SKILLS.values():
            for skill in skills:
                assert skill in installed, f"{skill} not installed under .claude/skills/"


def test_only_design_agents_have_skill_tool():
    for aid, agent in DESIGN_AGENTS.items():
        assert "Skill" in (agent.tools or []), f"{aid} should own the Skill tool"
    # Implementation + QA + evaluator roles have no Skill tool (added later for
    # impl/QA; never for the evaluator, which owns no design skills by design).
    non_design = set(ALL_AGENTS) - set(DESIGN_AGENTS)
    for aid in non_design:
        assert "Skill" not in (ALL_AGENTS[aid].tools or []), f"{aid} must not have Skill yet"


def test_evaluator_is_registered_and_not_a_design_agent():
    # The independent judge is in the roster but owns no skills and is not one of
    # the 7 design agents.
    assert ALL_AGENTS.get("evaluator") is EVALUATOR
    assert "evaluator" not in DESIGN_AGENTS
    assert "evaluator" not in AGENT_SKILLS
    assert "evaluator" not in set(SKILL_OWNER.values())


def test_evaluator_is_read_only():
    # The evaluator must never be able to mutate what it grades: no Write/Edit/
    # Bash/Skill. It may read and drive a live build via Playwright MCP tools.
    tools = set(EVALUATOR.tools or [])
    for forbidden in ("Write", "Edit", "Bash", "Skill", "Task"):
        assert forbidden not in tools, f"evaluator must not have {forbidden}"
    assert {"Read", "Grep", "Glob"} <= tools
    assert any(t.startswith("mcp__playwright__") for t in tools), (
        "evaluator should be able to exercise a live build via Playwright MCP"
    )
