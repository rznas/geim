# Puzzle Design Lenses - Complete Reference

All design lenses relevant to puzzle creation and integration.

---

## Primary Puzzle Lenses

### Lens #54: The Lens of Accessibility

**Purpose:** Ensure players can understand how to begin solving your puzzle or playing your game.

**When to Use:**
- Designing new puzzles
- Testing if puzzles are too obscure
- Evaluating the "first impression" of a challenge

**Questions to Ask:**
1. **How will players know how to begin** solving my puzzle or playing my game?
   - Do I need to explain it?
   - Is it self-evident?

2. **Does my puzzle act like something they have seen before?**
   - If yes: How can I draw attention to that similarity?
   - If no: How can I make them understand how it does behave?

3. **Does my puzzle draw people in?**
   - Does it make them want to touch it and manipulate it?
   - If not, how can I change it so that it does?

**Related Principles:**
- Puzzle Principle #2: Make It Easy to Get Started
- "Build a good toy first" philosophy

**Application Example:**
- **Good:** Rubik's Cube - People want to pick it up and twist it
- **Bad:** Abstract puzzle with unclear interaction model

---

### Lens #55: The Lens of Visible Progress

**Purpose:** Ensure players see they're making progress when solving difficult problems.

**When to Use:**
- Players report feeling "stuck" or frustrated
- Testing long or complex puzzles
- Designing puzzle feedback systems
- Creating progress indicators

**Questions to Ask:**
1. **What does it mean to make progress** in my game or puzzle?
   - Can you define specific milestones?
   - Are there intermediate goals?

2. **Is there enough progress in my game?**
   - How frequently do players achieve something?
   - Is there a way I can add more interim steps of progressive success?

3. **What progress is visible, and what progress is hidden?**
   - Can players see their advancement?
   - Can I find a way to reveal what is hidden?

**Related Principles:**
- Puzzle Principle #3: Give a Sense of Progress
- Riddles vs. Puzzles distinction

**Application Example:**
- **Good:** Rubik's Cube - Completing one side is visibly 1/6 done
- **Good:** Twenty Questions - Each answer narrows possibilities
- **Bad:** Pure trial-and-error with no feedback

**Beyond Puzzles:**
Visible progress is the primary driver of mood in workplaces and affects player engagement across all game systems.

---

### Lens #56: The Lens of Parallelism

**Purpose:** Prevent frustration bottlenecks by offering multiple paths forward.

**When to Use:**
- Designing puzzle sequences
- Players report getting "stuck" with no options
- Planning quest structures or challenge progressions
- Preventing single-point-of-failure designs

**Questions to Ask:**
1. **Are there bottlenecks in my design** where players are unable to proceed if they cannot solve a particular challenge?
   - If so, can I add parallel challenges for a player to work on when this challenge stumps them?

2. **If parallel challenges are too similar,** the parallelism offers little benefit.
   - Are my parallel challenges different enough from each other?
   - Do they provide meaningful variety?

3. **Can my parallel challenges be connected somehow?**
   - Is there a way that making progress on one can make it easier to solve the others?

**Related Principles:**
- Puzzle Principle #6: Parallelism Lets the Player Rest
- "A change is as good as a rest"

**Application Example:**
- **Good:** Crossword puzzle - Dozens of clues, work in any order
- **Good:** Open-world RPG - Multiple quests available simultaneously
- **Bad:** Linear puzzle sequence with no alternatives

**Implementation Patterns:**
- Multiple quests active at once
- Optional side challenges
- Difficulty-gated content (try different difficulty levels)
- Multiple solution paths to the same goal

---

### Lens #57: The Lens of the Pyramid

**Purpose:** Create compelling hierarchical puzzle structures with a singular peak.

**When to Use:**
- Designing multi-stage puzzle sequences
- Creating meta-puzzles (puzzles made of puzzles)
- Planning progression systems
- Structuring challenge hierarchies

**Questions to Ask:**
1. **Is there a way all the pieces of my puzzle can feed into a singular challenge at the end?**
   - Can smaller challenges contribute to a larger goal?
   - Is there a compelling "capstone" challenge?

2. **Big pyramids are often made of little pyramids.**
   - Can I have a hierarchy of ever more challenging puzzle elements?
   - Do they gradually lead to a final challenge?

3. **Is the challenge at the top of my pyramid interesting, compelling, and clear?**
   - Does it make people want to work in order to get to it?
   - Is the "point" worth the climb?

**Related Principles:**
- Puzzle Principle #7: Pyramid Structure Extends Interest
- Combines short-term and long-term goals

**Application Example:**
- **Good:** Jumble word game - Four small word scrambles feed letters to a final phrase (punch line)
- **Good:** Adventure game - Collect 7 artifacts (mini-puzzles) to unlock final dungeon
- **Bad:** Unconnected series of puzzles with no culmination

**Pyramid Properties:**
- Clear, singular goal at the top
- Multiple foundation elements (accessible entry points)
- Intermediate layers building toward peak
- The top draws players upward

---

