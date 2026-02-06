---
name: choosing-game-technology
description: Evaluates game technology choices by distinguishing foundational vs decorational technologies, navigating hype cycles, identifying disruptive innovations, and predicting technology trends. Use when selecting technology stacks, evaluating new platforms, making technical architecture decisions, or assessing emerging technologies for game projects.
---

# Choosing Game Technology

**Agent Role:** Technical Design Specialist
**Dependencies:** establishing-design-foundations (Agent 1)

## Overview

Technology is the physical medium that makes a game possible—not just computers and electronics, but boards, tokens, screens, controllers, and any physical objects the game requires. This skill helps you make strategic technology decisions by understanding the difference between foundational and decorational technologies, navigating technology hype cycles, identifying disruptive innovations, and predicting technology trends that matter for game design.

**Critical Principle:** Technology should serve the experience, not the other way around. Walt Disney famously distrusted engineers who "designed primarily for themselves without regard to the intended use of the product."

## When to Use This Skill

- Selecting a technology stack for a new game project
- Evaluating whether to adopt new/emerging technologies
- Making technical architecture decisions
- Assessing platform choices (mobile, console, PC, VR/AR, board game materials)
- Navigating team debates about technology adoption
- Predicting which technologies will become important
- Responding to stakeholder pressure to use "the latest tech"
- Determining when to innovate vs. use proven tools

## Core Concepts Quick Reference

### Foundational vs. Decorational Technology

**Foundational**: Makes a new kind of experience possible
- Example: Synchronized sound in *Steamboat Willie* (entire cartoon designed around it)
- Example: Grooves in *Abalone* board game (enabled new pushing mechanic)
- Example: Fast scrolling in *Sonic the Hedgehog* (enabled speed-based gameplay)
- Example: Ragdoll physics in *Ico* (foundation for hand-holding gameplay)

**Decorational**: Makes existing experiences better
- Example: Sound added to *Plane Crazy* after the fact
- Example: Ragdoll physics for grenade explosions in shooters
- Example: Pretty graphics without gameplay innovation

**Key Question:** "How can I make this technology foundational to my game?"

### Technology Selection Patterns

1. **The Hype Cycle** (5 phases):
   - Technology trigger → Peak of inflated expectations → Trough of disillusionment → Slope of enlightenment → Plateau of productivity

2. **The Innovator's Dilemma**:
   - Disruptive technologies start as "not good enough"
   - Gradually improve until they cross the "good enough" threshold
   - Then suddenly dominate the market

3. **The Law of Divergence**:
   - Technologies diverge and specialize over time (more devices, not fewer)
   - Exception: "The Pocket" (portable devices converge for convenience)

4. **The Singularity**:
   - Technology accelerates, making predictions harder
   - Good news for game designers: more possibilities

### Five Utopian Technology Directions

Technologies most likely to lead to a better world:
1. **Magical interfaces**: Feel intuitive and delightful (iPhone/iPad touch, Kinect)
2. **Fair payment**: Systems players find fair while sustaining development
3. **Less artificial AI**: AI that feels interesting and human-like
4. **Family and friends**: Games connecting people meaningfully
5. **Transformation**: Games that help people become who they want to be

## Technology Evaluation Workflow

### Step 1: Define the Experience First

**Before** evaluating any technology, clearly articulate:
- What experience am I trying to create?
- What are the essential experience goals?
- What player needs must be met?

**Critical:** Technology serves experience, not vice versa.

### Step 2: Classify Technology as Foundational or Decorational

For each technology you're considering:

**Ask:**
- Does this enable a fundamentally new experience? → Foundational
- Does this make an existing experience prettier/smoother? → Decorational

**Evaluate:**
- If decorational: Is it worth the cost/complexity? Can I skip it?
- If foundational: Is this the core of my game concept?

**Design Exercise:**
- Write a one-sentence game description without mentioning the technology
- If the description doesn't make sense → Technology is foundational ✓
- If the description still works → Technology is decorational

**See:** [foundational-vs-decorational-guide.md](foundational-vs-decorational-guide.md) for detailed examples and evaluation criteria.

### Step 3: Assess the Hype Cycle Position

For emerging/new technologies:

**Identify the phase:**
1. **Technology trigger**: Just announced/discovered? Wait and observe.
2. **Peak of inflated expectations**: Everyone talking, few have used it? High risk period.
3. **Trough of disillusionment**: Recently despised after hype? May be good time to evaluate.
4. **Slope of enlightenment**: Real use cases emerging? Study these carefully.
5. **Plateau of productivity**: Benefits widely understood? Safe choice.

