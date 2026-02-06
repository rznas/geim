# Task 02: Triage

**Phase:** After Orient, before any new work  
**Time Budget:** ~10% of iteration (0% if state is clean)  
**Responsible:** Agent 7 (Production Lead) coordinates; any agent may execute fixes

---

## Purpose

Confirm the project is in a healthy, consistent state before starting new work. Fix any regressions, contradictions, or broken artifacts first. This is the "start the dev server and run a basic test" pattern from the Anthropic harness — never build on a broken foundation.

**Rule:** If triage finds problems, the ENTIRE iteration is dedicated to fixing them. New feature work is deferred. Log it as a "stabilization iteration."

---

## Inputs

| Input | Source | What to Check |
|---|---|---|
| Orientation findings | [01_orient.md](01_orient.md) | Any flags raised during orient |
| Feature list | `docs/workflow/feature_list.json` | Previously-passing features |
| Design documents | `docs/design/` | Internal consistency |
| Build/prototype | Game build (if exists) | Does it run? Does core loop work? |
| Git state | `git status`, `git diff` | Uncommitted changes, untracked files |

---

## Actions

### Check 1: Regression scan

For every feature currently marked `"passes": true` in `feature_list.json`:

- Has anything changed that could break it?
- If a design document was modified, does the feature still hold?
- If code was changed, does the build still work?

```
Regressions found:
  [ ] None — state is clean
  [ ] [Feature ID] — [description of regression]
```

### Check 2: Design consistency

Scan for contradictions across design documents:

- Does the mechanic spec contradict the narrative doc?
- Does the level design reference mechanics that were changed?
- Does the art direction still match the world bible?
- Does the interface spec align with current mechanics?

```
Contradictions found:
  [ ] None — documents are consistent
  [ ] [Doc A] vs [Doc B] — [description]
```

### Check 3: Build health (if applicable)

If a playable prototype or build exists:

1. Launch it
2. Test the core game loop (can you start, play, end?)
3. Test the last feature that was marked as passing
4. Note any crashes, errors, or broken behavior

```
Build status:
  [ ] No build exists yet (skip)
  [ ] Build runs, core loop works
  [ ] Build runs, but [issue]
  [ ] Build fails to launch — [error]
```

### Check 4: Git cleanliness

```
git status
git diff --stat
```

- Are there uncommitted changes? → Commit or discard them
- Are there untracked files that should be tracked? → Add them
- Is HEAD on the expected branch? → Verify

### Check 5: Triage verdict

| Verdict | Meaning | Action |
|---|---|---|
| **CLEAN** | No issues found | Proceed to [03_select.md](03_select.md) |
| **MINOR** | Small inconsistencies, no regressions | Fix in <20% of iteration time, then proceed |
| **MAJOR** | Regressions or broken build | Entire iteration = stabilization. No new work. |
| **CRITICAL** | Fundamental design contradictions | Escalate to Agent 1 + Agent 7 for resolution |

---

## Outputs

| Output | Destination | Condition |
|---|---|---|
| Clean state confirmation | Internal — flow to Select | If verdict is CLEAN or MINOR (after fix) |
| Stabilization log entry | `docs/workflow/progress.md` | If verdict is MAJOR or CRITICAL |
| Regression flags | `docs/workflow/feature_list.json` | Change `passes: true` → `passes: false` for regressed features |
| Fix commits | Git | Any fixes committed with message: `triage-fix: [description]` |

---

## Stabilization Iteration Template

When triage verdict is MAJOR or CRITICAL, log this in progress.md:

```markdown
## Iteration [N] — [DATE] (STABILIZATION)

**Trigger:** Triage found [regressions / contradictions / broken build]
**Issues Found:**
- [Issue 1: description, affected features]
- [Issue 2: description, affected features]

**Fixes Applied:**
- [Fix 1: what was done, files changed]
- [Fix 2: what was done, files changed]

**Features Re-verified:** [Feature IDs re-tested and confirmed passing]
**Verification:** PASS — state is now clean
**Score:** [X]/[Total] features passing
**Next Recommended:** [Resume the work that was deferred]
```

---

## Quality Criteria

- [ ] All 4 checks completed (regression, consistency, build, git)
- [ ] Verdict declared (CLEAN / MINOR / MAJOR / CRITICAL)
- [ ] If issues found: all fixed and committed before proceeding
- [ ] No `passes: true` feature left in a broken state
- [ ] Git working tree is clean

---

## Next

- If CLEAN or MINOR (fixed) → [03_select.md](03_select.md)
- If MAJOR/CRITICAL → stabilization iteration, then → [08_commit.md](08_commit.md)
