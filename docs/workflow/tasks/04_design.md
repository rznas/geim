# Task 04: Design

**Phase:** After Select, before Implement  
**Time Budget:** ~25% of iteration (more in early phases, less in late production)  
**Responsible:** Design Agents 1-7 per the activation matrix

---

## Purpose

Produce the design specification that implementation roles will build from. Every implementation artifact (code, art asset, sound) must trace back to a design spec created in this phase. No spec → no implementation.

This phase activates only the agents required for the selected work item. Each agent works within its defined skill boundaries from `docs/team_roles/design_roles.md`.

---

## Inputs

| Input | Source |
|---|---|
| Selected work item + scope | [03_select.md](03_select.md) output |
| Agent activation list | [03_select.md](03_select.md) output |
| Existing design documents | `docs/design/` |
| Feature list | `docs/workflow/feature_list.json` |
| Benchmark data | `docs/benchmarks/main.md` |

---

## Agent Activation Reference

### Agent 1: Core Design Lead
**Skills:** establishing-design-foundations, designing-core-gameplay-experience, designing-game-systems-and-mechanics, understanding-and-engaging-players  
**Produces:** Design vision docs, mechanic specifications, player personas, experience goals  
**Invoke when:** Core gameplay, mechanics, player experience, system design

### Agent 2: Level & Puzzle Designer
**Skills:** designing-puzzles-and-challenges, designing-game-spaces-and-levels  
**Produces:** Level layouts, puzzle designs, spatial flow diagrams, difficulty curves  
**Invoke when:** Level creation, puzzle design, spatial gameplay

### Agent 3: Technical Design Specialist
**Skills:** designing-game-interfaces-and-feedback, choosing-game-technology  
**Produces:** UI/UX specs, interface flows, technology recommendations, technical feasibility reports  
**Invoke when:** Interface design, tech stack decisions, technical constraints

### Agent 4: Narrative & World Designer
**Skills:** integrating-story-and-gameplay, creating-game-worlds-and-characters  
**Produces:** Story outlines, world bibles, character sheets, narrative flow docs, dialogue frameworks  
**Invoke when:** Story, lore, characters, world building, narrative-mechanic integration

### Agent 5: Art & Aesthetics Director
**Skills:** applying-game-aesthetics  
**Produces:** Style guides, mood boards, visual references, audio design briefs, aesthetic principles  
**Invoke when:** Visual direction, audio direction, aesthetic consistency

### Agent 6: Social & Community Designer
**Skills:** designing-multiplayer-and-communities  
**Produces:** Multiplayer specs, social system designs, community guidelines, moderation frameworks  
**Invoke when:** Multiplayer, co-op, social features, community systems

### Agent 7: Production & Business Lead
**Skills:** managing-game-development-teams, managing-business-and-stakeholders, designing-for-impact-and-ethics  
**Produces:** Project plans, playtest protocols, pitch decks, business analyses, ethical reviews  
**Invoke when:** Planning, coordination, business decisions, playtesting, ethics

---

## Actions

### Step 1: Activate agents in dependency order

Follow the dependency graph. Upstream agents produce first, downstream agents consume.

**Example ordering for a new level:**
1. Agent 1 → confirm mechanics spec exists (dependency, not new work)
2. Agent 4 → provide world/story context for this level
3. Agent 2 → design level layout, puzzles, spatial flow
4. Agent 3 → design level-specific UI elements
5. Agent 5 → provide aesthetic direction for level

### Step 2: Each agent produces a spec document

Every design deliverable follows this template:

```markdown
# [Deliverable Title]

**Agent:** [Agent ID and name]
**Skill:** [Skill name]
**Iteration:** [N]
**Feature IDs:** [Which features this satisfies]
**Date:** [YYYY-MM-DD]

---

## Context
[Why this deliverable exists, what problem it solves]

## Specification
[The actual design content — mechanics, layouts, story, etc.]

## Implementation Requirements
[What implementation roles need to know to build this]
- Programming: [specific requirements]
- Art: [specific requirements]
- Audio: [specific requirements]

## Acceptance Criteria
[How to verify the implementation matches this design]
- [ ] [Criterion 1]
- [ ] [Criterion 2]

## Dependencies
- Upstream: [What this consumed from other agents]
- Downstream: [What depends on this]
```

### Step 3: Cross-agent review

If multiple agents contributed, they review each other's outputs for consistency:

