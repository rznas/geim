# Task 03: Select

**Phase:** After Triage confirms clean state  
**Time Budget:** ~5% of iteration  
**Responsible:** Agent 7 (Production Lead) decides priority; all agents consulted on dependencies

---

## Purpose

Choose exactly ONE work item from the backlog for this iteration. Verify that all its dependencies are satisfied. Identify which roles (design agents + implementation roles) will be needed.

**Rule:** One item per iteration. Resist the urge to batch. Incremental progress with clean commits beats ambitious sprints that leave broken state.

---

## Inputs

| Input | Source |
|---|---|
| Backlog | `docs/workflow/backlog.md` |
| Feature list | `docs/workflow/feature_list.json` |
| Dependency graph | `docs/workflow/iteration_loop.md` Section 6 |
| Agent activation matrix | `docs/workflow/iteration_loop.md` Section 5 |
| Last iteration recommendation | `docs/workflow/progress.md` (latest entry) |

---

## Actions

### Step 1: Read the backlog top-down

Start with P0 items. For each candidate:

1. Check: are ALL dependencies marked `"passes": true` in the feature list?
2. Check: are the required roles available for this iteration?
3. Check: is the estimated size realistic for one iteration?

### Step 2: Dependency verification

Use this template for the selected item:

```
SELECTED WORK ITEM
══════════════════
Name:     [Feature/system name]
ID:       [Feature list ID, e.g. CM-003]
Priority: [P0 / P1 / P2 / P3]
Category: [core_mechanics / narrative / levels / interface / aesthetics / social / business]
Est Size: [S / M / L]

DEPENDENCY CHECK
────────────────
Design Dependencies:
  [✓/✗] [Skill ID] [Skill name] — passes: [true/false]
  [✓/✗] [Skill ID] [Skill name] — passes: [true/false]

Implementation Dependencies:
  [✓/✗] [Prerequisite code/asset/system] — exists: [yes/no]
  [✓/✗] [Tool/pipeline requirement] — available: [yes/no]

Status: READY / BLOCKED (by: ___)
```

### Step 3: Identify required roles

From the activation matrix, determine:

**Design Roles (Agents 1-7):**
- Which agents produce the design spec for this item?
- What skills do they use?

**Implementation Roles:**
- Programming: which programmer roles are needed? (Gameplay, Engine, Graphics, AI, Tools, Network)
- Art Production: which art roles? (3D Modeler, Animator, Technical Artist, VFX Artist, UI/UX Artist)
- Audio Production: which audio roles? (Composer, Sound Designer)

**Testing Roles:**
- QA Tester needed? What to test?
- Compliance Tester needed? Which platform requirements?

### Step 4: Define iteration scope

Write a brief scope statement:

```
ITERATION [N] SCOPE
════════════════════
Work Item: [Name]
Design:    Agent [N] produces [deliverable] using skill [name]
Implement: [Role] builds [artifact] from design spec
Test:      [QA role] verifies [criteria]
Done When: Feature [ID] passes verification and is marked true
```

### Step 5: Handle blocked items

If the top-priority item is blocked:

1. Can the blocker be resolved as part of this iteration? → Resolve it first
2. Is the blocker another team's work? → Flag to Agent 7, select next unblocked item
3. Are ALL P0 items blocked? → This is a dependency-resolution iteration (resolve blockers, not features)

---

## Outputs

| Output | Destination |
|---|---|
| Selected work item declaration | Internal — consumed by [04_design.md](04_design.md) |
| Role activation list | Internal — who to invoke in what order |
| Scope statement | Append to progress.md at iteration end |

---

## Selection Priority Rules

1. **P0 stabilization** always comes first (from triage)
2. **Foundation phase skills** (1.1-1.4) before anything else
3. **Dependency-unblocking work** over feature work (if items are stuck)
4. **Design before implementation** — never implement without a verified design spec
5. **Agent 7 recommended item** from previous iteration's progress entry
6. **Highest backlog priority** with all dependencies met

---

## Quality Criteria

- [ ] Exactly one work item selected
- [ ] All dependencies verified as passing
- [ ] Required roles identified (design + implementation + QA)
- [ ] Scope statement written
- [ ] Item is realistically completable in one iteration

---

## Next

Proceed to → [04_design.md](04_design.md)
