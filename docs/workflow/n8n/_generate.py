#!/usr/bin/env python3
"""Generate the 8 phase sub-workflows + orchestrator as importable n8n JSON.

Run from this directory:  python3 _generate.py
Each sub-workflow:  Execute Sub-workflow Trigger -> HTTP Request (/phase/<p>)
                    -> Wait (Form approval) -> Set (normalized result).
The orchestrator chains them with the iteration-loop routing from
docs/workflow/iteration_loop.md §3, one full iteration per run.

This script is the source of truth for the JSON; edit here and re-run.
"""

from __future__ import annotations

import json
from pathlib import Path

HERE = Path(__file__).resolve().parent

# Per-phase: ordinal, phase id, human title, and an expression that renders the
# one-line approval summary shown in the form (pulls from structured_output).
PHASES = [
    ("01", "orient", "ORIENT",
     "Project phase: {{ $json.structured_output ? $json.structured_output.project_phase : 'n/a' }} | "
     "Passing: {{ $json.structured_output ? $json.structured_output.features_passing : '?' }}/"
     "{{ $json.structured_output ? $json.structured_output.features_total : '?' }} | "
     "State clear: {{ $json.structured_output ? $json.structured_output.state_is_clear : '?' }}"),
    ("02", "triage", "TRIAGE",
     "Verdict: {{ $json.structured_output ? $json.structured_output.verdict : '?' }} | "
     "Stabilization: {{ $json.structured_output ? $json.structured_output.is_stabilization : '?' }}"),
    ("03", "select", "SELECT",
     "Work item: {{ $json.structured_output ? $json.structured_output.work_item : '?' }} | "
     "Deps met: {{ $json.structured_output ? $json.structured_output.dependencies_met : '?' }} | "
     "Agents: {{ $json.structured_output ? ($json.structured_output.design_agents || []).join(', ') : '' }}"),
    ("04", "design", "DESIGN",
     "Features: {{ $json.structured_output ? ($json.structured_output.feature_ids || []).join(', ') : '' }} | "
     "Design is deliverable: {{ $json.structured_output ? $json.structured_output.design_is_deliverable : '?' }} | "
     "Consistent: {{ $json.structured_output ? $json.structured_output.cross_review_consistent : '?' }} | "
     "Contract items: {{ $json.structured_output ? ($json.structured_output.sprint_contract || []).length : '?' }} | "
     "Contract approved: {{ $json.structured_output ? $json.structured_output.contract_approved_by_evaluator : '?' }}"),
    ("05", "implement", "IMPLEMENT",
     "Build compiles: {{ $json.structured_output ? $json.structured_output.build_compiles : '?' }} | "
     "Design gaps: {{ $json.structured_output ? ($json.structured_output.design_gaps || []).length : '?' }}"),
    ("06", "test", "TEST",
     "Verdict: {{ $json.structured_output ? $json.structured_output.verdict : '?' }} | "
     "Bugs: {{ $json.structured_output ? ($json.structured_output.bugs || []).length : '?' }}"),
    ("07", "verify", "VERIFY (independent evaluator)",
     "Verdict: {{ $json.structured_output ? $json.structured_output.verdict : '?' }} | "
     "Route: {{ $json.structured_output ? $json.structured_output.route : '?' }} | "
     "Verified: {{ $json.structured_output ? ($json.structured_output.verified_feature_ids || []).join(', ') : '' }} | "
     "Exercised build: {{ $json.structured_output ? $json.structured_output.exercised_build : '?' }} | "
     "Criteria checked: {{ $json.structured_output ? ($json.structured_output.criteria_checked || []).length : '?' }} | "
     "Findings: {{ $json.structured_output ? ($json.structured_output.findings || []).length : '?' }}"),
    ("08", "commit", "COMMIT",
     "Commit made: {{ $json.structured_output ? $json.structured_output.commit_made : '?' }} | "
     "SHA: {{ $json.structured_output ? $json.structured_output.commit_sha : '' }} | "
     "Clean: {{ $json.structured_output ? $json.structured_output.clean_state : '?' }}"),
]