- Agent 1 reviews: does this match the core experience goal?
- Agent 4 reviews: does this fit the world/narrative?
- Agent 5 reviews: does this align with the aesthetic direction?
- Agent 7 reviews: is this feasible within project scope?

### Step 4: Produce implementation brief

Compile the design outputs into a clear brief for implementation roles:

```markdown
# Implementation Brief — Iteration [N]

## Work Item: [Name]

## For Programming
[What needs to be coded, referencing design specs]
- Systems: [list]
- Interfaces: [list]
- Technical constraints: [list]

## For Art Production
[What assets need to be created, referencing style guides]
- Models: [list with reference to Agent 5 direction]
- Animations: [list]
- VFX: [list]
- UI elements: [list with reference to Agent 3 specs]

## For Audio Production
[What sounds/music need to be created]
- Music: [list with reference to Agent 5 audio brief]
- SFX: [list]

## Acceptance Criteria
[Pulled from design specs — what "done" looks like]
```

### Step 5: Agree the sprint contract — BEFORE any implementation (new)

The single cheapest place to catch "we built the wrong thing" is *before* it is built. Anthropic's harness work introduced a **sprint contract**: the generator and the **independent evaluator** agree on what "done" looks like for this chunk of work — as concrete, testable criteria — *before any code is written*. The evaluator reviews the contract up front to confirm "the generator was building the right thing." (One real sprint there had **27 criteria** for a single editor feature.)

Append the contract to the bottom of the implementation brief and get the evaluator's sign-off:

```markdown
## Sprint Contract (definition of "done" — agreed before Implement)

Each item is a single, testable statement the Verify phase can check against the
running build. Be specific enough that PASS/FAIL is unambiguous.

- [ ] [Testable criterion 1 — e.g. "Player can pick up an object within 0.2s of
      pressing E while in range; HUD shows the held item."]
- [ ] [Testable criterion 2 ...]
- [ ] [Edge case to cover ...]
- [ ] [What is explicitly OUT of scope this iteration ...]

**Evaluator sign-off:** [ ] Approved — criteria are testable and match the
selected work item's intent.   (The independent evaluator approves this list
BEFORE implementation begins. If it doesn't, revise the spec/brief, not the bar
later.)
```

This contract becomes the **primary input to Phase 7 (Verify)** — the evaluator grades the build against exactly these criteria, so they cannot be quietly weakened after the fact. Record it in `DesignResult.sprint_contract`, and set `contract_approved_by_evaluator: true` once signed off.

> **Why the evaluator, not just the design agents?** The evaluator is the same independent, skeptical agent that will judge the result (see [07_verify.md](07_verify.md)). Having it approve the bar up front means the maker and the judge share one definition of done — and the judge never saw the build, so it cannot rationalize a weaker bar later.

---

## Outputs

| Output | Location | Consumed By |
|---|---|---|
| Design specification(s) | `docs/design/[feature-name]/` | Implementation roles, QA |
| Implementation brief | `docs/design/[feature-name]/implementation_brief.md` | [05_implement.md](05_implement.md) |
| **Sprint contract** (evaluator-approved "done" list) | bottom of `implementation_brief.md` | [05_implement.md](05_implement.md), [07_verify.md](07_verify.md) |
| Updated feature list (if design itself is the deliverable) | `docs/workflow/feature_list.json` | All |

---

## When Design IS the Deliverable

In early project phases (Foundation, Pre-production), the design spec itself may be the iteration's final output — there's nothing to implement yet. In this case:

1. Design spec is produced and reviewed
2. The **sprint contract is the spec's own acceptance criteria** (the testable bar the evaluator will check the document against) — set `design_is_deliverable: true`
3. Skip [05_implement.md](05_implement.md) and [06_test.md](06_test.md)
4. Go directly to [07_verify.md](07_verify.md), where the **independent evaluator** reviews the document against rubric A (design-document deliverable)
5. Then [08_commit.md](08_commit.md)

---

## Quality Criteria

- [ ] Only required agents were activated (no speculative work)
- [ ] Agents activated in correct dependency order
- [ ] Each agent produced a spec with the standard template
- [ ] Implementation brief compiled with clear requirements per role
- [ ] Cross-agent review completed (no contradictions)
- [ ] **Sprint contract written as testable criteria and approved by the independent evaluator BEFORE implementation**
- [ ] All spec documents saved to `docs/design/`

---

## Next

- If implementation is needed → [05_implement.md](05_implement.md)
- If design is the final deliverable → [07_verify.md](07_verify.md)
