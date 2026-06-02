#!/usr/bin/env python3
r"""Generate 00_orchestrator.json — the iteration-loop driver.

Run:  python3 _generate_orchestrator.py

Triggers: Manual + Schedule (one full iteration per fire, then stop).
Flow mirrors docs/workflow/iteration_loop.md §3:

  Orient -> Triage --(MAJOR/CRITICAL)--> [stabilization] Commit -> end
                  \--(CLEAN/MINOR)--> Select -> Design
  Design --(design_is_deliverable)--> Verify
         \--(implementation needed)--> Implement -> Test
  Test --(MAJOR/CRITICAL bugs)--> (stop for human; re-run Implement next iteration)
       \--(pass/minor)--> Verify
  Verify --(route=COMMIT)--> Commit -> end
         \--(BACK_TO_*)-->  (stop; routes back next iteration)

Every phase sub-workflow already contains its own human-approval Form (Wait).
A rejected phase returns approved=false; the orchestrator halts on rejection.

IMPORTANT — after import, set each Execute Sub-workflow node's workflowId to the
imported sub-workflow's ID (n8n assigns IDs on import). Placeholders are marked
REPLACE_WITH_<PHASE>_WORKFLOW_ID and listed in the README.
"""

from __future__ import annotations

import json
from pathlib import Path

HERE = Path(__file__).resolve().parent

PHASE_FILES = {
    "orient": "01_orient",
    "triage": "02_triage",
    "select": "03_select",
    "design": "04_design",
    "implement": "05_implement",
    "test": "06_test",
    "verify": "07_verify",
    "commit": "08_commit",
}


def exec_sub(phase: str, x: int, y: int, context_expr: str = "={{ '' }}") -> dict:
    """An Execute Sub-workflow node calling one phase sub-workflow."""
    return {
        "parameters": {
            "source": "database",
            "workflowId": {
                "__rl": True,
                "value": f"REPLACE_WITH_{phase.upper()}_WORKFLOW_ID",
                "mode": "id",
            },
            "workflowInputs": {
                "mappingMode": "defineBelow",
                "value": {
                    "iteration": "={{ $('Set Iteration').item.json.iteration }}",
                    "context": context_expr,
                },
            },
            "options": {"waitForSubWorkflow": True},
        },
        "id": f"exec-{phase}",
        "name": f"Phase: {phase.title()}",
        "type": "n8n-nodes-base.executeWorkflow",
        "typeVersion": 1.2,
        "position": [x, y],
    }


def gate(node_id: str, name: str, left: str, op: str, right, rtype: str, x: int, y: int,
         right_is_expr: bool = False) -> dict:
    """An IF node gating on a single condition over the previous phase result."""
    rv = right if right_is_expr else right
    return {
        "parameters": {
            "conditions": {
                "options": {"caseSensitive": True, "typeValidation": "loose"},
                "conditions": [
                    {
                        "id": "c1",
                        "leftValue": left,
                        "rightValue": rv,
                        "operator": {"type": rtype, "operation": op},
                    }
                ],
                "combinator": "and",
            },
            "options": {},
        },
        "id": node_id,
        "name": name,
        "type": "n8n-nodes-base.if",
        "typeVersion": 2.2,
        "position": [x, y],
    }


def stop(node_id: str, name: str, message: str, x: int, y: int) -> dict:
    return {
        "parameters": {"message": message},
        "id": node_id,
        "name": name,
        "type": "n8n-nodes-base.noOp",
        "typeVersion": 1,
        "position": [x, y],
    }