def sub_workflow(ordinal: str, phase: str, title: str, summary_expr: str) -> dict:
    trig = "When Called by Orchestrator"
    http = f"Run {title.title()} Phase (Agent SDK)"
    wait = "Human Approval (Form)"
    out = "Return Result"
    return {
        "name": f"GameDev — Phase {ordinal} {title.title()}",
        "nodes": [
            {
                "parameters": {
                    "workflowInputs": {
                        "values": [
                            {"name": "iteration", "type": "number"},
                            {"name": "context", "type": "string"},
                        ]
                    }
                },
                "id": f"trigger-{phase}",
                "name": trig,
                "type": "n8n-nodes-base.executeWorkflowTrigger",
                "typeVersion": 1.1,
                "position": [220, 300],
            },
            {
                "parameters": {
                    "method": "POST",
                    "url": f"={{{{ $env.AGENT_SDK_BASE_URL }}}}/phase/{phase}",
                    "sendBody": True,
                    "specifyBody": "json",
                    "jsonBody": "={{ JSON.stringify({ iteration: $json.iteration, context: $json.context }) }}",
                    # 30 min ceiling — design/implement phases do real work.
                    "options": {"timeout": 1800000},
                },
                "id": f"http-{phase}",
                "name": http,
                "type": "n8n-nodes-base.httpRequest",
                "typeVersion": 4.2,
                "position": [460, 300],
            },
            {
                "parameters": {
                    "resume": "form",
                    "formTitle": f"Approve Phase: {title}",
                    "formDescription": (
                        f"=Iteration {{{{ $('{trig}').item.json.iteration }}}} — {title} summary:\n\n"
                        "{{ $json.structured_output ? $json.structured_output.summary : $json.result_text }}\n\n"
                        f"{summary_expr}"
                    ),
                    "formFields": {
                        "values": [
                            {
                                "fieldLabel": "Decision",
                                "fieldType": "dropdown",
                                "fieldOptions": {"values": [{"option": "approve"}, {"option": "reject"}]},
                                "requiredField": True,
                            },
                            {"fieldLabel": "Notes", "fieldType": "textarea"},
                        ]
                    },
                    "options": {},
                },
                "id": f"approve-{phase}",
                "name": wait,
                "type": "n8n-nodes-base.wait",
                "typeVersion": 1.1,
                "position": [700, 300],
                "webhookId": f"approve-{phase}-webhook",
            },
            {
                "parameters": {
                    "assignments": {
                        "assignments": [
                            {"id": "a1", "name": "phase", "value": phase, "type": "string"},
                            {"id": "a2", "name": "iteration",
                             "value": f"={{{{ $('{trig}').item.json.iteration }}}}", "type": "number"},
                            {"id": "a3", "name": "approved",
                             "value": "={{ $json.Decision === 'approve' }}", "type": "boolean"},
                            {"id": "a4", "name": "approval_notes",
                             "value": "={{ $json.Notes || '' }}", "type": "string"},
                            {"id": "a5", "name": "structured_output",
                             "value": f"={{{{ $('{http}').item.json.structured_output }}}}", "type": "object"},
                            {"id": "a6", "name": "result_text",
                             "value": f"={{{{ $('{http}').item.json.result_text }}}}", "type": "string"},
                        ]
                    },
                    "options": {},
                },
                "id": f"out-{phase}",
                "name": out,
                "type": "n8n-nodes-base.set",
                "typeVersion": 3.4,
                "position": [940, 300],
            },
        ],
        "connections": {
            trig: {"main": [[{"node": http, "type": "main", "index": 0}]]},
            http: {"main": [[{"node": wait, "type": "main", "index": 0}]]},
            wait: {"main": [[{"node": out, "type": "main", "index": 0}]]},
        },
        "pinData": {},
        "settings": {"executionOrder": "v1"},
    }


def write_subworkflows() -> None:
    for ordinal, phase, title, summary in PHASES:
        wf = sub_workflow(ordinal, phase, title, summary)
        (HERE / f"{ordinal}_{phase}.json").write_text(json.dumps(wf, indent=2) + "\n")


if __name__ == "__main__":
    write_subworkflows()
    # Orchestrator is written by _generate_orchestrator.py (kept separate for clarity).
    print("Wrote 8 sub-workflows.")
