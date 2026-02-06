# Task 01: Orient

**Phase:** Start of every iteration  
**Time Budget:** ~10% of iteration  
**Responsible:** Whichever agent or human begins the cycle

---

## Purpose

Rebuild full project context from artifacts alone — no guessing, no assumptions. This is the equivalent of Anthropic's "get up to speed" pattern: read the progress file, read the feature list, read git history, then act.

If you cannot determine the project state from the artifacts, the previous iteration failed to commit cleanly. Flag this immediately and route to [02_triage.md](02_triage.md).

---

## Inputs

| Artifact | Location | What to Look For |
|---|---|---|
| Progress log | `docs/workflow/progress.md` | Last 3-5 entries: what was done, what passed, what's recommended next |
| Feature list | `docs/workflow/feature_list.json` | Count of `passes: true` vs `passes: false` per category |
| Git history | `git log --oneline -20` | Recent commits: what files changed, commit messages |
| Backlog | `docs/workflow/backlog.md` | Current P0/P1 items, their dependencies |
| Benchmark checks | `docs/workflow/benchmark_checks.md` | Last alignment check date, any flagged misalignments |

---

## Actions

### Step 1: Read progress log

```
Read docs/workflow/progress.md (last 3-5 entries)
```

Extract:
- What was the last iteration's work item?
- Did it pass or fail verification?
- What was recommended for this iteration?
- Any known issues flagged?

### Step 2: Read feature list

```
Read docs/workflow/feature_list.json
```

Compute:
- Total features: ___
- Passing: ___
- Failing: ___
- Pass rate: ___%
- Which categories have the most failing features?

### Step 3: Read git history

```
git log --oneline -20
```

Look for:
- Is the last commit a clean iteration commit (`iteration-N: ...`)?
- Any commits since the last iteration entry? (indicates uncommitted work)
- Any reverts? (indicates instability)

### Step 4: Read backlog

```
Read docs/workflow/backlog.md
```

Identify:
- Top P0 item and its dependencies
- Whether any blocked items have become unblocked since last iteration
- Whether backlog priorities still make sense given progress

### Step 5: Synthesize state summary

Produce a mental model (or written note) answering:

1. **Where are we?** — Phase (Foundation / Content / Polish / Business), overall progress %
2. **Is anything broken?** — Regressions, contradictions, half-finished work
3. **What should we do next?** — Matches backlog P0, or overridden by triage findings
4. **Who needs to be involved?** — Which agents/roles for the selected work

---

## Outputs

No persistent artifact is produced. Orientation is consumed internally by the person/agent running this iteration. The output flows directly into [02_triage.md](02_triage.md).

**Exception:** If orientation reveals that the previous iteration left the project in an unclear state, document this finding in the progress log as a note before proceeding to triage.

---

## Quality Criteria

- [ ] All 5 artifacts were read (not skipped)
- [ ] Feature pass/fail count is known
- [ ] Last iteration's result (pass/fail) is understood
- [ ] Current project phase is identified
- [ ] Top backlog item and its dependencies are known

---

## Common Failure Modes

| Problem | Cause | Fix |
|---|---|---|
| Progress log is empty or missing | Cycle 0 wasn't completed | Run initialization from `iteration_loop.md` Section 2 |
| Feature list doesn't match git state | Previous iteration didn't commit cleanly | Route to triage — treat as broken state |
| Backlog has no P0 items | All P0 work is done, or backlog wasn't updated | Agent 7 must reprioritize before proceeding |
| Git log shows uncommitted work | Someone worked outside the iteration loop | Triage must reconcile the state before new work |

---

## Next

Proceed to → [02_triage.md](02_triage.md)
