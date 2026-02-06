---
name: designing-game-systems-and-mechanics
description: Design robust game systems using the seven core mechanics (Space, Time, Objects, Actions, Rules, Skill, Chance), twelve types of game balance, and venue-aware design. Use when defining core gameplay systems, balancing mechanics, designing game economies, or selecting appropriate platforms and venues for your game.
---

# Designing Game Systems and Mechanics

Design and balance complete game systems by mastering the seven fundamental mechanics, twelve balancing principles, and venue considerations that shape player experience.

## When to Use This Skill

Use this skill after establishing design foundations and defining core gameplay experience when you need to:
- Define and structure the fundamental mechanics of your game
- Balance game systems for fairness, challenge, and meaningful choice
- Design game economies with earning and spending loops
- Select appropriate platforms and venues for your gameplay
- Create emergent complexity from simple rulesets

## Core Concept: The Seven Game Mechanics

Every game is built from seven fundamental mechanics. Mastering these lets you see through aesthetic "skin" to the mechanical "skeleton" beneath.

### Quick Reference: The Seven Mechanics

1. **Space** - The magic circle where gameplay occurs
2. **Time** - How gameplay unfolds (discrete/continuous)
3. **Objects** - Nouns of game mechanics (attributes, states)
4. **Actions** - Verbs players can perform (basic/strategic)
5. **Rules** - The fundamental structure defining everything
6. **Skill** - Real abilities required from players
7. **Chance** - Uncertainty, risk, and probability

**See:** [seven-mechanics-detailed-guide.md](seven-mechanics-detailed-guide.md) for complete analysis of each mechanic.

## Twelve Types of Game Balance

Balance is adjusting game elements to deliver the experience you want. Not all games need all types, but you must consciously decide which balances matter for your design.

### Critical Balance Types (Apply to Most Games)