def build() -> dict:
    nodes = []
    conns: dict = {}

    def link(src, dst, src_out=0):
        conns.setdefault(src, {"main": []})
        main = conns[src]["main"]
        while len(main) <= src_out:
            main.append([])
        main[src_out].append({"node": dst, "type": "main", "index": 0})

    # --- Triggers -----------------------------------------------------------
    nodes.append({
        "parameters": {},
        "id": "manual-trigger",
        "name": "Run Iteration (Manual)",
        "type": "n8n-nodes-base.manualTrigger",
        "typeVersion": 1,
        "position": [-100, 200],
    })
    nodes.append({
        "parameters": {"rule": {"interval": [{"field": "cronExpression", "expression": "0 9 * * 1-5"}]}},
        "id": "schedule-trigger",
        "name": "Run Iteration (Schedule)",
        "type": "n8n-nodes-base.scheduleTrigger",
        "typeVersion": 1.1,
        "position": [-100, 380],
    })

    # --- Set iteration vars -------------------------------------------------
    nodes.append({
        "parameters": {
            "assignments": {
                "assignments": [
                    {"id": "i1", "name": "iteration",
                     "value": "={{ $execution.id }}", "type": "string"},
                ]
            },
            "options": {},
        },
        "id": "set-iteration",
        "name": "Set Iteration",
        "type": "n8n-nodes-base.set",
        "typeVersion": 3.4,
        "position": [140, 300],
    })
    link("Run Iteration (Manual)", "Set Iteration")
    link("Run Iteration (Schedule)", "Set Iteration")

    # --- Phase 1: Orient ----------------------------------------------------
    nodes.append(exec_sub("orient", 360, 300))
    link("Set Iteration", "Phase: Orient")

    # Approval gate after each phase: stop if rejected.
    nodes.append(gate("if-orient-ok", "Orient Approved?",
                      "={{ $json.approved }}", "true", True, "boolean", 580, 300))
    link("Phase: Orient", "Orient Approved?")
    nodes.append(stop("stop-orient", "Halted: Orient rejected",
                      "Iteration halted — Orient was rejected by reviewer.", 580, 520))
    link("Orient Approved?", "Halted: Orient rejected", src_out=1)

    # --- Phase 2: Triage ----------------------------------------------------
    nodes.append(exec_sub("triage", 800, 300))
    link("Orient Approved?", "Phase: Triage", src_out=0)

    nodes.append(gate("if-triage-ok", "Triage Approved?",
                      "={{ $json.approved }}", "true", True, "boolean", 1020, 300))
    link("Phase: Triage", "Triage Approved?")
    nodes.append(stop("stop-triage", "Halted: Triage rejected",
                      "Iteration halted — Triage was rejected by reviewer.", 1020, 520))
    link("Triage Approved?", "Halted: Triage rejected", src_out=1)

    # Stabilization branch: MAJOR/CRITICAL verdict -> go straight to Commit.
    nodes.append(gate("if-stabilize", "Triage MAJOR/CRITICAL?",
                      "={{ $json.structured_output.verdict }}", "regex",
                      "MAJOR|CRITICAL", "string", 1240, 300))
    link("Triage Approved?", "Triage MAJOR/CRITICAL?", src_out=0)

    # --- Phase 3: Select ----------------------------------------------------
    nodes.append(exec_sub("select", 1460, 380,
                          context_expr="={{ $('Phase: Triage').item.json.result_text }}"))
    link("Triage MAJOR/CRITICAL?", "Phase: Select", src_out=1)  # false -> normal path

    nodes.append(gate("if-select-ok", "Select Approved?",
                      "={{ $json.approved }}", "true", True, "boolean", 1680, 380))
    link("Phase: Select", "Select Approved?")
    nodes.append(stop("stop-select", "Halted: Select rejected",
                      "Iteration halted — Select was rejected by reviewer.", 1680, 560))
    link("Select Approved?", "Halted: Select rejected", src_out=1)

    # --- Phase 4: Design ----------------------------------------------------
    nodes.append(exec_sub("design", 1900, 380,
                          context_expr="={{ $('Phase: Select').item.json.structured_output.scope_statement }}"))
    link("Select Approved?", "Phase: Design", src_out=0)

    nodes.append(gate("if-design-ok", "Design Approved?",
                      "={{ $json.approved }}", "true", True, "boolean", 2120, 380))
    link("Phase: Design", "Design Approved?")
    nodes.append(stop("stop-design", "Halted: Design rejected",
                      "Iteration halted — Design was rejected by reviewer.", 2120, 560))
    link("Design Approved?", "Halted: Design rejected", src_out=1)

    # Design-only branch: skip Implement+Test, jump to Verify.
    nodes.append(gate("if-design-deliverable", "Design IS deliverable?",
                      "={{ $json.structured_output.design_is_deliverable }}", "true", True,
                      "boolean", 2340, 380))
    link("Design Approved?", "Design IS deliverable?", src_out=0)

    # --- Phase 5: Implement -------------------------------------------------
    nodes.append(exec_sub("implement", 2560, 460,
                          context_expr="={{ $('Phase: Design').item.json.structured_output.implementation_brief_path }}"))
    link("Design IS deliverable?", "Phase: Implement", src_out=1)  # false -> build it

    nodes.append(gate("if-impl-ok", "Implement Approved?",
                      "={{ $json.approved }}", "true", True, "boolean", 2780, 460))
    link("Phase: Implement", "Implement Approved?")
    nodes.append(stop("stop-impl", "Halted: Implement rejected",
                      "Iteration halted — Implement was rejected by reviewer.", 2780, 640))
    link("Implement Approved?", "Halted: Implement rejected", src_out=1)

    # --- Phase 6: Test ------------------------------------------------------
    nodes.append(exec_sub("test", 3000, 460))
    link("Implement Approved?", "Phase: Test", src_out=0)

    nodes.append(gate("if-test-ok", "Test Approved?",
                      "={{ $json.approved }}", "true", True, "boolean", 3220, 460))
    link("Phase: Test", "Test Approved?")
    nodes.append(stop("stop-test", "Halted: Test rejected",
                      "Iteration halted — Test was rejected by reviewer.", 3220, 640))
    link("Test Approved?", "Halted: Test rejected", src_out=1)

    # Test verdict gate: MAJOR/CRITICAL bugs -> halt (re-run Implement next iter).
    nodes.append(gate("if-test-blocking", "Test MAJOR/CRITICAL bugs?",
                      "={{ $json.structured_output.verdict }}", "regex",
                      "MAJOR_BUGS|CRITICAL_BUGS", "string", 3440, 460))
    link("Test Approved?", "Test MAJOR/CRITICAL bugs?", src_out=0)
    nodes.append(stop("stop-test-bugs", "Halted: blocking bugs",
                      "Blocking bugs found — loop returns to Implement next iteration.", 3440, 640))
    link("Test MAJOR/CRITICAL bugs?", "Halted: blocking bugs", src_out=0)  # true -> halt

    # --- Phase 7: Verify (reached from design-only OR from clean test) ------
    nodes.append(exec_sub("verify", 3660, 380))
    link("Design IS deliverable?", "Phase: Verify", src_out=0)            # true -> verify
    link("Test MAJOR/CRITICAL bugs?", "Phase: Verify", src_out=1)         # false -> verify

    nodes.append(gate("if-verify-ok", "Verify Approved?",
                      "={{ $json.approved }}", "true", True, "boolean", 3880, 380))
    link("Phase: Verify", "Verify Approved?")
    nodes.append(stop("stop-verify", "Halted: Verify rejected",
                      "Iteration halted — Verify was rejected by reviewer.", 3880, 560))
    link("Verify Approved?", "Halted: Verify rejected", src_out=1)

    # Verify route gate: only COMMIT proceeds; BACK_TO_* halts for next iteration.
    nodes.append(gate("if-verify-commit", "Verify route = COMMIT?",
                      "={{ $json.structured_output.route }}", "equals",
                      "COMMIT", "string", 4100, 380))
    link("Verify Approved?", "Verify route = COMMIT?", src_out=0)
    nodes.append(stop("stop-verify-route", "Halted: routed back",
                      "Verify routed back to Design/Implement — handled next iteration.", 4100, 560))
    link("Verify route = COMMIT?", "Halted: routed back", src_out=1)

    # --- Phase 8: Commit (from normal COMMIT route OR stabilization) --------
    nodes.append(exec_sub("commit", 4320, 300))
    link("Verify route = COMMIT?", "Phase: Commit", src_out=0)
    link("Triage MAJOR/CRITICAL?", "Phase: Commit", src_out=0)  # stabilization true -> commit

    nodes.append(gate("if-commit-ok", "Commit Approved?",
                      "={{ $json.approved }}", "true", True, "boolean", 4540, 300))
    link("Phase: Commit", "Commit Approved?")
    nodes.append(stop("stop-commit", "Halted: Commit rejected",
                      "Iteration halted — Commit was rejected by reviewer.", 4540, 520))
    link("Commit Approved?", "Halted: Commit rejected", src_out=1)

    nodes.append(stop("done", "Iteration Complete",
                      "Iteration complete. Re-run (or wait for schedule) for the next cycle.",
                      4760, 300))
    link("Commit Approved?", "Iteration Complete", src_out=0)

    return {
        "name": "GameDev — 00 Iteration Loop Orchestrator",
        "nodes": nodes,
        "connections": conns,
        "pinData": {},
        "settings": {"executionOrder": "v1"},
    }


if __name__ == "__main__":
    (HERE / "00_orchestrator.json").write_text(json.dumps(build(), indent=2) + "\n")
    print("Wrote 00_orchestrator.json")