**Three reasons to understand the Hype Cycle:**
1. **Immunity**: Avoid risking your career on unproven technology
2. **Inoculation**: Help team members understand the pattern
3. **Fund-raising**: Identify opportunities (get funding during inflated expectations, deliver during enlightenment)

**See:** [technology-trends-and-patterns.md](technology-trends-and-patterns.md) for detailed analysis.

### Step 4: Evaluate for Disruptive Potential (Innovator's Dilemma)

**Questions to ask:**
- Is there a new technology that seems "not good enough" today?
- Is it improving rapidly?
- Could it cross the "good enough" threshold soon?
- What would happen if it does?

**Historical examples:**
- Console gaming displacing PC retail games
- Motion controllers (Wiimote) disrupting traditional gamepads
- Touch interfaces replacing buttons

**Current candidates** (as of book publication):
- Speech recognition
- AI/machine learning
- Brainwave sensing
- AR/VR technologies

**Risk/Reward:**
- High risk: Technology may never become "good enough"
- High reward: Ride the wave if you design for it before others

### Step 5: Consider Divergence vs. Convergence

**Default assumption:** Technologies will diverge (specialize), not converge

**Example:**
- Wrong prediction: "One device will play all videos, music, and games"
- Reality: More specialized devices (different remote controls)

**Why divergence happens:**
- Technologies advance at different rates
- Separate devices allow mix-and-match
- Don't replace entire system when one component improves

**Exception - The Pocket:**
- Portable devices (smartphones) do converge
- Convenience trumps specialization
- Important for mobile game design

**Implication for design:**
- Don't assume future tech consolidation
- Design for platform-specific strengths
- Embrace specialization

### Step 6: Predict Technology Trends

**Framework:** Technology + Psychology = Destiny

**Prediction process:**
1. Examine historical trends (what has happened?)
2. Identify what's likely to happen (scaffolding)
3. Build less confident predictions on that scaffolding
4. Discuss with others to refine
5. Make concrete, specific predictions

**Practice questions:**
- What will [platform] gaming be like in 2/4/8 years?
- What percentage of games will be downloaded vs. physical in 2/5 years?
- Will VR/AR become dominant? Why or why not?
- What will [genre] be different in 4 years?
- What new genres might emerge? Why?

**See:** [future-prediction-framework.md](future-prediction-framework.md) for structured prediction exercises.

### Step 7: Apply the Design Lenses

Use all three technology lenses to examine your choices:

**Lens #104: The Lens of Technology**
- What technologies will help deliver my desired experience?
- Am I using them foundationally or decorationally?
- If not foundational, should I use them at all?
- Is this tech as cool as I think it is?
- Is there a "disruptive technology" I should consider instead?

**Lens #105: The Lens of the Crystal Ball**
- What will [technology] be like in 2/4/10 years? Why?
- Make answers as concrete as possible

**Lens #106: The Lens of Utopia**
- Am I creating something that feels magical?
- Do people get excited hearing about it? Why or why not?
- Does this advance the state of the art meaningfully?
- Does this make the world a better place?

**See:** [technology-design-lenses.md](technology-design-lenses.md) for detailed lens guidance and questions.

## Common Technology Decision Scenarios

### Scenario 1: Team Wants to Use "Cool New Tech"

**Challenge:** Engineers excited about new technology, pushing to use it

**Workflow:**
1. Ask: "What experience does this enable that wasn't possible before?"
2. Classify as foundational or decorational
3. If decorational: Gently redirect to proven tools
4. If foundational: Assess Hype Cycle position (risk vs. reward)
5. If at "peak of inflated expectations": High risk, proceed with caution
6. Require concrete prototypes proving the technology works for your use case

**Walt Disney's warning:** Engineers may design "primarily for themselves without regard to the intended use of the product"

### Scenario 2: Stakeholder Demands Use of New Platform

**Challenge:** Client/stakeholder insists on using latest platform/technology

**Workflow:**
1. Identify their underlying motivation (Hype Cycle? Fear of missing out?)
2. Use "Michelangelo method" (from managing-business-and-stakeholders skill):
   - Surface desire: "Use VR"
   - Underlying desire: "Be innovative"
   - Core desire: "Succeed commercially" or "Get attention"
3. Educate about Hype Cycle (Inoculation)
4. Propose: Foundational use of technology OR alternative approaches to core desire
5. If they won't budge: Get funding, make something great despite the technology

### Scenario 3: Choosing Between Established vs. Emerging Tech

**Challenge:** Proven tools vs. potentially disruptive new technology

**Established Technology:**
- ✓ Lower risk
- ✓ Known limitations
- ✓ Available talent/resources
- ✗ Less excitement/novelty
- ✗ May be disrupted

