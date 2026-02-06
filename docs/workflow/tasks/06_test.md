# Task 06: Test

**Phase:** After Implement, before Verify  
**Time Budget:** ~15% of iteration  
**Responsible:** QA Tester, Compliance Tester (previously uncovered roles)

---

## Purpose

Systematically test the implemented feature against its design specification and acceptance criteria. This is NOT the same as the Verify phase — Test catches bugs and implementation errors; Verify confirms design intent was achieved.

This phase brings in the 2 QA roles that were previously uncovered in `docs/team_roles/_main.md`.

---

## Inputs

| Input | Source |
|---|---|
| Integration build | [05_implement.md](05_implement.md) output |
| Design specification | `docs/design/[feature-name]/` |
| Acceptance criteria | Design spec's acceptance criteria section |
| Feature list entry | `docs/workflow/feature_list.json` |
| Platform requirements | Platform-specific guidelines (Steam, Switch 2, etc.) |

---

## Testing Roles

### QA Tester

**Responsibility:** Find bugs, verify feature completeness, test edge cases  
**Triggered by:** Every iteration that produces implementation artifacts

**Test types:**

| Test Type | What It Checks | When to Use |
|---|---|---|
| **Functional** | Does the feature work as specified? | Every feature |
| **Regression** | Did this change break existing features? | Every iteration |
| **Edge case** | What happens at boundaries? (0 items, max items, etc.) | Complex systems |
| **Performance** | Frame rate, load times, memory usage | After optimization targets set |
| **Usability** | Can a player figure this out? Is it frustrating? | UI/UX changes |
| **Playtest** | Is it fun? Does it feel right? | Gameplay mechanics |

### Compliance Tester

**Responsibility:** Ensure platform requirements are met  
**Triggered by:** Platform-targeting iterations, pre-launch

**Compliance areas:**

| Area | Requirements | When to Check |
|---|---|---|
| **Steam** | Steamworks integration, achievements, cloud saves, controller support | Pre-launch |
| **Switch 2** | Nintendo guidelines, performance targets, submission checklist | Porting phase |
| **Xbox** | Xbox Requirements (XR), accessibility, GDK integration | Porting phase |
| **PlayStation** | TRC (Technical Requirements Checklist), PS features | Porting phase |
| **Accessibility** | 24 ESA accessibility tags, remappable controls, subtitles, colorblind modes | Ongoing |
| **Ratings** | ESRB/PEGI content descriptors | Pre-launch |

---

## Actions

### Step 1: Create test plan

For the current iteration's feature:

```markdown
# Test Plan — [Feature Name]

**Feature ID:** [From feature_list.json]
**Build:** [Version/commit hash]
**Tester:** [Name/role]
**Date:** [YYYY-MM-DD]

## Acceptance Criteria (from design spec)
- [ ] [Criterion 1]
- [ ] [Criterion 2]
- [ ] [Criterion 3]

## Functional Tests
| # | Test Case | Steps | Expected Result | Actual Result | Pass/Fail |
|---|-----------|-------|-----------------|---------------|-----------|
| 1 | [Case]    | [Steps] | [Expected]    | [Actual]      | [ ]       |
| 2 | [Case]    | [Steps] | [Expected]    | [Actual]      | [ ]       |

## Edge Case Tests
| # | Scenario | Expected Behavior | Actual | Pass/Fail |
|---|----------|-------------------|--------|-----------|
| 1 | [Edge]   | [Expected]        | [Actual] | [ ]     |

## Regression Tests
| # | Existing Feature | Still Works? | Notes |
|---|------------------|-------------|-------|
| 1 | [Feature]        | [ ]         |       |
```

### Step 2: Execute tests

Run every test case. For each:

1. Follow the exact steps listed
2. Record the actual result
3. Mark pass or fail
4. If fail: document reproduction steps, screenshot/video if possible

### Step 3: Playtest (for gameplay features)

Reference Agent 7's playtesting framework (Skill 7.1):

**Six Questions:**
1. **Why** are we testing? (What do we want to learn?)
2. **Who** tests? (Developer, team, external player?)
3. **Where** do they test? (In-office, remote, controlled environment?)
4. **When** in development? (Prototype, alpha, beta?)
5. **What** do we observe? (Behavior, emotions, confusion points?)
6. **How** do we collect data? (Survey, interview, FFWWDD observation?)

