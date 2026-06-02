# Task 08: Commit & Log

**Phase:** Final phase of every iteration  
**Time Budget:** ~5% of iteration  
**Responsible:** Whoever ran this iteration; Agent 7 reviews

---

## Purpose

Leave the project in a clean state for the next iteration. Update all state files, commit to version control, and ensure the next person/agent to start an iteration can orient themselves entirely from the artifacts.

This is the "clean state" protocol from the Anthropic harness. A successful commit means: no half-finished work, no undocumented decisions, no broken references, no uncommitted changes.

---

## Inputs

| Input | Source |
|---|---|
| Verification result | [07_verify.md](07_verify.md) output |
| Feature IDs to update | Verification checklist |
| Implementation artifacts | Code, assets, audio committed this iteration |
| Design documents | New or updated specs |
| Test results | `docs/testing/` |
| Bug reports (if any) | `docs/testing/bugs/` |

---

## Actions (Execute in Order)

### Step 1: Update feature list — then run the guard

Open `docs/workflow/feature_list.json`. For each feature the **independent evaluator** passed in Phase 7:

```json
// BEFORE
{ "id": "CM-003", "passes": false }

// AFTER
{ "id": "CM-003", "passes": true }
```

**Rules:**
- Only change `passes` from `false` → `true`
- Only for features the evaluator passed THIS iteration (verdict PASS / CONDITIONAL PASS)
- NEVER delete features
- NEVER edit feature descriptions
- If a feature regressed during this iteration, change it from `true` → `false` **and add a `note` field declaring the regression** (a silent regression is rejected by the guard), then file a P0 backlog item

**Then validate mechanically** (`iteration_loop.md` §8). The guard checks the sacred invariants as code — shape, append-only, immutable descriptions, no silent `true→false`:

```bash
cd agents && uv run python -m game_agents.feature_list ../docs/workflow/feature_list.json
```

For the full cross-version check (append-only / no-reword / no-silent-regression) the guard diffs the working file against the committed `HEAD` version. If validation fails, **fix the feature list before committing** — do not commit a corrupted registry. (CI also runs `agents/tests/test_feature_list.py`.)

### Step 2: Append to progress log

Add a new entry to `docs/workflow/progress.md`:

```markdown
## Iteration [N] — [YYYY-MM-DD]

**Work Item:** [Feature/system name from Select phase]
**Feature IDs:** [IDs updated this iteration]
**Agents Activated:** [Design agent IDs and skills used]
**Implementation Roles:** [Programming/Art/Audio roles that contributed]
**Deliverables Produced:**
- [File path 1: description]
- [File path 2: description]

**Test Result:** [ALL PASS / MINOR BUGS / etc. from 06_test]
**Verification Result:** [PASS / CONDITIONAL PASS from 07_verify]
**Verification Notes:** [Key observations or caveats]

**State Summary:**
- Features passing: [X] / [Total] ([percentage]%)
- Key decisions made: [Brief list of any design decisions]
- Known issues: [Open bugs, design gaps, noted caveats]
- Design gaps reported: [Any gaps from 05_implement flagged back to design]

**Recommended Next:** [What the next iteration should work on]
**Notes:** [Anything else the next iteration needs to know]
```

### Step 3: Update backlog

Open `docs/workflow/backlog.md`:

1. Mark the completed item as done: `- [x] [ITEM]`
2. Add any new items discovered during this iteration:
   - Bug fixes from test phase
   - Design gaps from implementation phase
   - Follow-up work from conditional passes
3. Re-prioritize if what we learned changes priorities
4. Check if any previously-blocked items are now unblocked

### Step 4: Stage and commit

```bash
# Stage all changed files
git add .

# Review what's being committed
git status
git diff --staged --stat

# Commit with descriptive message
git commit -m "iteration-[N]: [brief description]

- Work item: [feature name]
- Features updated: [IDs]
- Design: [agents/skills]
- Implementation: [roles]
- Test: [verdict]
- Verify: [verdict]
- Score: [X]/[Total] passing"
```

**Commit message rules:**
- Start with `iteration-[N]:`
- One-line summary of what was accomplished
- Body lists key metadata for quick scanning
- Never commit secrets, credentials, or large binary files without LFS

### Step 5: Verify clean state

After committing, run this final check:

```
CLEAN STATE VERIFICATION
════════════════════════
[ ] git status shows clean working tree (nothing uncommitted)
[ ] feature_list.json passes the guard (valid + append-only + no silent regression)
[ ] progress.md has an entry for this iteration (tagged (FAST-PATH) if applicable)
[ ] backlog.md reflects current priorities
[ ] No design documents reference deleted or renamed files
[ ] No half-implemented features left in codebase
[ ] Build compiles (if applicable)
[ ] All test artifacts are committed
```

If any check fails → fix it and amend the commit (or make an additional commit).

---

## Outputs

| Output | Location | Consumed By |
|---|---|---|
| Updated feature_list.json | `docs/workflow/feature_list.json` | Next iteration's Orient |
| New progress log entry | `docs/workflow/progress.md` | Next iteration's Orient |
| Updated backlog | `docs/workflow/backlog.md` | Next iteration's Select |
| Git commit | Repository history | Next iteration's Orient |
| Clean project state | Entire project | Next iteration starts here |

---

## Stabilization Iteration Commit

If this was a stabilization iteration (from triage):

```markdown
## Iteration [N] — [YYYY-MM-DD] (STABILIZATION)

**Trigger:** [What triage found]
**Issues Fixed:**
- [Issue 1: description, affected features, files changed]
- [Issue 2: description, affected features, files changed]

**Features Re-verified:** [Feature IDs re-tested]
**Regressions Resolved:** [Feature IDs that went false→true again]

**State Summary:**
- Features passing: [X] / [Total]
- Project is now stable for new feature work

**Recommended Next:** [Resume the deferred work item]
```

Commit message:
```
stabilization-[N]: [what was fixed]

- Resolved: [issue list]
- Re-verified: [feature IDs]
- Score: [X]/[Total] passing
```

---

## Quality Criteria

- [ ] feature_list.json updated correctly (only verified features changed)
- [ ] progress.md entry is complete with all fields
- [ ] backlog.md reflects reality (done items checked, new items added)
- [ ] Git commit made with descriptive message
- [ ] Working tree is clean after commit
- [ ] No broken references across documents
- [ ] Build compiles (if applicable)
- [ ] Next iteration can start from Orient with full context

---

## This Completes the Iteration

The loop returns to → [01_orient.md](01_orient.md) for the next cycle.

```
ITERATION [N] COMPLETE
══════════════════════
Started:    [time/date]
Work Item:  [name]
Result:     [PASS / CONDITIONAL / STABILIZATION]
Score:      [X] / [Total] features passing
Next:       [recommended work]
Clean:      [YES / NO]
```