**Emerging Technology:**
- ✓ Potential for breakthrough
- ✓ First-mover advantage
- ✓ Excitement/novelty
- ✗ Higher risk
- ✗ Unknown limitations
- ✗ Scarce talent/resources

**Decision framework:**
1. Is the emerging tech on the verge of "good enough"? (Innovator's Dilemma)
2. Can you afford the risk if it fails?
3. Can you design a foundational use (not decorational)?
4. Do you have time to iterate when things break?

**Rule of thumb:**
- Conservative project: Established tech
- Experimental project: Emerging tech
- Hybrid: Established foundation + emerging for specific feature

### Scenario 4: Technology First vs. Experience First

**Wrong approach:** "We have this cool technology, let's make a game with it"
- Example: Journey arcade game (digital camera for photos → forced into platform game)
- Result: Technology search looking for a game

**Right approach:** "We want to create this experience, what technology enables it?"
- Example: Ico (wanted hand-holding relationship → found ragdoll physics)
- Result: Technology serves the experience

**If you start with technology:**
1. Ask: "What NEW experience does this enable?"
2. If you can't answer clearly → Wrong approach
3. Pivot to defining experience first, then validate technology fit

## Technology Evaluation Checklist

Before committing to a technology:

- [ ] I have clearly defined the experience I want to create
- [ ] I can articulate why this technology is foundational (not just decorational)
- [ ] I understand where this technology is in the Hype Cycle
- [ ] I have assessed whether this is a disruptive technology or will be disrupted
- [ ] I have considered the Law of Divergence (specialization over time)
- [ ] I have made concrete predictions about where this technology is heading
- [ ] I have applied all three technology design lenses
- [ ] I have prototyped/tested the technology with my use case
- [ ] I can explain the decision to stakeholders using these frameworks
- [ ] The technology serves the experience (not vice versa)

## Red Flags

**Avoid technology choices when:**
- ✗ "It's cool" is the primary justification
- ✗ Technology is at "peak of inflated expectations" with no proven use cases
- ✗ Can't articulate the foundational experience it enables
- ✗ Team is excited about tech but not the game experience
- ✗ Choosing based on novelty rather than experience needs
- ✗ Ignoring proven alternatives because they're "not new"
- ✗ Can't answer "What if this technology doesn't work out?"

## Integration with Other Skills

**Requires input from:**
- establishing-design-foundations (Agent 1): Core design principles, design lenses
- designing-core-gameplay-experience (Agent 1): Essential experience goals
- designing-game-systems-and-mechanics (Agent 1): Mechanical requirements

**Provides output to:**
- designing-game-interfaces-and-feedback (Agent 3): Technology capabilities/constraints
- managing-game-development-teams (Agent 7): Technical architecture decisions
- managing-business-and-stakeholders (Agent 7): Technology risk assessment

**Works in parallel with:**
- All Agent 1, 2, 4, 5, 6 skills when evaluating platform-specific design choices

## Key Takeaways

1. **Experience first, technology second**: Always define the experience before choosing technology
2. **Foundational beats decorational**: Ask "How can I make this foundational?" for any new tech
3. **Understand the Hype Cycle**: Protect yourself and your team from inflated expectations
4. **Watch for disruption**: Technologies that seem "not good enough" today may dominate tomorrow
5. **Technologies diverge**: Don't assume consolidation (except in pockets)
6. **Predict actively**: Technology + Psychology = Destiny
7. **Aim for utopia**: Choose technologies that make the world better
8. **Stay grounded**: Don't let the "drunken billionaire" of technology steal the show

## Supporting Files

- **[foundational-vs-decorational-guide.md](foundational-vs-decorational-guide.md)**: Detailed examples from game history, evaluation criteria, design exercises
- **[technology-trends-and-patterns.md](technology-trends-and-patterns.md)**: Deep dive into Hype Cycle, Innovator's Dilemma, Law of Divergence, Singularity
- **[future-prediction-framework.md](future-prediction-framework.md)**: Structured exercises for predicting technology trends
- **[technology-design-lenses.md](technology-design-lenses.md)**: Complete guidance for Lenses #104, #105, #106 with detailed questions

## Quick Decision Matrix

| Technology Type | Experience Impact | Hype Cycle Phase | Risk Level | Recommendation |
|----------------|-------------------|------------------|------------|----------------|
| Foundational | New experience | Plateau/Enlightenment | Low | ✓ Proceed |
| Foundational | New experience | Peak expectations | High | Prototype first |
| Foundational | New experience | Trough/Trigger | Medium | Watch closely |
| Decorational | Polish only | Any phase | Low-Med | Consider skipping |
| Decorational | Minor improvement | Peak expectations | High | Skip |
| Unproven | Unclear | Peak expectations | Very High | Avoid |