1. **Fairness** - Equal or intentionally asymmetrical player advantages
   - Symmetrical: Equal resources (chess, sports)
   - Asymmetrical: Different powers (Pac-Man's 4 ghosts vs 1 player)
   - Rock-Paper-Scissors: Circular balance where everything has weakness

2. **Challenge vs. Success** - Keeping players in the flow channel
   - Increase difficulty with each success
   - Let skilled players get through easy parts fast
   - Create layers of challenge (grade/star systems)
   - Let players choose difficulty level
   - Playtest with variety of skill levels

3. **Meaningful Choices** - Decisions that matter
   - Avoid dominant strategies (one choice clearly better)
   - Balance choices to match player desires
   - **Triangularity**: Low-risk/low-reward vs high-risk/high-reward
   - Use expected value to balance risk/reward

4. **Skill vs. Chance** - Games of judgment vs games of fate
   - Pure skill: Athletic contests, tests of ability
   - Pure chance: Relaxed, casual, social
   - Mixed: Alternating patterns (deal cards = chance, play them = skill)

### Specialized Balance Types

5. **Head vs. Hands** - Thinking vs physical dexterity
6. **Competition vs. Cooperation** - Solo battles vs teamwork
7. **Short vs. Long** - Game session duration
8. **Rewards** - How game tells players "you did well"
9. **Punishment** - Creating endogenous value through risk
10. **Freedom vs. Controlled Experience** - Player agency vs designer intent
11. **Simple vs. Complex** - Innate complexity vs emergent complexity
12. **Detail vs. Imagination** - What to show vs what players fill in

**See:** [twelve-balance-types-guide.md](twelve-balance-types-guide.md) for detailed principles and examples.

## Game Balancing Methodologies

Practical techniques for balancing your game:

**Problem Statement First**
- Clearly state the balance problem before jumping to solutions
- "Players ignore the secondary weapon" vs "Make secondary weapon more powerful"

**Doubling and Halving** (Brian Reynolds / Sid Meier)
- Don't tweak by 10-20%—double or halve values
- Pushes limits quickly to reveal boundaries
- Example: Rocket does 100 damage and feels too strong? Try 50, not 90

**Train Your Intuition**
- Guess exactly: "13.8 feels right, not 13.7"
- Test it and give your intuition data for next time
- Works for everything (damage values, movement speeds, timers)

**Document Your Model**
- Write down relationships between game elements
- Update model as you balance
- Model informs balance, balance informs model

**Plan to Balance**
- Make values easy to change during development
- Change values while game is running (even better)
- Content management system for post-ship balancing
- Rule of thumb: Half your development time should be balancing

**See:** [game-economies-guide.md](game-economies-guide.md) for economy-specific balancing.

## Venue-Aware Design

Games don't exist in a vacuum—where they're played shapes the experience profoundly. Technologies change constantly, but venues are timeless.

### Private Venues

**The Hearth** (TV/living room)
- Multiple people watching or playing together
- Social, performative gameplay
- Physical involvement entertaining to watch
- Example: Wii, singing/dancing games

**The Workbench** (Desk/PC)
- Solitary, intense, complex gameplay
- Hours of focused play
- Difficult challenges acceptable
- Example: MOBAs, MMOs, Steam games

**The Reading Nook** (Bedroom/quiet chair)
- Lean-back, relaxed play
- Simpler, easier, more peaceful
- Like reading a book
- Example: Tablet games, mobile puzzles

### Public Venues

**The Theater** - Spectating together (hard for interactive games)
**The Arena** - Competitive gameplay with spectators (esports)
**The Museum** - Exploration and discovery (arcades, location-based)

### Mixed Venues

**The Gaming Table** - Face-to-face intimacy (board/card games)
**The Playground** - Children's improvisational outdoor play
**Anywhere** - Interruptible, small bites (smartphone games)

**Design Implication:** Match your mechanics to your venue. Workbench games can be complex; Anywhere games must be instantly pausable.

**See:** [venue-design-considerations.md](venue-design-considerations.md) for matching mechanics to venues.

## Emergence: The Designer's Garden

The ratio of strategic actions to basic actions measures emergent complexity. Elegant games give few basic actions but many strategic possibilities.

### Five Techniques for Emergence

1. **Add More Verbs** - More basic actions = more interaction possibilities
2. **Verbs Act on Many Objects** - Gun shoots enemies, locks, windows, tires
3. **Goals Achievable Multiple Ways** - No single dominant path
4. **Many Subjects** - Multiple game pieces that interact (checkers needs 12 pieces, not 1)
5. **Side Effects Change Constraints** - Every action alters the game space

**Warning:** Emergence is fragile. When you notice interesting strategies appearing, nurture them carefully.

## Essential Lenses for System Design

**Lens #26: Functional Space** - Think abstractly about your game space
- Discrete or continuous?
- How many dimensions?
- What are boundaries? Subspaces?

**Lens #28: State Machine** - Track information and changes
- What objects exist?
- What attributes and states?
- What triggers state changes?

**Lens #29: Secrets** - Who knows what?
- What's known by game only?
- Known by all players?
- Known by some/one player?

**Lens #30: Emergence** - Nurture strategic depth
- How many verbs?
- Objects each verb acts on?
- Ways to achieve goals?

**Lens #31: Action** - Define the verbs
- Basic actions vs strategic actions?
- Which strategic actions do you want to see?

**Lens #32: Goals** - Make goals concrete, achievable, rewarding
- Is ultimate goal clear?
- Good balance of short/long-term?

**Lens #33: Rules** - The fundamental structure
- Foundational vs operational rules?
- Who enforces rules?
- Are rules clear or confusing?

**Lens #34: Skill** - Know what you're asking of players
- What skills required?
- Which skills dominant?
- Creating desired experience?

**Lens #35: Expected Value** - Quantify chance
- Actual vs perceived chance?
- What value does outcome have?
- Are expected values balanced?

**Lens #36: Chance** - Master randomness
- What's truly random vs feels random?
- Positive (excitement) or negative (hopelessness)?
- Relationship between chance and skill?

**Lens #37: Fairness** - Balance player advantages
- Symmetrical or asymmetrical? Why?
- Measure skill or provide challenge?

**Lens #38: Challenge** - Keep players in flow
- Too easy, hard, or just right?
- Accommodate variety of skill levels?

**Lens #39: Meaningful Choices** - Eliminate dominant strategies
- Are choices meaningful? How?
- Right number of choices?
- Any dominant strategies?

**Lens #40: Triangularity** - Risk/reward balance
- Do you have triangularity?
- Are risks commensurate with rewards?

## Practical Workflow

### 1. Define Core Mechanics
Use the seven mechanics framework to strip your game to its skeleton:
- Map functional space (not aesthetic space)
- Identify all objects and their states
- List basic actions (the verbs)
- Define rules (operational and foundational)

### 2. Design for Emergence
Apply emergence techniques:
- Start with minimum viable verbs
- Make verbs work on many objects
- Ensure multiple paths to goals
- Add side effects that create new constraints

### 3. Balance Systematically
For each balance type:
- Identify which types matter for your game
- Create mathematical models where possible
- Playtest extensively at each iteration
- Document what works and why

### 4. Match to Venue
Consider where players will actually play:
- Hearth: Social, watchable, accessible
- Workbench: Complex, intense, long sessions
- Reading Nook: Relaxing, easy to pause
- Anywhere: Interruptible, short sessions

### 5. Iterate the Rule of the Loop
Game balancing is experimental:
- Change values
- Playtest
- Observe results
- Update model
- Repeat

**Remember:** Plan to spend half your development time balancing after the game is playable.

## Common Pitfalls

**Confusing Real and Virtual Skills**
- Real skill: What player must actually do (button timing)
- Virtual skill: What character can do (sword fighting stat)

**Adding Complexity Without Emergence**
- More verbs ≠ better game
- Focus on ratio of strategic to basic actions

**Letting Players Balance**
- Players want to win easily AND be challenged
- These desires conflict—designer must decide

**Ignoring Venue Constraints**
- Anywhere games can't require sustained attention
- Hearth games need social/watchable elements

**Over-Tuning Edge Cases**
- Balance for the 80%, not the 1%
- Extreme strategies often self-balance through difficulty

## Integration with Other Skills

**Depends On:**
- `establishing-design-foundations` - Lens framework, design thinking
- `designing-core-gameplay-experience` - Essential experience, theme, iteration

**Feeds Into:**
- All subsequent design skills (level design, puzzles, interfaces, etc.)
- Provides mechanical foundation everything builds on

## Quick Decision Framework

**Choosing Balance Types:**
1. What experience do I want? (Use Lens #2: Essential Experience)
2. Which balance types serve that experience?
3. Which can I ignore or minimize?

**Debugging Balance:**
1. State the problem clearly (not the solution)
2. Identify which balance type is off
3. Use appropriate lens to diagnose
4. Apply doubling/halving to find boundaries
5. Document results

**Venue Selection:**
1. Where will players actually be?
2. What constraints does that impose?
3. What opportunities does it create?
4. How do mechanics need to adapt?

---

**Remember:** A game IS its mechanics. Master the seven mechanics, balance deliberately, and your game will have a strong foundation for any aesthetic or narrative you build upon it.