**FFWWDD Observation Framework:**
- **F**rustrations — Where did the player get stuck or annoyed?
- **F**un — What made them smile, laugh, or lean forward?
- **W**hat they did — Actual behavior vs. expected behavior
- **W**hat they said — Verbal reactions, thinking aloud
- **D**ifficulty — Too easy? Too hard? Unclear?
- **D**uration — How long did they play? When did engagement drop?

### Step 4: File bug reports

For every failure:

```markdown
## Bug Report — [BUG-NNN]

**Feature:** [Feature name and ID]
**Severity:** Critical / Major / Minor / Cosmetic
**Reproducibility:** Always / Sometimes / Rare / Once

**Steps to Reproduce:**
1. [Step 1]
2. [Step 2]
3. [Step 3]

**Expected:** [What should happen]
**Actual:** [What actually happens]
**Evidence:** [Screenshot, video, log file]

**Environment:** [OS, hardware, build version]
**Assigned to:** [Role that should fix it]
```

### Step 5: Compliance check (when applicable)

Run platform-specific checks:

```markdown
## Compliance Check — [Platform]

**Standard:** [Steam/Nintendo/Xbox/PS guidelines version]
**Date:** [YYYY-MM-DD]

| Requirement | Status | Notes |
|-------------|--------|-------|
| [Req 1]     | [ ]    |       |
| [Req 2]     | [ ]    |       |

**Accessibility Tags Met:**
- [ ] Remappable controls
- [ ] Subtitle customization
- [ ] Colorblind modes
- [ ] Adjustable difficulty
- [ ] Save anywhere
```

### Step 6: Test verdict

| Verdict | Meaning | Action |
|---|---|---|
| **ALL PASS** | Every test case passed, no bugs found | Proceed to [07_verify.md](07_verify.md) |
| **MINOR BUGS** | Cosmetic/minor issues, core feature works | Document bugs, proceed to Verify, bugs go to backlog |
| **MAJOR BUGS** | Feature doesn't work correctly | Return to [05_implement.md](05_implement.md) for fixes, re-test |
| **CRITICAL BUGS** | Build broken or data loss | Return to [05_implement.md](05_implement.md) immediately |

---

## Outputs

| Output | Location | Consumed By |
|---|---|---|
| Test results | `docs/testing/[feature-name]/test_results.md` | [07_verify.md](07_verify.md) |
| Bug reports | `docs/testing/bugs/` | [05_implement.md](05_implement.md) (for fixes), Backlog |
| Playtest observations | `docs/testing/playtests/` | Agent 1, Agent 7 |
| Compliance report | `docs/testing/compliance/` | Agent 7, [07_verify.md](07_verify.md) |
| Test verdict | Internal | Routes to Verify or back to Implement |

---

## Testing Depth by Project Phase

Not every iteration needs full testing. Scale testing to the project phase:

| Project Phase | Functional | Regression | Edge Case | Playtest | Compliance | Performance |
|---|:---:|:---:|:---:|:---:|:---:|:---:|
| Pre-production | Light | - | - | Concept | - | - |
| Prototype | Core only | Light | - | Yes | - | - |
| Production | Full | Full | Important | Yes | Start | Baseline |
| Alpha | Full | Full | Full | Extensive | Full | Profile |
| Beta | Full | Full | Full | External | Final | Optimize |
| Polish | Targeted | Full | Full | Final | Certify | Ship-ready |

---

## Quality Criteria

- [ ] Test plan created from design spec acceptance criteria
- [ ] All functional tests executed
- [ ] Regression tests run on previously-passing features
- [ ] Bug reports filed for all failures with reproduction steps
- [ ] Playtest conducted (if gameplay feature)
- [ ] Test verdict declared
- [ ] Results documented in `docs/testing/`

---

## Next

- If ALL PASS or MINOR BUGS → [07_verify.md](07_verify.md)
- If MAJOR/CRITICAL BUGS → back to [05_implement.md](05_implement.md), then re-test