### Lens #58: The Lens of the Puzzle

**Purpose:** Master lens for evaluating all puzzle elements in your game.

**When to Use:**
- Overall puzzle design review
- Deciding puzzle quantity and placement
- Integration quality checks
- Ensuring principles are applied

**Questions to Ask:**
1. **What are the puzzles in my game?**
   - Explicit puzzles?
   - Implicit challenges that make players think?
   - Hidden puzzles woven into other systems?

2. **Should I have more puzzles, or less? Why?**
   - Does puzzle density match genre expectations?
   - Are puzzles serving their purpose?
   - Are they adding variety or creating frustration?

3. **Which of the ten puzzle principles apply to each of my puzzles?**
   - Review each puzzle against all ten principles
   - Identify which principles are being violated
   - Prioritize fixes for principle violations

4. **Do I have any incongruous puzzles?**
   - Which puzzles feel "bolted on"?
   - How can I better integrate them into the game?
   - Use Lens #49: Elegance to improve integration

**Related Principles:**
- All Ten Puzzle Principles
- Integration and elegance considerations

**Application Example:**
Use this lens as a comprehensive review:
- List all puzzles
- Rate each on the ten principles (1-10)
- Identify weakest areas
- Improve or cut puzzles that score poorly
- Ensure overall puzzle ecology is balanced

---

## Supporting Lenses (From Other Chapters)

### Lens #17: The Lens of the Toy

**Relevance to Puzzles:** "To design a good puzzle, first build a good toy." — Scott Kim

**Purpose:** Ensure your puzzle invites manipulation and exploration.

**When to Use:**
- Puzzle Principle #2: Make It Easy to Get Started
- Designing physical or tangible puzzle interactions
- Creating initial engagement with a puzzle

**Questions to Ask:**
1. Is my puzzle fun to manipulate even without trying to solve it?
2. Does it invite touch and exploration?
3. Is the interaction model immediately apparent?

**Application:**
- Rubik's Cube: Feels good to twist even with no goal
- 15 Puzzle: Sliding tiles is satisfying
- Bad example: Puzzle with no tactile or interactive appeal

---

### Lens #32: The Lens of Goals

**Relevance to Puzzles:** Puzzle Principle #1: Make the Goal Easily Understood

**Purpose:** Ensure players understand what they're trying to achieve.

**When to Use:**
- Defining puzzle victory conditions
- Testing if goals are clear to players
- Designing puzzle presentations

**Questions to Ask:**
1. What is the goal of this puzzle?
2. Can players immediately understand the goal by looking at it?
3. If goal discovery is part of the puzzle, is that fun or frustrating?

**Application:**
- Clear: "Get the disk off the shaft"
- Clear: "Arrange tiles 1-15 in order"
- Unclear: Abstract object with no obvious objective

---

### Lens #38: The Lens of Challenge

**Relevance to Puzzles:** Puzzle Principle #5: Increase Difficulty Gradually

**Purpose:** Balance difficulty progression throughout the experience.

**When to Use:**
- Planning puzzle sequence difficulty curves
- Balancing individual puzzle steps
- Preventing frustration or boredom

**Questions to Ask:**
1. Does difficulty increase gradually in my puzzle sequence?
2. Are there clear steps of increasing challenge?
3. Do early successes build confidence for harder challenges?

**Application:**
- Jigsaw puzzle: 7 steps from trivial to challenging
- Crossword: Player chooses difficulty by picking which clues to answer
- Bad: Sudden difficulty spikes with no preparation

---

### Lens #42: The Lens of Head and Hands

**Relevance to Puzzles:** Defines the puzzle's position on the mental vs. physical spectrum.

**Purpose:** Understand whether your game emphasizes thinking or execution.

**When to Use:**
- Balancing mental and physical challenges
- Deciding puzzle density for your genre
- Understanding player fatigue patterns

**Questions to Ask:**
1. Does this challenge emphasize mental or physical skills?
2. Am I providing enough variety between head and hands?
3. Where on the spectrum should this game/puzzle sit?

**Application:**
- Pure puzzles: Firmly on "head" side
- Action games with light puzzles: Mostly "hands," occasional "head"
- Fighting games: Mental strategy + physical execution
- Adventure games: Balanced or head-leaning

**The Spectrum:**
- **Head:** Pure puzzles, strategy, planning
- **Middle:** Tactical action, fighting games, racing lines
- **Hands:** Pure reflexes, execution, physical skill

---

### Lens #49: The Lens of Elegance

**Relevance to Puzzles:** Integration quality and multi-purpose design.

**Purpose:** Ensure game elements serve multiple purposes.

**When to Use:**
- Evaluating puzzle integration (explicit vs. implicit)
- Deciding whether to keep or cut a puzzle
- Comparing old-style vs. modern puzzle design

**Questions to Ask:**
1. How many purposes does this puzzle serve?
2. Does it advance gameplay, story, teaching, pacing, etc.?
3. Could this puzzle exist in any game, or is it specific to mine?

