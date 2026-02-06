# CLAUDE.md — Project Instructions

## What This Project Is

An indie game development project using AI agents for design, planning, and production. The project is currently in the **documentation and workflow architecture phase** — no game code, assets, or engine project exists yet. All work so far defines *how* the game will be designed and built.

## Project Structure

```
docs/
├── benchmarks/
│   └── main.md                  # Market analysis, genre strategy, pricing data for 2026
├── team_roles/
│   ├── _main.md                 # All roles: 7 design agents + 16 implementation roles
│   ├── design_roles.md          # 13 skills across 7 agents, dependency chains, orchestration patterns
│   └── _ai_arts_roles.md        # AI art generation tools guide (Midjourney, ComfyUI, Meshy, etc.)
└── workflow/
    ├── iteration_loop.md        # THE MAIN ENTRY POINT — 8-phase iteration loop
    ├── orchestrator.md          # How the loop adapts across 9 project lifecycle phases
    └── tasks/
        ├── 01_orient.md         # Phase 1: Read state, rebuild context
        ├── 02_triage.md         # Phase 2: Health check, fix regressions
        ├── 03_select.md         # Phase 3: Pick one work item, verify dependencies
        ├── 04_design.md         # Phase 4: Design agents produce specifications
        ├── 05_implement.md      # Phase 5: Programming, art, audio build from specs
        ├── 06_test.md           # Phase 6: QA testing, compliance, playtesting
        ├── 07_verify.md         # Phase 7: Cross-role review, design intent check
        └── 08_commit.md         # Phase 8: Update state files, git commit, clean state
```

## How To Work On This Project

### Starting Any Work Session

Follow the iteration loop. Every session starts with orientation:

1. Read `docs/workflow/progress.md` (if it exists) for last 3-5 entries
2. Read `docs/workflow/feature_list.json` (if it exists) for pass/fail counts
3. Read `git log --oneline -20` for recent commits
4. Read `docs/workflow/backlog.md` (if it exists) for priority queue

If these state files don't exist yet, the project needs Cycle 0 initialization — see `docs/workflow/iteration_loop.md` Section 2.

### The Iteration Loop (8 Phases)

Every iteration follows: **Orient → Triage → Select → Design → Implement → Test → Verify → Commit**

- In early phases (Concept, Pre-Production), skip Implement and Test — design documents are the deliverable
- Detailed procedures for each phase live in `docs/workflow/tasks/01_orient.md` through `08_commit.md`
- The full loop definition is in `docs/workflow/iteration_loop.md`

### Where We Are in the Lifecycle

The project lifecycle has 9 phases: Concept → Pre-Production → Prototype → Production → Alpha → Beta → Polish → Launch → Post-Launch. See `docs/workflow/orchestrator.md` for what each phase looks like.

**Current status:** Pre-Cycle 0. The workflow architecture is built but the initialization iteration (creating feature_list.json, progress.md, backlog.md, project identity) has not yet run.

## Key Concepts

### 7 Design Agents

These are role-based AI agents covering design decision-making:

| Agent | Role | Key Skills |
|-------|------|------------|
| Agent 1 | Core Design Lead | Foundations, core experience, mechanics, player psychology |
| Agent 2 | Level & Puzzle Designer | Spatial design, puzzle design |
| Agent 3 | Technical Design Specialist | Interfaces, technology choices |
| Agent 4 | Narrative & World Designer | Story, world building, characters |
| Agent 5 | Art & Aesthetics Director | Visual style, audio direction |
| Agent 6 | Social & Community Designer | Multiplayer, community features |
| Agent 7 | Production & Business Lead | Project management, business, ethics |

### 16 Implementation Roles

These cover the actual building of the game (not design decisions):

- **Programming (6):** Gameplay, Engine, Graphics, AI, Tools, Network
- **Art Production (5):** 3D Modeler, Animator, Technical Artist, VFX Artist, UI/UX Artist
- **Audio (2):** Composer, Sound Designer
- **QA (2):** QA Tester, Compliance Tester
- **Support (1):** IT/HR/Legal/Finance (external to loop)

### State Files (Created During Cycle 0)

| File | Purpose | Rules |
|------|---------|-------|
| `docs/workflow/feature_list.json` | Sacred feature registry | Append-only. Never delete features. `passes` goes `false` → `true` only after verification. |
| `docs/workflow/progress.md` | Iteration history | Append-only. One entry per iteration. First thing to read. |
| `docs/workflow/backlog.md` | Prioritized work queue | Agent 7 owns priority. Updated at end of each iteration. |

### Skill Dependencies

Skills have a strict dependency order. The full graph is in `iteration_loop.md` Section 6. The key chain:

```
1.1 (foundations) → 1.2 (experience) → 1.3 (mechanics) → downstream content skills
1.1 → 1.4 (players) → 6.1 (social), 7.3 (ethics)
1.2 → 4.1 (story) → 4.2 (worlds) → 5.1 (aesthetics), 2.2 (levels)
1.3 → 2.1 (puzzles), 3.1 (interfaces)
```

No skill can begin until ALL its upstream dependencies have `passes: true`.

## Conventions

### Commit Messages

```
iteration-[N]: [brief description]

- Work item: [feature name]
- Features updated: [IDs]
- Design: [agents/skills]
- Implementation: [roles]
- Test: [verdict]
- Verify: [verdict]
- Score: [X]/[Total] passing
```

For stabilization iterations: `stabilization-[N]: [what was fixed]`

### Design Document Template

Every design deliverable uses the template in `docs/workflow/tasks/04_design.md`:
- Agent, Skill, Iteration, Feature IDs, Date
- Context, Specification, Implementation Requirements, Acceptance Criteria, Dependencies

### Diagrams

All diagrams in documentation use **Mermaid** syntax (```mermaid blocks). No ASCII art diagrams.

### File Organization

- Design documents go in `docs/design/[feature-name]/`
- Implementation briefs go in `docs/design/[feature-name]/implementation_brief.md`
- Test results go in `docs/testing/[feature-name]/`
- Bug reports go in `docs/testing/bugs/`
- Playtest observations go in `docs/testing/playtests/`

## Important Rules

1. **One work item per iteration.** Never batch. Incremental progress beats ambitious sprints.
2. **No implementation without a design spec.** Every artifact traces to a spec from Phase 4 (Design).
3. **Feature list is sacred.** Features are never deleted or silently modified. Only `passes` status changes.
4. **Clean state in, clean state out.** Every iteration reads state at start, writes state at end.
5. **Verify before marking done.** Nothing moves to `passes: true` without passing its quality gate.
6. **Design before implementation.** Foundation skills (1.1-1.4) must pass before content or polish work begins.
7. **Benchmark alignment.** Every 5th iteration (or at phase gates), check decisions against `docs/benchmarks/main.md`.

## Benchmark Context

The market analysis in `docs/benchmarks/main.md` establishes key strategic constraints:

- **Avoid:** Pure 2D platformers (most oversaturated genre, median 200 copies)
- **Target:** Genre hybrids, co-op, roguelike modifiers, simulation, or horror
- **Price:** $8-15 for volume, $15-25 for premium single-player
- **Engine:** Unity 6 (51% of Steam releases, best cross-platform)
- **Platforms:** Steam first → Switch 2 → Xbox/PS
- **Session length:** Short sessions (<30 min) or short total (5-15 hrs) — avoid 60+ hr single-playthrough
- **Localization:** Simplified Chinese + Brazilian Portuguese (~30% revenue uplift each)
