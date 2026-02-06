# Task 07: Verify

**Phase:** After Test (or after Design if no implementation this iteration)  
**Time Budget:** ~10% of iteration  
**Responsible:** Cross-role review — design agents + implementation leads + Agent 7

---

## Purpose

Confirm the iteration's deliverable achieves its *design intent*, not just its technical correctness. Testing (Task 06) asks "does it work?" — Verify asks "does it work *the way we intended*?"

This is the gate that must pass before any feature moves from `"passes": false` to `"passes": true`. No verification → no status change.

---

## Inputs

| Input | Source |
|---|---|
| Design specification | `docs/design/[feature-name]/` |
| Test results | `docs/testing/[feature-name]/test_results.md` (from [06_test.md](06_test.md)) |
| Implementation artifacts | Code, assets, audio (from [05_implement.md](05_implement.md)) |
| Feature list entry | `docs/workflow/feature_list.json` |
| Quality gate criteria | `docs/workflow/iteration_loop.md` Section 9 |

---

## Verification Types

Different deliverables require different verification methods:

### Design Document Verification

**When:** Design spec is the iteration's final output (no implementation)  
**Verified by:** Consuming agents + Agent 7

| Check | Method |
|---|---|
| Internal consistency | Read the doc end-to-end — no contradictions |
| Alignment with core experience | Agent 1 confirms it serves the experience goal |
| Alignment with world/narrative | Agent 4 confirms lore consistency |
| Aesthetic alignment | Agent 5 confirms visual/audio direction fits |
| Feasibility | Agent 3 confirms it can be built |
| Scope fit | Agent 7 confirms it fits project constraints |
| Benchmark alignment | Does this support the genre/market positioning? |

### Implementation Verification

**When:** Code, assets, or audio were produced this iteration  
**Verified by:** Design agent who authored the spec + Agent 7

| Check | Method |
|---|---|
| Spec compliance | Compare implementation against design spec point by point |
| Test passage | All test cases from [06_test.md](06_test.md) passed |
| Integration | Feature works within the full game context, not just isolation |
| Experience match | Play the feature — does it *feel* like what was designed? |
| Quality bar | Does it meet the project's quality standard for this phase? |
| No regressions | Previously-passing features still work |

### Cross-System Verification

**When:** The feature touches multiple systems (e.g., a mechanic that affects UI, narrative, and audio)  
**Verified by:** All agents whose systems are affected

| Check | Method |
|---|---|
| System coherence | All systems work together without contradiction |
| Data flow | Information passes correctly between systems |
| Player experience | End-to-end playthrough of the affected flow |
| Edge cases at boundaries | What happens where systems meet? |

---

## Actions

### Step 1: Assemble reviewers

From the iteration's scope statement, identify:
- The design agent(s) who created the spec → they verify design intent
- Agent 7 → verifies project fit and scope
- Any agent whose existing work is affected → they verify no regressions to their domain

### Step 2: Run verification checklist

```markdown
# Verification — Iteration [N]

**Feature:** [Name]
**Feature ID:** [ID from feature_list.json]
**Date:** [YYYY-MM-DD]

## Design Intent
- [ ] Implementation matches the design specification
- [ ] The feature achieves its stated experience goal
- [ ] No unauthorized deviations from spec (or deviations are documented)

## Technical Quality
- [ ] All test cases passed ([06_test.md](06_test.md) verdict: ___)
- [ ] Build is stable with this feature integrated
- [ ] No performance regressions beyond acceptable threshold

## Integration
- [ ] Feature works in the context of the full game (not just isolation)
- [ ] No conflicts with other existing features
- [ ] Data flows correctly between this and connected systems

## Project Fit
- [ ] Scope is within what was planned for this iteration
- [ ] No scope creep beyond the selected work item
- [ ] Benchmark alignment maintained (genre, session length, pricing strategy)

## Verdict
- [ ] **PASS** — All criteria met. Feature moves to passes: true.
- [ ] **CONDITIONAL PASS** — Minor issues noted, acceptable for current phase. Feature passes with noted caveats.
- [ ] **FAIL** — Criteria not met. [Reason]. Route back to [phase] for revision.
```

### Step 3: Handle failures

| Failure Type | Route To | Notes |
|---|---|---|
| Design intent mismatch | [04_design.md](04_design.md) | Spec needs revision, then re-implement |
| Implementation bug | [05_implement.md](05_implement.md) | Fix code/assets, then re-test |
| Test gap | [06_test.md](06_test.md) | Missing test cases, re-test more thoroughly |
| Integration conflict | [04_design.md](04_design.md) or [05_implement.md](05_implement.md) | Depends on whether conflict is design or code |
| Scope creep | [03_select.md](03_select.md) | Reduce scope, defer extras to backlog |

### Step 4: Record verification result

Write the verification outcome. This feeds directly into [08_commit.md](08_commit.md).

```markdown
VERIFICATION RESULT
═══════════════════
Feature:   [Name] ([ID])
Verdict:   PASS / CONDITIONAL PASS / FAIL
Reviewers: [Agent IDs and roles]
Notes:     [Key observations, caveats, or failure reasons]
Action:    [Proceed to commit / Route back to phase X]
```

---

## Verification Rigor by Project Phase

| Project Phase | Design Review | Spec Compliance | Integration | Experience Check | Benchmark Check |
|---|:---:|:---:|:---:|:---:|:---:|
| Pre-production | Thorough | N/A (no impl) | N/A | Conceptual | Every 5th iteration |
| Prototype | Light | Functional only | Basic | Playtest | Phase gate |
| Production | Standard | Full | Full | Playtest | Every 5th iteration |
| Alpha | Standard | Full | Full | External playtest | Phase gate |
| Beta | Light (stable) | Full | Full | External playtest | Phase gate |
| Polish | Targeted | Full | Full | Final feel check | Pre-launch |

---

## Outputs

| Output | Location | Consumed By |
|---|---|---|
| Verification result | Internal — flows to [08_commit.md](08_commit.md) | Commit phase |
| Feature status update authorization | `docs/workflow/feature_list.json` | Commit phase updates status |
| Failure routing | Back to Design / Implement / Test | Relevant phase |
| Caveats for conditional pass | `docs/workflow/progress.md` | Future iterations |

---

## Quality Criteria

- [ ] All relevant reviewers participated
- [ ] Verification checklist completed in full
- [ ] Verdict explicitly declared (PASS / CONDITIONAL / FAIL)
- [ ] If FAIL: clear reason and routing documented
- [ ] If PASS: feature is authorized for status update in feature_list.json

---

## Next

- If PASS or CONDITIONAL PASS → [08_commit.md](08_commit.md)
- If FAIL → route back to indicated phase