**Application:**
- **The 7th Guest puzzles:** Serve only one purpose (challenge)
- **Zelda puzzles:** Serve multiple purposes (challenge, teaching, world-building, pacing)
- **Goal:** Every puzzle should serve 3+ purposes

**Multiple Purpose Examples:**
1. Teaches a mechanic (tutorial value)
2. Advances the story (narrative value)
3. Rewards exploration (discovery value)
4. Provides pacing variety (experience value)
5. Reveals world lore (world-building value)

---

## Lens Combination Strategies

### For New Puzzle Design

**Step 1:** Start with Lens #58 (The Puzzle)
- Define what the puzzle is
- Identify which principles apply

**Step 2:** Apply Lens #32 (Goals)
- Make the goal clear

**Step 3:** Apply Lens #17 (The Toy)
- Ensure it's easy to start manipulating

**Step 4:** Apply Lens #54 (Accessibility)
- Test if players understand how to begin

**Step 5:** Apply Lens #55 (Visible Progress)
- Add progress indicators and milestones

### For Puzzle Sequences

**Step 1:** Apply Lens #38 (Challenge)
- Plan difficulty curve

**Step 2:** Apply Lens #56 (Parallelism)
- Add alternative paths to prevent bottlenecks

**Step 3:** Apply Lens #57 (Pyramid)
- Connect small puzzles to larger goals

### For Puzzle Integration

**Step 1:** Apply Lens #49 (Elegance)
- Count how many purposes the puzzle serves
- Add purposes if it only serves one (challenge)

**Step 2:** Apply Lens #42 (Head and Hands)
- Ensure balance matches genre expectations
- Provide variety in challenge types

**Step 3:** Apply Lens #58 (The Puzzle)
- Final review of integration quality
- Check for incongruity

---

## Quick Reference: Lens-to-Principle Mapping

| Lens | Related Principle | Primary Question |
|------|-------------------|------------------|
| #32: Goals | #1: Goal Easily Understood | Is the goal clear? |
| #17: Toy | #2: Easy to Get Started | Does it invite manipulation? |
| #55: Visible Progress | #3: Sense of Progress | Can players see advancement? |
| (None specific) | #4: Sense of Solvability | Do players believe it's solvable? |
| #38: Challenge | #5: Gradual Difficulty | Does difficulty ramp smoothly? |
| #56: Parallelism | #6: Parallelism Lets Rest | Are there alternatives? |
| #57: Pyramid | #7: Pyramid Structure | Do small puzzles feed into big ones? |
| (Design decision) | #8: Hints | Should I provide hints? |
| (Design decision) | #9: Give the Answer | Should I provide answers? |
| (Caution) | #10: Perceptual Shifts | Am I overusing all-or-nothing puzzles? |

---

## Common Lens Applications

### "Players are getting stuck and frustrated."
**Use:**
- Lens #55: Visible Progress - Are they seeing advancement?
- Lens #56: Parallelism - Can they try something else?
- Lens #54: Accessibility - Is the starting point clear?

**Solutions:**
- Add progress indicators
- Create parallel challenges
- Implement hint system (Principle #8)
- Simplify early steps

---

### "Players say the puzzle feels out of place."
**Use:**
- Lens #49: Elegance - How many purposes does it serve?
- Lens #58: The Puzzle - Is it incongruous?
- Lens #42: Head and Hands - Does it match genre balance?

**Solutions:**
- Add narrative justification
- Connect to game mechanics
- Integrate into environment
- Or cut the puzzle entirely

---

### "The puzzle is too easy/too hard."
**Use:**
- Lens #38: Challenge - Is the difficulty appropriate?
- Lens #55: Visible Progress - Can players track how close they are?
- Lens #57: Pyramid - Is there a gradual build-up?

**Solutions:**
- Adjust number of steps
- Add/remove constraints
- Provide more/fewer hints
- Gate with skill/level requirements

---

### "Players solve it but don't enjoy it."
**Use:**
- Lens #17: The Toy - Is manipulation enjoyable?
- Lens #55: Visible Progress - Do they feel accomplishment?
- Lens #49: Elegance - Does it serve a meaningful purpose?

**Solutions:**
- Improve feedback/juice
- Celebrate milestones
- Connect to meaningful rewards
- Or cut if it doesn't serve multiple purposes

---

## Summary: The Lens Toolkit

**Primary Puzzle Lenses (Use regularly):**
- #54: Accessibility
- #55: Visible Progress
- #56: Parallelism
- #57: Pyramid
- #58: The Puzzle (master lens)

**Supporting Lenses (Use as needed):**
- #17: The Toy
- #32: Goals
- #38: Challenge
- #42: Head and Hands
- #49: Elegance

**The Process:**
1. Design puzzle with the ten principles in mind
2. Apply primary lenses to validate design
3. Use supporting lenses to refine specific aspects
4. Iterate based on lens insights
5. Playtest and apply lenses to findings

**Remember:** Lenses are questions, not answers. They help you see your design from new perspectives, revealing problems and opportunities you might have missed.
