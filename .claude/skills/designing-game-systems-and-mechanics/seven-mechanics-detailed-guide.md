# The Seven Game Mechanics: Detailed Guide

The seven mechanics are the core of what a game truly is—the interactions and relationships that remain when aesthetics, technology, and story are stripped away.

## Mechanic 1: Space

**Definition:** The "magic circle" where gameplay occurs—the mathematical construct of where things can exist and how places relate to each other.

### Key Properties

**Discrete vs. Continuous**
- **Discrete:** Specific locations that matter (tic-tac-toe's 9 cells, chess's 64 squares)
- **Continuous:** Infinite positions matter (pool table, soccer field)
- Can think about same space both ways depending on purpose

**Dimensionality**
- 0D: Single point (Twenty Questions—all in players' minds)
- 1D: Linear path (Monopoly—appears 2D but functionally 1D loop)
- 2D: Plane (most board games, side-scrollers)
- 3D: Volume (FPS games, sports)

**Boundaries and Connections**
- Fixed edges or wrap-around?
- Connected areas vs isolated zones
- Gateways between subspaces

### Nested Spaces

Many games use "spaces within spaces":
- RPG overworld (continuous 2D) contains town icons
- Entering town = completely separate space
- Matches mental models: indoors vs. outdoors

**Example:** You don't think about how your kitchen geometrically fits inside your house when cooking—you think about the kitchen space itself. Games can leverage this.

### Functional vs. Aesthetic Space

**Key Insight:** Strip away visuals to see true functional space.

**Monopoly Example:**
- **Aesthetic:** 2D board with pretty corners
- **Functional:** 1D loop of 40 connected points
- Corner spaces look special but function identically to others

**Pool Table Example:**
- **As 2D:** Useful for thinking about ball trajectories, wall angles
- **As 3D:** Useful for thinking about ball hopping, height of cue

**No hard rules—use whichever abstraction helps you think about the problem.**

### Application

When modifying game space:
1. Draw abstract functional diagram (circles and lines, no aesthetics)
2. Identify what properties matter (adjacency? Distance? Line of sight?)
3. Make changes to function first
4. Apply aesthetics that reinforce function

**Lens #26: Functional Space**
- Is space discrete or continuous?
- How many dimensions?
- What are boundaries?
- Are there subspaces and how connected?
- Is there more than one useful way to model this space?

---

## Mechanic 2: Time

**Definition:** How gameplay unfolds through time—controllable in games unlike reality.

### Discrete vs. Continuous Time

**Discrete (Turn-Based)**
- Time between turns doesn't exist for game mechanics
- Example: Scrabble recorded as sequence of moves, no clock time matters
- Chess uses discrete turns but continuous clock for time pressure

**Continuous (Real-Time)**
- Events happen in flowing time
- Most action games, most sports
- Duration of events matters (Mario's jump arc)

### Time Mechanics

**Clocks**
- Absolute time limits
- Sand timer (Boggle)
- Game clock (football)
- Animation duration (Donkey Kong jump)

**Races**
- Relative time pressure
- Not fixed limit, but must be faster than opponent
- Auto racing (obvious)
- Space Invaders (destroy aliens before they land)

**Nested Time**
- Basketball: Game clock (absolute) + shot clock (nested, shorter)
- Helps create interesting pressure dynamics

### Controlling Time

**Things impossible in reality:**
- **Stop:** Pause buttons, time-outs
- **Speed up:** Civilization's years passing in seconds
- **Rewind:** Death returns to checkpoint
- **Manipulate:** Braid's time-reversal mechanic

**Design Implication:** Time control is a unique power games give players. Use it deliberately.

### Timing and Pacing

**Vaudevillian Principle:** "Leave 'em wanting more"
- Better to end slightly early than drag on
- Players frustrated when game ends too soon? Lengthen it.
- Players bored because too long? Shorten or speed up.

**Hierarchy of Time Structures:**
- Multiple short rounds = larger round
- Levels = acts = game
- Creates rhythm and natural pause points

**Lens #27: Time**
- What determines length of gameplay activities?
- Are players frustrated (too short) or bored (too long)?
- Would clocks or races make gameplay more exciting?
- Time limits irritate—would you be better off without?
- Would hierarchy of time structures help?

---

## Mechanic 3: Objects

**Definition:** The "nouns" of game mechanics—anything that can be seen or manipulated.

### Objects, Attributes, and States

**Object:** Any game element (characters, props, tokens, scoreboards)
**Attribute:** Categories of information about an object
**State:** Current value of an attribute

**Example: Racing Game Car**
- Object: The car
- Attributes: Max speed, current speed, fuel, position
- States: Max speed = 150mph, current speed = 75mph, fuel = 60%, position = (x,y)

### Static vs. Dynamic Attributes

**Static:** Never changes during game
- Color of checker (always same color)
- Type of playing card (ace of spades stays ace of spades)

**Dynamic:** Changes during game
- Checker movement mode (normal, king, captured)
- Chess king status (free, in check, checkmated)
- Monopoly property (0-4 houses, hotel, mortgaged)

**Focus on dynamic attributes—these drive gameplay.**

### State Machines

**Critical Tool:** State diagrams show all possible states and transitions.

**Pac-Man Ghost Example:**
```
[In Cage] --released--> [Chasing Pac-Man]
[Chasing Pac-Man] --Pac-Man eats power pellet--> [Blue/Edible]
[Chasing Pac-Man] --Pac-Man eaten--> [Returning to Cage]
[Blue/Edible] --timer expires--> [Chasing Pac-Man]
[Blue/Edible] --eaten by Pac-Man--> [Returning to Cage]
[Returning to Cage] --reaches cage--> [In Cage]
```

**Benefits:**
- Forces you to think through all possibilities
- Prevents illegal transitions (cage to blue)
- Makes debugging easier
- Can be implemented directly in code

### Communication Rule

**If objects behave the same, they should look the same.
If they behave differently, they should look different.**

Players need visual clarity about states:
- Powered-up Mario looks bigger
- Checker kings have crowns
- Low health shown by color/animation changes

### Secrets and Information

Who knows what? The "hierarchy of knowers":

**Categories of Information:**
- **Public (A):** All players know (position of chess piece)
- **Shared-Secret (B):** Subset of players know (two virtual opponents team up)
- **Private (C):** Single player knows (cards in hand)
- **Game-Only (D):** Game knows, players don't (hidden board mechanisms, dungeon master's notes, computer's internal state)
- **Random (E):** Not yet generated (upcoming die roll, deck order)

**Design Impact:** Changing who knows what completely changes the game.
- Poker: Stud vs. Draw differ by public/private card states
- Chess: All public (pure skill measurement)
- Battleship: All private positions (deduction game)

**Lens #28: State Machine**
- What are objects in my game?
- What attributes do they have?
- What possible states for each attribute?
- What triggers state changes?

**Lens #29: Secrets**
- What is known by game only?
- Known by all players?
- Known by some/one player?
- Would changing who knows what improve the game?

---

## Mechanic 4: Actions

**Definition:** The "verbs" of game mechanics—what players can do.

### Two Types of Actions

**Basic Actions:** Base operations available to player
- Checkers: Move forward, jump opponent, move backward (kings only)
- Just 3 basic actions

**Strategic Actions:** Meaningful in larger picture, emerge from basic actions
- Checkers: Protect piece, force unwanted jump, sacrifice to trick opponent, build bridge, make king
- Many more strategic actions than basic

**Key Metric: Ratio of strategic to basic actions**
- Low ratio = predictable, shallow
- High ratio = emergent, deep, elegant

### Emergent Gameplay

**Definition:** Interesting strategic actions that emerge naturally from basic actions interacting.

**Signs of Good Emergence:**
- Players discover strategies you never thought of
- "Solved" feeling you had about game disappears
- Confusion about "right way to play" (this is GOOD)
- Means dominant strategies eliminated, real choices restored

### Five Techniques for Emergence

**1. Add More Verbs**
- More basic actions = more interaction opportunities
- Run, jump, shoot, buy, sell, drive, build > run, jump
- **Warning:** Don't add weak verbs that don't interact well
- Quality > quantity

**2. Verbs Act on Many Objects**
- **Most powerful technique**
- Gun shoots enemies AND locks AND windows AND tires AND writes messages on walls
- One verb, many targets = many strategic possibilities
- Simple: "shoot" verb; Complex: all the things you can shoot

**3. Goals Achievable Multiple Ways**
- Shoot boss, OR drop chandelier on boss, OR negotiate with boss
- If only one way to win, players won't explore verb/object richness
- **Challenge:** Hard to balance—avoid dominant strategies

**4. Many Subjects**
- Checkers with 12 pieces >> checkers with 1 piece
- Multiple pieces interact, coordinate, sacrifice
- Magnitude: subjects × verbs × objects

**5. Side Effects Change Constraints**
- Every move in checkers changes:
  - Squares you threaten
  - Squares opponent can move to
  - Squares you can move to
  - Very nature of game space
- Forced multi-dimensional changes = strategic depth

**Lens #30: Emergence**
- How many verbs do players have?
- How many objects can each verb act on?
- How many ways can players achieve goals?
- How many subjects do players control?
- How do side effects change constraints?

### The Action Gap

**Games vs. Stories:**
- Games: Limited verbs (must be simulated on the fly)
- Stories: Unlimited verbs (worked out ahead of time)
- This gap is why games feel "limited" compared to books/movies

**Historical Note:**
- 1970s-80s text adventures: hundreds of possible verbs
- Modern 3D games: fewer verbs, more visual
- Trade-off: Clarity vs. creative freedom

**Text Adventure Problem:**
- "Spin the fish" or "tickle the monkey" might be solution
- But out of thousands of possible verbs, most don't work
- False sense of freedom = frustration
- Clear verb set > "unlimited" unclear possibilities

**Lens #31: Action**
- What are basic actions?
- What are strategic actions?
- What strategic actions would I like to see?
- Am I happy with ratio of strategic to basic?
- What actions do players wish they could do?

---

## Mechanic 5: Rules

**Definition:** The most fundamental mechanic—defines space, timing, objects, actions, consequences, constraints, and goals.

### Parlett's Rule Analysis

**Seven Types of Rules:**

**1. Operational Rules**
- "What players do to play"
- Once you understand these, you can play
- Example: "Roll die, collect that many power chips"

**2. Foundational Rules**
- Underlying formal structure
- Mathematical representation
- Example: "Player's power value increased by random number 1-6"
- Operational rules implement foundational rules

**3. Behavioral Rules**
- Implicit good sportsmanship
- Example: Don't tickle opponent during chess, don't take 5 hours per move
- Social contract of gameplay
- Rarely stated explicitly

**4. Written Rules**
- Document that comes with game
- Most players don't read—learn from others instead
- Hard to encode nonlinear intricacies into linear document
- Modern games use interactive tutorials instead

**5. Laws**
- Formalized for competitive/tournament play
- Clarify or modify official rules
- Example: "Mokujin is banned" (Tekken 5 tournament)
- Created when stakes are high

**6. Official Rules**
- Written rules merged with laws over time
- Example: Chess "check" warning was once law, now official

**7. Advisory Rules**
- "Rules of strategy"—tips to play better
- Not really "rules" from mechanics standpoint

**8. House Rules** (Feedback)
- Players modify operational rules to improve fun
- Example: Monopoly free parking jackpot
- Can unbalance game if not careful

### Modes

**Definition:** Dramatically different rule sets in different parts of play

**Example: Pitstop**
- Main mode: Racing game
- Pit stop mode: Race to change tires with different interface
- Completely different game for brief period

**Sid Meier's Rule:** Players should never spend so much time in subgame that they forget main game.

**Design Clarity:** Always make it clear which mode player is in.

### Enforcer

**Traditional Games:** Players or referee enforce
**Computer Games:** Computer enforces

**Impact of Computer Enforcement:**
- Allows much more complex games
- Players don't memorize everything—try and see what works
- Rules become "physical constraints" of game world
- Impossible moves simply don't happen
- Can reach depths not possible in board games

**Warning:** If rules so complex players can't form rough idea how game works, they'll be overwhelmed.

**Solution:** Make rules discoverable and understandable naturally, not requiring memorization.

### Cheatability

**The Danger:** If players believe game can be cheated, endogenous value slips away.
- Some will try to cheat
- Most will stop playing (feel like chumps)

**Perception Matters:** Even if not cheatable, perceived cheatability kills games.

### The Most Important Rule: Goals

**Game Definition:** Games are about achieving goals.

**Must state clearly:**
- What is the goal?
- If sequence of goals, how do they relate?

**Example: Chess Goal Confusion**
- Awkward: "Put king in checkmate... which means can't move without being in check... which means could be captured... except it's against rules to capture king."
- Clear: "Capture opponent's king."
- Check/checkmate is polite warning system, not the goal

**Four-word goal is more engaging than complex explanation.**

### Good Goals Are:

**1. Concrete**
- Players understand and can clearly state it
- "Capture the flag" not "Do well in the game"

**2. Achievable**
- Players think they have a chance
- Impossible-seeming goals = quick giving up

**3. Rewarding**
- Right challenge level is inherently rewarding
- Add extra rewards on top
- **Critical:** Must be rewarding BEFORE achievement (inspiration to try)
- Don't overinflate expectations

**Balance of Goals:**
- Short-term (immediate action)
- Medium-term (session goals)
- Long-term (campaign/mastery goals)

**Lens #32: Goals**
- What is ultimate goal?
- Is it clear to players?
- If series of goals, do players understand that?
- Are goals related meaningfully?
- Are goals concrete, achievable, rewarding?
- Good balance of short/long-term goals?
- Can players decide their own goals?

**Lens #33: Rules**
- What are foundational rules? How differ from operational?
- Are laws/house rules forming? Should these be incorporated?
- Are there different modes? Simpler or more complex?
- Who enforces rules?
- Are rules easy to understand or confusing?

---

## Mechanic 6: Skill

**Definition:** Real abilities required from players—shifts focus from game to player.

### Three Categories of Skills

**1. Physical Skills**
- Strength, dexterity, coordination, endurance
- Most sports
- Controller manipulation
- Camera-based games (dance, motion)

**2. Mental Skills**
- Memory, observation, puzzle solving
- Decision making
- Almost all games require some mental skills
- Games interesting because decisions interesting

**3. Social Skills**
- Reading opponent (guessing thoughts)
- Fooling opponent
- Coordinating with teammates
- Poker: Concealing thoughts, guessing others
- Sports: Teamwork, psyching out opponents

### Real vs. Virtual Skills

**CRITICAL DISTINCTION**

**Real Skill:** What player actually must do
- Button timing
- Pattern recognition
- Mental rotation of shapes
- Memory of game state

**Virtual Skill:** What character can do
- Sword fighting stat
- Magic power level
- Running speed stat
- Purchase-able or level-up-able

**Player mashes buttons sloppily but character's "sword fighting" improves through virtual skill points.**

**Design Impact:**
- Too much virtual skill, not enough real = feels hollow
- Too much real skill, not enough virtual = doesn't feel like progression
- Find right mix for your game

### Enumerating Skills

**Make specific lists—reveals true nature of game**

**General:** "Memory, problem-solving, pattern matching"
**Specific:** "Quickly identify and mentally rotate 2D shapes while solving grid-based packing problem"

**Example: RC Pro Am**
- **Obvious skills:** Steering, accelerating, shooting
- **Hidden skill #1:** Problem solving (how to fire rocket without releasing accelerator?)
- **Hidden skill #2:** New controller grip (thumb sideways on A, roll down to B)
- Plus: Resource management, course memorization, reaction time, hazard avoidance

**Simple-seeming games often require many skills.**

### The Skills That Really Matter

**Common Mistake:** Thinking game is about one skill when others dominate.

**Example:**
- Seems like: Quick reactions to opponents
- Actually: Puzzle solving (figuring out right reaction) + memorization (avoiding surprise)
- Memorization is tedious compared to quick thinking

**Skills define experience—must know what these are.**

**Lens #34: Skill**
- What skills does game require from player?
- Categories of skill missing?
- Which skills dominant?
- Do these create desired experience?
- Are some players much better at these skills? Feel unfair?
- Can players improve with practice (mastery feeling)?
- Does game demand right level of skill?

---

## Mechanic 7: Chance

**Definition:** Uncertainty, risk, probability—interacts with all other six mechanics.

**Why Important:** Chance = uncertainty = surprises = pleasure = fun

**Why Tricky:** Math can be difficult, intuitions often wrong

### The Mathematics of Probability

See [probability-guide.md](probability-guide.md) for ten rules every designer should know.

**Core Concepts:**
- Theoretical probability (what should happen mathematically)
- Practical probability (what actually happens through testing)
- Expected value (average outcome of action)
- Probability distribution curves (bell curves, linear, etc.)

### Expected Value

**Definition:** Average value of all possible outcomes

**Simple Example:**
- Land on green space → roll die for power points
- Average of 1,2,3,4,5,6 = 21÷6 = 3.5 power points expected

**Complex Example with Negative Outcomes:**
- Roll 2 dice
- 7 or 11: Win $5 (chance: 8/36)
- Anything else: Lose $1 (chance: 28/36)
- Expected value: (8/36 × $5) + (28/36 × -$1) = $0.33
- Average win 33¢ per play (good game to play)

**Change it:**
- Only 11 wins: (2/36 × $5) + (34/36 × -$1) = -$0.86
- Average lose 86¢ per play (bad game to play)

**Critical for balancing risk/reward (triangularity)**

### Consider Values Carefully

**Context matters for value:**

**Example: RPG Attacks**
```
Wind: 100% hit, 4 damage
Fireball: 80% hit, 5 damage
Lightning: 20% hit, 40 damage
```

Against 500 HP enemy:
- Wind expected value: 4
- Fireball expected value: 4
- Lightning expected value: 8 (best choice)

Against 15 HP enemy:
- Wind expected value: 4
- Fireball expected value: 4
- Lightning expected value: 3 (worst choice—wasted damage)

**Measure real values based on context, not just numbers.**

### The Human Element

**Humans don't always choose highest expected value.**

**Kahneman and Tversky Experiment:**
- Game A: 66% win $2400, 33% win $2500, 1% win $0 (EV = $2409)
- Game B: 100% win $2400 (EV = $2400)
- 82% chose B despite lower expected value
- **Why?** Regret avoidance—"buying peace of mind"

**Human Patterns:**
- Risk-averse for gains (choose sure thing over probable gain)
- Risk-seeking for losses (gamble to avoid sure loss)
- Willing to pay to avoid regret

**Example: Puzzle & Dragons**
- Die in dungeon, about to lose all treasure
- "Pay small amount of real money for chance to keep treasure?"
- Exploits loss-aversion to monetize

**Perceived vs. Actual Probabilities:**
- People overestimate dramatic/fearful causes
- People underestimate common causes
- Design must account for both actual and perceived

### Skill and Chance Interactions

**Five Key Interactions:**

**1. Estimating Chance Is a Skill**
- Blackjack: Knowing the odds separates skilled from unskilled
- Card counting: Tracking what's played changes odds
- Perceived probabilities vary by player skill

**2. Skills Have Probability of Success**
- Chess/baseball seem pure skill
- But from player POV, every action has risk
- "What are odds I can steal base without getting caught?"
- "What are odds opponent notices my queen trap?"
- Must balance skill risks like chance risks

**3. Estimating Opponent's Skill Is a Skill**
- Bluffing: Making opponent think you're better than you are
- Sandbag: Making opponent think you're worse than you are
- Poker: Reading people more than reading cards

**4. Predicting Pure Chance Is an Imagined Skill**
- Humans find patterns where none exist
- "Lucky streak fallacy": Won several times, likely to win again
- "Gambler's fallacy": Lost several times, due for a win
- Feels like skill to player—use that feeling

**5. Controlling Pure Chance Is an Imagined Skill**
- Rolling dice "a certain way"
- Lucky charms
- Superstitious rituals
- Makes gambling exciting even though intellectually we know it's impossible
- If you disengage from idea you can influence fate, fun drains away

**Design Implication:** Don't fight these illusions—harness them.

**Lens #35: Expected Value**
- What is actual chance of event occurring?
- What is perceived chance?
- What value does outcome have? Quantifiable? Intangible aspects?
- Do expected values give interesting choices? Too rewarding/punishing?

**Lens #36: Chance**
- What in game is truly random? What just feels random?
- Does randomness give positive (excitement) or negative (hopelessness) feelings?
- Would changing probability distribution curves improve game?
- Do players have opportunity to take interesting risks?
- What is relationship between chance and skill?

---

## Integration: Using the Seven Mechanics Together

**The mechanics don't exist in isolation—they form a system.**

### System Thinking

1. **Space** defines where things can be
2. **Objects** exist in the space with **states**
3. **Actions** change object states and move objects through space
4. **Time** controls when actions can happen
5. **Rules** define the relationships between all of the above
6. **Skill** determines player's ability to execute actions
7. **Chance** introduces uncertainty into outcomes

### Practical Application

When designing/debugging a game:

1. **Strip to skeleton:** Remove aesthetics, see mechanics
2. **Map each mechanic:** What is the functional space? What objects? etc.
3. **Find interactions:** How do mechanics influence each other?
4. **Identify leverage points:** Which mechanics can you adjust for biggest impact?
5. **Balance iteratively:** Change, test, learn, repeat

### Red Flags

**Warning signs mechanics aren't working:**
- Players confused about what they can do
- Dominant strategies emerge
- Feels random despite being skill-based (or vice versa)
- Players can't track game state
- Choices feel meaningless
- No interesting strategic actions from basic actions

**Fix by returning to fundamentals—analyze each mechanic separately, then as system.**

---

**Remember:** These seven mechanics are the DNA of your game. Master them and you can design anything.
