"""Structured-output schemas for each iteration-loop phase.

Each phase returns one of these Pydantic models as validated JSON
(`ResultMessage.structured_output`). The n8n orchestrator branches on the
`verdict`/routing fields, exactly matching the flowchart in
`docs/workflow/iteration_loop.md` §3.
"""

from __future__ import annotations

from typing import Literal

from pydantic import BaseModel, Field

# Verdict vocabularies taken verbatim from the task docs so the n8n IF/Switch
# nodes can compare against stable string values.
TriageVerdict = Literal["CLEAN", "MINOR", "MAJOR", "CRITICAL"]
TestVerdict = Literal["ALL_PASS", "MINOR_BUGS", "MAJOR_BUGS", "CRITICAL_BUGS"]
VerifyVerdict = Literal["PASS", "CONDITIONAL_PASS", "FAIL"]
VerifyRoute = Literal["COMMIT", "BACK_TO_DESIGN", "BACK_TO_IMPLEMENT"]


class PhaseResult(BaseModel):
    """Fields common to every phase result."""

    phase: str = Field(description="Phase name, e.g. 'orient'.")
    iteration: int = Field(description="Iteration number this run belongs to.")
    summary: str = Field(description="One-paragraph human-readable summary of what happened.")
    artifacts: list[str] = Field(
        default_factory=list,
        description="Repo-relative paths created or modified this phase.",
    )
    notes: str = Field(default="", description="Anything the next phase must know.")


class OrientResult(PhaseResult):
    project_phase: str = Field(description="Lifecycle phase: Concept/Pre-Production/.../Post-Launch.")
    features_total: int
    features_passing: int
    last_iteration_result: str = Field(description="PASS/FAIL/STABILIZATION/NONE for the previous iteration.")
    top_backlog_item: str = Field(default="", description="Current P0 item, if any.")
    state_is_clear: bool = Field(description="False if the previous iteration left an unclear state (route to triage).")


class TriageResult(PhaseResult):
    verdict: TriageVerdict
    issues: list[str] = Field(default_factory=list)
    is_stabilization: bool = Field(
        description="True when verdict is MAJOR/CRITICAL and this run became a stabilization iteration.",
    )


class SelectResult(PhaseResult):
    work_item: str
    dependencies_met: bool
    design_agents: list[str] = Field(default_factory=list, description="Agent IDs, e.g. ['agent_1','agent_7'].")
    implementation_roles: list[str] = Field(default_factory=list)
    qa_roles: list[str] = Field(default_factory=list)
    scope_statement: str


class DesignResult(PhaseResult):
    feature_ids: list[str] = Field(default_factory=list)
    spec_paths: list[str] = Field(default_factory=list)
    implementation_brief_path: str = Field(default="")
    design_is_deliverable: bool = Field(
        description="True in early phases where design IS the output; orchestrator then skips Implement+Test.",
    )
    cross_review_consistent: bool
    # Sprint contract: the agreed, testable definition of "done" negotiated BEFORE
    # implementation, and signed off by the independent evaluator so the generator
    # builds the right thing (Anthropic harness "sprint contract"). For
    # design-only iterations this is the acceptance-criteria list itself.
    sprint_contract: list[str] = Field(
        default_factory=list,
        description="Testable 'done' criteria agreed before Implement (the sprint contract).",
    )
    contract_approved_by_evaluator: bool = Field(
        default=False,
        description="True once the independent evaluator approved the sprint contract pre-implementation.",
    )


class ImplementResult(PhaseResult):
    build_compiles: bool
    design_gaps: list[str] = Field(default_factory=list, description="Gaps flagged back to design.")


class TestResult(PhaseResult):
    verdict: TestVerdict
    bugs: list[str] = Field(default_factory=list)
    bug_report_paths: list[str] = Field(default_factory=list)


class VerifyResult(PhaseResult):
    verdict: VerifyVerdict
    route: VerifyRoute = Field(description="Where the loop goes next.")
    verified_feature_ids: list[str] = Field(default_factory=list)
    # The independent evaluator must show its work: which acceptance criteria /
    # contract items it actually checked, and what failed. Empty findings on a
    # PASS is itself suspect (the evaluator is calibrated to be skeptical).
    criteria_checked: list[str] = Field(
        default_factory=list,
        description="Acceptance/contract criteria the evaluator actually verified (not asserted).",
    )
    findings: list[str] = Field(
        default_factory=list,
        description="Specific issues found; on FAIL these justify the route, on PASS they list any caveats.",
    )
    exercised_build: bool = Field(
        default=False,
        description="True if the evaluator ran the live build (e.g. via Playwright) rather than static review only.",
    )


class CommitResult(PhaseResult):
    commit_made: bool
    commit_sha: str = Field(default="")
    features_passing_after: int
    features_total_after: int
    clean_state: bool
    recommended_next: str = Field(default="")


# Map phase name -> schema, used by the runner/server to attach output_format.
PHASE_SCHEMAS: dict[str, type[PhaseResult]] = {
    "orient": OrientResult,
    "triage": TriageResult,
    "select": SelectResult,
    "design": DesignResult,
    "implement": ImplementResult,
    "test": TestResult,
    "verify": VerifyResult,
    "commit": CommitResult,
}
