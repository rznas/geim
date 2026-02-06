# Twelve Balance Types - Detailed Guide

This guide provides comprehensive details on the twelve most common types of game balance, based on Chapter 13 of *The Art of Game Design*.

---

## Balance Type #1: Fairness

**Core Principle:** Players want to feel that forces working against them don't have an impossible advantage.

### Symmetrical Games
- **Definition:** Give equal resources and powers to all players
- **Examples:** Checkers, chess, Monopoly, most sports
- **Best for:** Direct competition between players of roughly equal skill
- **Advantage:** Clear measure of player skill
- **Challenge:** Minor asymmetries like "who goes first?" (solved with random selection or giving advantage to least skilled player)

### Asymmetrical Games
Create when you want to:
1. **Simulate reality:** Historical battles or real-world conflicts
2. **Increase exploration:** Different powers = different strategies (fighting games)
3. **Enable personalization:** Players choose powers matching their skills
4. **Level the playing field:** Balance different skill levels (e.g., Pac-Man's 4 ghosts vs. 1 human)
5. **Create interesting situations:** Unequal forces with different goals (e.g., Bhag-Chal: 5 tigers vs. 20 goats)

### Balancing Asymmetrical Games
**Method:** Assign values to resources/powers and ensure sums are equal
- Create mathematical model of relationships
- Playtest to validate model
- Iterate: model informs balance, balance informs model
- **Rule of thumb:** Half of development time should be spent balancing

### Circular Balance (Rock-Paper-Scissors)
- Rock breaks scissors
- Scissors cut paper
- Paper covers rock
- **Result:** No element can be supreme
- **Application:** Fighting games ensure no undefeatable character

### Lens #37: The Lens of Fairness
Ask yourself:
- Should my game be symmetrical? Why?
- Should my game be asymmetrical? Why?
- Which is more important: reliable measure of skill or interesting challenge for all players?
- If players have different skill levels, how will I make the game interesting for everyone?

---

## Balance Type #2: Challenge vs. Success

**Core Principle:** Keep players in the flow channel between boredom and frustration.

### The Flow Channel
```
Frustration (too challenging)
        ↑
    Flow Channel (engaged)
        ↓
Boredom (too easy to succeed)
```

### Balancing Techniques

**1. Increase difficulty with each success**
- Common in videogames: each level harder than the last
- Players build skill to complete a level, then face new challenge
- Use tense and release pattern

**2. Let players get through easy parts fast**
- Skilled players blow through easy levels
- Less skilled players challenged by early levels
- Everyone quickly reaches appropriate challenge

**3. Create layers of challenge**
- Grade system (D/F = repeat, C+ = continue)
- Novices thrilled to get C and unlock next level
- Experienced players set new challenge: earn A or A+
- Multiple difficulty levels within single playthrough

**4. Let players choose difficulty level**
- Easy, medium, hard modes
- **Upside:** Players quickly find appropriate challenge
- **Downside:** Must create/balance multiple versions
- **Risk:** Detracts from "reality"—which version is "real"?

**5. Playtest with variety of players**
- **Trap 1:** Only test with experienced players → too frustrating for novices
- **Trap 2:** Only test with novices → experienced players quickly bored
- **Solution:** Mix skilled and novice players

**6. Give losers a break (rubber banding)**
- Example: Mario Kart power-up system
  - Players ahead get weak power-ups
  - Players behind get strong power-ups
- Keeps everyone engaged
- Players behind stay hopeful
- Players ahead can't rest on laurels

### First Level Challenge
- Learning to play is a challenge itself
- First 1-2 levels should be incredibly simplistic
- Player challenged by "controls and goals"
- Early successes build confidence

### Design Question
"What percentage of players do I want to complete this game?"
- Free-to-play: Late frustration may drive payments
- Premium: Too difficult = players give up and never return

### Lens #38: The Lens of Challenge
Ask yourself:
- What are the challenges in my game?
- Are they too easy, too hard, or just right?
- Can challenges accommodate wide variety of skill levels?
- How does challenge level increase as player succeeds?
- Is there enough variety in challenges?
- What is the maximum level of challenge?

---

## Balance Type #3: Meaningful Choices

**Core Principle:** Give players choices that have real impact on what happens next.

### What Makes Choices Meaningful?
Players ask themselves:
- Where should I go?
- How should I spend my resources?
- What should I practice and perfect?
- How should I dress my character?
- Should I go quickly or carefully?
- Should I focus on offense or defense?
- What strategy should I use?
- Which power should I choose?
- Should I play it safe or take a big risk?

### Meaningless Choice Traps

**Trap 1: No Real Difference**
- Example: 50 vehicles in racing game, all drive the same
- Result: Like having no choice at all

**Trap 2: Dominant Strategy**
- Definition: One choice clearly better than rest
- Example: 10 guns, but one is obviously best
- Result: Puzzle solved, no more meaningful choices
- **Solution:** Balance so no strategy dominates
- **Hidden dominant strategies:** Called "exploits" when discovered by players

### Early Development Paradox
- Early development: dominant strategies abound
- As development continues: proper balancing removes dominant strategies
- **Novice designer panic:** "I don't know the right way to play anymore!"
- **Reality:** Game has improved—now has meaningful choices instead of dominant strategy

### Number of Choices (Michael Mateas)
- Choices > Desires = Player overwhelmed
- Choices < Desires = Player frustrated
- Choices = Desires = Freedom and fulfillment

**Application:** Determine types and number of things player wants to do
- Sometimes want small number (left or right fork—not 30 side roads)
- Sometimes want huge number (clothes shopping in Sims)

### Triangularity: Balanced Asymmetric Risk
**Definition:** Choice between low-risk/low-reward vs. high-risk/high-reward

**Example: Space Invaders**
- Low risk: Shoot nearby aliens worth 10-30 points (safe, easy, makes you safer)
- High risk: Shoot flying saucer worth 100-300 points (difficult, dangerous, requires taking eyes off ship)
- Result: Meaningful, difficult choice

**The Triangle:**
```
      Player
       / \
      /   \
Low-risk   High-risk
Low-reward High-reward
```

### Lens #39: The Lens of Meaningful Choices
Ask yourself:
- What choices am I asking the player to make?
- Are they meaningful? How?
- Am I giving the right number of choices?
- Would more choices make players feel more powerful?
- Would fewer choices make the game clearer?
- Are there any dominant strategies?

### Lens #40: The Lens of Triangularity
Ask yourself:
- Do I have triangularity now? If not, how can I get it?
- Is my triangularity balanced? Are rewards commensurate with risks?

### Balancing Triangularity: Expected Value
**Example: Qix**
- Fast (blue) rectangle: 20% success chance, 100 points = 20 expected value
- Slow (orange) rectangle: 10% success chance (half speed = half chance)
- To balance: Slow rectangles worth 200 points (same 20 expected value)

**Example: Mario Kart Triangularity Symphony**
- Manual vs. automatic transmission
- Kart vs. bike (wheelie = faster but can't turn)
- Grab power-ups? (risk crash)
- Use power-ups? (risk breaking concentration)
- Keep or dump current power-up?
- Use speed boost pads? (in dangerous locations)
- Hit gas early at start? (timed boost vs. frustrating delay)
- Left or right path? (low-risk vs. high-risk with more boosts)

---

## Balance Type #4: Skill vs. Chance

**Core Principle:** Balance opposing forces of player skill and random chance.

### Player Preferences
- **Skill-focused players:** Prefer games with minimal chance (athletic contests, judgment systems)
- **Chance-focused players:** Prefer relaxed, casual nature—outcome partly up to fate
- **Cultural differences:** German players prefer minimal chance vs. American players

### Determining the Balance
Use **Lens #19: The Player** to understand audience preferences
- Age differences
- Gender differences
- Cultural differences

### Common Balancing Pattern: Alternation
Create alternating tension and relaxation:
- Deal cards = pure chance
- Play cards = pure skill
- Roll die for movement = pure chance
- Decide where to move = pure skill

### David Perry's Addictive Game Design
Players should always be doing three things:
1. Exercising a skill
2. Taking risks (chance)
3. Working a strategy

### Lens #41: The Lens of Skill vs. Chance
Ask yourself:
- Are my players here to be judged (skill) or take risks (chance)?
- Skill = more serious, Chance = more casual. Is my game serious or casual?
- Are parts of my game tedious? Will adding chance enliven them?
- Do parts feel too random? Will replacing chance with skill make players feel more in control?

---

## Balance Type #5: Head vs. Hands

**Core Principle:** Balance physical activity (dexterity) with thinking (strategy/puzzles).

### The Spectrum
- **All Physical:** Pure dexterity, steering, throwing, button-mashing
- **Mixed:** Action + strategy (most action platform games)
- **All Mental:** Pure puzzle solving, no physical challenge

### Common Pattern: Action Platform Games
- Work through level with dexterity (jumping, shooting)
- Pause to solve small puzzle
- Boss monster at end: mix of puzzle solving ("jump on its tail to drop shield!") and dexterity ("only have one second to shoot!")

### Target Market Considerations
- What does your audience prefer? More thinking or more dexterity?
- **Critical:** Game must clearly communicate its balance choice

### Cautionary Example: Pac-Man 2: The New Adventures
- **Name suggested:** Action game like original Pac-Man
- **Box art showed:** 2D platform game (action + little puzzle solving)
- **Game actually was:** Psychological puzzle game (guide Pac-Man's emotional states)
- **Result:** Failed expectations
  - Players expecting action were disappointed
  - Players wanting puzzles didn't play (rejected based on action appearance)

### Games Magazine Scale
Reviews use sliding scale:
- One end: "Fingers"
- Other end: "Brain"
- Note: Button-pushing games can still involve thought and strategy

### Lens #42: The Lens of Head and Hands
Ask yourself:
- Are my players looking for mindless action or intellectual challenge?
- Would adding puzzle solving make it more interesting?
- Are there places where players can relax their brain and just play?
- Can I give players a choice: succeed through high dexterity OR clever strategy with minimal physical skill?
- If "1" = all physical and "10" = all mental, what number would my game get?

---

## Balance Type #6: Competition vs. Cooperation

**Core Principle:** Balance basic animal urges to compete and cooperate.

### Why We Need Both
- **Competition:** Survival, establish status in community
- **Cooperation:** Team is more powerful than individual
- **Games provide:** Safe way to explore how people behave in stressful situations

### Pure Competition
- **Most common** in games
- **Goal:** Determine who is most skilled

### Pure Cooperation
- **Less common** but very interesting
- **Example: Overcooked** - Work together to cook dishes and save world
- **Example: Pandemic** - Coordinate efforts to win as a group

### Blended Competition and Cooperation
**Example: Joust (Arcade)**
- Solo mode: Compete against computer enemies
- Two-player mode: Both compete against enemies together in same arena
- **Competitive tension:** Players get points, can battle each other
- **Cooperative tension:** Higher scores if coordinate attacks and protect each other
- **Player choice:** Beat each other (highest relative score) or beat game (highest absolute score)
- **Special levels:**
  - "Team Wave": Both survive = 3000 bonus points each
  - "Gladiator Wave": First to defeat other = 3000 bonus points

### Team Competition: Best of Both Worlds
- Common in athletic sports
- Rise of networked gaming enabled growth in videogames
- Combines competitive measurement with cooperative teamwork

### Lens #43: The Lens of Competition
Ask yourself:
- Does my game give fair measurement of player skill?
- Do people want to win my game? Why?
- Is winning something people can be proud of? Why?
- Can novices meaningfully compete?
- Can experts meaningfully compete?
- Can experts generally defeat novices?

### Lens #44: The Lens of Cooperation
Ask yourself:
- Cooperation requires communication. Do players have enough opportunity? How could it be enhanced?
- Are players friends or strangers? If strangers, can I help them break the ice?
- Is there synergy (2+2=5) or antergy (2+2=3) when working together? Why?
- Do all players have the same role or special jobs?
- Does my game have tasks no individual can do alone?
- Do any tasks force communication?

### Lens #45: The Lens of Competition vs. Cooperation
Ask yourself:
- If "1" = competition and "10" = cooperation, what number should my game get?
- Can I give players a choice to play cooperatively or competitively?
- Does my audience prefer competition, cooperation, or mix?
- Is team competition right for my game?
- Is my game more fun with team or solo competition?

---

## Balance Type #7: Short vs. Long

**Core Principle:** Balance game length—too short lacks strategy depth, too long causes boredom.

### The Dangers
- **Too short:** Players can't develop and execute meaningful strategies
- **Too long:** Players grow bored or avoid game due to time commitment

### Main Factors: Win/Lose Conditions
Altering these dramatically changes game length

### Example: Monopoly
- **Official rules:** ~90 minutes
- **Modified rules:** (cash jackpots, eased property restrictions) = 3+ hours
- Players inadvertently extend game by "softening" rules

### Balancing Techniques

**1. Time-Limited Invincibility (Spy Hunter)**
- **Original:** 3 car lives, game over when all destroyed
- **Problem:** Novices had very short, frustrating games
- **Solution:** First 90 seconds = unlimited cars (can't lose)
- After 90 seconds: Limited cars as normal
- Result: Guaranteed minimum play time for all skill levels

**2. Armageddon Ending (Minotaur, Battle Royale)**
- **Problem:** Stalemate if players avoid confrontation
- **Flawed solution:** Time limit + point system (feels arbitrary)
- **Elegant solution:** After 20 minutes, bell sounds
  - All players transported to small room with monsters
  - No one can survive long
  - Game guaranteed to end in <25 minutes
  - One player still declared winner
- **Modern application:** Battle royale games shrink area over time

---

## Balance Type #8: Rewards

**Core Principle:** Rewards tell players "you have done well" and fulfill desires.

### Types of Rewards

**1. Praise**
- Simplest: "Good job!" via text, sound, or character speech
- Game judges you and approves
- Nintendo famous for secondary praise sounds/animations

**2. Points**
- Measure of success through skill or luck
- Sometimes gateway to other rewards
- Often valuable just as measurement (especially on leaderboards)

**3. Prolonged Play**
- Extra lives in games where you risk resources (pinball)
- Added time in time-limited games
- Taps into survival drive
- **Modern twist:** Free-to-play energy model (run out = pause until pay or wait)

**4. Gateway**
- Satisfies urge to explore
- Access to new levels
- Keys to locked doors
- Move to new parts of game

**5. Spectacle**
- Beautiful/interesting music or animations
- Example: Pac-Man level 2 intermission (first videogame example)
- Rarely satisfies alone—usually paired with other rewards

**6. Expression**
- Special clothes or decorations
- Often nothing to do with game goals
- Satisfies urge to make mark on world

**7. Powers**
- Improve ability to reach goals more quickly
- Examples: Kinged in checkers, tall in Super Mario, speed in Sonic, weapons in Call of Duty

**8. Resources**
- Food, energy, ammunition, hit points
- Casino games/lotteries: real money
- Videogames: in-game resources only
- Virtual money to spend on resources, powers, prolonged play, or expression
- Free-to-play: Real money → virtual money (rarely reverse)

**9. Status**
- High leaderboard rankings
- Special achievements
- Higher status in player community
- Especially desirable to competitive players

**10. Completion**
- Special feeling of closure
- Rare in real-life problem solving
- Often the ultimate reward
- Usually no point playing further after reaching this

### Reward Combination Examples
- Points → Bonus score → Extra life (resource, prolonged play)
- Special item (resource) → New abilities (powers)
- High score (points) → Enter name/draw picture (expression)
- Unlock every area (gateway) → Special animation (spectacle) at end (completion)

### Balancing Rewards: Psychology Rules

**Rule 1: Acclimation**
- **Problem:** People get used to rewards—what was rewarding becomes "no big deal"
- **Solution:** Gradually increase reward value as player progresses
- "Cheesy trick" but it works—bigger rewards feel good even when you know why designer did it

**Rule 2: Variable > Fixed Rewards**
- **Fixed:** Every monster gives 10 points (predictable, boring)
- **Variable:** 2/3 chance of 0 points, 1/3 chance of 30 points (same average, stays rewarding longer)
- **Real-world example:** Donuts every Friday (expected, taken for granted) vs. random days (delightful surprise)
- **Connection:** Variable rewards make triangularity interesting

### Lens #46: The Lens of Reward
Ask yourself:
- What rewards is my game giving out? Can it give out others?
- Are players excited or bored by rewards? Why?
- Getting reward you don't understand = getting no reward. Do players understand rewards?
- Are rewards too regular? Can they be given more variably?
- How are rewards related to each other? Could they be better connected?
- How are rewards building? Too fast, too slow, or just right?

---

## Balance Type #9: Punishment

**Core Principle:** Punishment, used properly, can paradoxically increase enjoyment.

### Why Punish Players?

**1. Creates Endogenous Value**
- Resources worth more if they can be taken away
- See Lens #7: Endogenous Value

**2. Makes Risk Exciting**
- Can only take risks if negative consequences exist
- Terrible consequences make success much sweeter

**3. Increases Challenge**
- Failure with punishing setback increases challenge
- One way to adjust difficulty level

### Types of Punishment

**1. Shaming**
- Opposite of praise
- "Missed!" "Defeated!"
- Discouraging animations, sound effects, music

**2. Loss of Points**
- Relatively rare in videogames and traditional games/sports
- **Problem:** Cheapens value of earned points
- Points that can't be taken away = very valuable
- Points that could be subtracted = less endogenous value

**3. Shortened Play**
- "Losing a life"
- Time taken off the clock

**4. Terminated Play**
- Game over

**5. Setback**
- Return to start of level or last checkpoint
- Meaningful but not unreasonable
- **Balancing challenge:** Where to place checkpoints?

**6. Removal of Powers**
- **Danger:** Players treasure earned powers—removal may feel unfair
- **Example: Ultima Online ghosts**
  - Death → become ghost → find shrine to resurrect
  - Too long → lose weeks of skill points (too harsh)
- **Fair solution:** Temporary removal
  - Bumper car battle tanks: Hit target → 5-second uncontrolled spin + inoperable gun

**7. Resource Depletion**
- Loss of money, goods, ammunition, shields, hit points
- Most common type of punishment

### Reward vs. Punishment: Psychological Truth
**Reward is always better tool for reinforcement than punishment**
- Whenever possible, use reward instead of punishment to encourage behavior

### Example: Food Gathering in Diablo
- **Original (punishment-based):** Don't eat → diminished powers from hunger
  - Players found it a nuisance
  - Boring activity to avoid penalty
- **Redesigned (reward-based):** Never get hungry, but eating → temporary boost
  - Players liked this much better
  - Same activity, positive instead of negative

### Amount of Punishment: Toontown Example
Question: Harshest punishment in light, fun kids' MMORPG?

**When laff meter reaches zero (becoming "sad"):**
1. Teleported to playground zone (setback—very minor, ~1 minute walk)
2. All carried items disappear (resource depletion—minor, ~10 minutes to re-earn)
3. Character hangs head sadly (shame)
4. ~30 seconds slow walk, can't leave playground or engage in gameplay (temporary power removal)
5. Laff meter goes to zero (resource depletion—increases over time in playground)

**Balancing process:**
- Lighter versions: Battles boring—no risk
- Tougher versions: Players too cautious
- Final version: Encourages balance between caution and risk

### Critical Rule: Understandable and Preventable
- **Must:** Punishment for things player can understand and prevent
- **Never:** Random, unstoppable punishment
- Random punishment = complete lack of control = "unfair"
- Once labeled "unfair," players rarely engage further

### Player Avoidance of Punishment: Ultima III
- **Very strict:** 100-hour game, all characters die → game state erased
- **Player reaction:** "Unfair"
- **Workaround:** Shut off computer before game erases save = dodge punishment
- Game design didn't account for player creativity

### Hardcore Challenge Seekers
- Some players love insanely challenging games with strong punishments (Dark Souls)
- Feel proud about beating difficult game
- **Note:** Fringe group, even they have limits
- Will call game "unfair" if can't see how to prevent punishment

### Lens #47: The Lens of Punishment
Ask yourself:
- What are the punishments in my game?
- Why am I punishing players? What do I hope to achieve?
- Do punishments seem fair? Why or why not?
- Is there a way to turn punishments into rewards and get same/better effect?
- Are strong punishments balanced against commensurately strong rewards?

---

## Balance Type #10: Freedom vs. Controlled Experience

**Core Principle:** Decide where to give player freedom and how much to give.

### The Paradox
- **Interactivity = control/freedom**
- But: Control over everything = more work for developer AND can be boring for player
- Games should be more interesting than real life
- Sometimes means cutting out boring, complex, or unnecessary decisions/actions

### Example: Aladdin's Magic Carpet VR Adventure
**Problem:** Final scene with Jafar—needed perfect camera control for excitement

**Solution:**
- Rest of experience: Fly wherever you want, no restrictions
- Final scene: Take away freedom for perfect flight up hill to Jafar
- Players trained to expect freedom
- Everyone wanted same thing: fly to top of hill where Jafar stands
- **Result:** Not a single playtester noticed freedom was taken away
- **Lesson:** Controlled experience created better player experience

---

## Balance Type #11: Simple vs. Complex

**Core Principle:** Find "good simplicity" and "good complexity," avoid the bad.

### The Paradox
- "Simple" can be criticism ("so simple it's boring") or compliment ("simple and elegant!")
- "Complex" can be criticism ("overly complex and confusing") or compliment ("richly and intricately complex")

### Types of Complexity

**1. Innate Complexity (Often Bad)**
- **Definition:** Very complex rules themselves
- **Arises from:**
  - Trying to simulate complex real-world situation
  - Extra rules needed to balance game
- **Indicators:** Lots of "exception cases"
- **Keywords:** "unless," "except," "exception," "but," "even if"
- Hard to learn, but some people enjoy mastering complex rulesets

**2. Emergent Complexity (Always Good)**
- **Definition:** Simple rules give rise to billions of intricate, complex situations
- **Example:** Water (H2O)—simple structure creates myriad complex snowflakes
- **Example:** Go—very simple ruleset, billions of intricate game situations
- **Ideal:** Simple ruleset → factory for never-ending stream of balanced surprises
- **Achievement:** Players will play your game for centuries

### When to Use Innate Complexity
1. **Simulate real-world situation:** Historical battle re-creation
2. **Balance the game better:** Sometimes needed for proper balance

**Example: Chess Pawns**
- Move: Forward one square into unoccupied space
- UNLESS first move: Can move one or two spaces
- EXCEPT when capturing: Only move diagonally forward, one square
- EVEN IF first move: Still only one square when capturing

**Justification:**
- Has innate complexity (lots of exceptions)
- Evolved to make pawns well-balanced and interesting
- Worth it: Small innate complexity → great emergent complexity
- Pawns only move forward but capture diagonally → fascinatingly complex pawn structures

### Lens #48: The Lens of Simplicity/Complexity
Ask yourself:
- What elements of innate complexity do I have?
- Is there a way to turn innate complexity into emergent complexity?
- Do elements of emergent complexity arise from my game? If not, why not?
- Are there elements that are too simple?

### Natural vs. Artificial Balancing
- **Artificial:** Too many rules to get desired behavior
- **Natural:** Desired effect arises naturally from game interactions

**Example: Space Invaders**
- **Simple rule:** Fewer invaders = faster movement
- **Emergent properties:**
  1. Game starts slow, speeds up as player succeeds
  2. Easy to hit targets initially, harder as player succeeds
  3. Two desirable properties from one simple rule
- **Result:** Nicely balanced, natural

### Elegance: Simple Systems Performing in Complex Situations

**Definition:** Simple systems that perform robustly in complex situations

**Why desirable:**
- Simple to learn and understand
- Full of interesting emergent complexity

**Rating elegance:** Count number of purposes for each element

**Example: Pac-Man Dots**
1. Short-term goal: "Eat the dots close to me"
2. Long-term goal: "Clear all dots from board"
3. Slow player down when eating (triangularity—safer in empty corridor, riskier in corridor with dots)
4. Give player points (measure of success)
5. Give player points (can earn extra life)

**Five purposes = very elegant**

**Hollywood rule of thumb:** If line in script doesn't serve at least two purposes, cut it

**Design approach:** Find things serving only one purpose, combine them

**Example: Pirates of the Caribbean: Battle for the Buccaneer Gold**
- **Original plan:**
  - Friendly host at start (explain how to play)
  - Villain at end (dramatic final battle)
  - Two characters = use up time, strain on budget
- **Elegant solution:** Same character is both host and villain
  - Saves development time
  - Saves game time (only introduce one character)
  - More interesting/credible pirate (tricks player)
  - Surprising plot twist
- **Result:** Multiple purposes = very elegant

### Lens #49: The Lens of Elegance
Ask yourself:
- What are the elements of my game?
- What are the purposes of each element? Count for "elegance rating"
- For elements with one or two purposes, can these be combined or removed?
- For elements with several purposes, can they take on even more?

### Character vs. Elegance

**Character (Opposite of Elegance):**
- Quirks and flaws that serve no purpose
- Make things interesting and lovable

**Example: Leaning Tower of Pisa**
- Tilt serves no purpose—accidental flaw
- Elegance says remove it → straight tower
- But who would want to visit that?
- Tilt = no purpose but gives character

**Example: Monopoly Tokens**
- Hat, shoe, dog, statue, battleship
- Nothing to do with real estate
- Should be little landlords (elegant)
- But would strip Monopoly of its character

**Example: Mario the Plumber**
- Almost nothing to do with what he does or his world
- Weird inconsistency gives him character

### Lens #50: The Lens of Character
Ask yourself:
- Is there anything strange in my game that players talk about excitedly?
- Does my game have funny qualities that make it unique?
- Does my game have flaws that players like?

---

## Balance Type #12: Detail vs. Imagination

**Core Principle:** Decide what details to provide and what to leave to player's imagination.

### Game vs. Experience
- Game is not the experience
- Games = structures that engender mental models in player's mind
- Games provide some detail, player fills in rest with imagination

### Tips for Balance

**1. Only Detail What You Can Do Well**
- Players have rich, detailed imaginations
- If you can't do something better than player's imagination, don't do it
- **Example: Voice acting budget problem**
  - **Bad solution:** Speech synthesis (everyone sounds like robot)
  - **Good solution:** Subtitles (player's imagination provides better voice)
- **Application:** Scenery, sound effects, characters, animations, special effects
- **Rule:** If you can't do it well, leave it to imagination

**2. Give Details the Imagination Can Use**
- Clear details help players understand the game
- **Example: Chess**
  - Mostly abstract game
  - Pieces given medieval court roles
  - Kings don't have names, kingdoms, or policies (don't matter)
  - What matters: Tallest piece = important, moves slowly, must be guarded
  - Knights = horses → remember they can jump
  - Details help imagination grasp functionality

**3. Familiar Worlds Don't Need Much Detail**
- City street or house interior: Player already knows these places
- Player quickly fills in with imagination if given few relevant details
- **Exception:** If point is to educate about unfamiliar place, need lots of detail

**4. Use the Binocular Effect**
- Opera/sporting event: Use binoculars at beginning for close-up view
- After seeing close-up, imagination fills in tiny distant figures
- **Videogame application:** Show character close-up at start, then as inch-high sprite for rest of game
- Easy way to use little detail to get lot of imagination

**5. Give Details That Inspire Imagination**
- **Example: Chess again**
  - Control all members of royal army = fantasy mind quickly takes to
  - Only fantasy—tied to reality by thin thread
  - Situations players can easily fantasize about
  - All kinds of imaginary details crystallize around one little detail designer provided

### Lens #51: The Lens of Imagination
Ask yourself:
- What must the player understand to play my game?
- Can some element of imagination help them understand that better?
- What high-quality, realistic details can we provide?
- What details would be low quality if we provided them? Can imagination fill the gap?
- Can I give details that imagination will reuse again and again?
- What details I provide inspire imagination?
- What details I provide stifle imagination?

---

## Key Takeaways

1. **Balancing is artful, not scientific:** Understanding subtle nuances between elements
2. **Model and balance inform each other:** Iterate between theory and practice
3. **Half of development time should be balancing:** After game is playable
4. **Players have conflicting desires:** Want challenge but also want to win easily
5. **Variable rewards > Fixed rewards:** Proven in thousands of psychological experiments
6. **Reward always better than punishment:** For reinforcing desired behavior
7. **Elegance = multiple purposes:** Classic games are masterpieces of elegance
8. **Balance is never perfect:** Often must settle for "good enough"
9. **Use the lenses:** Each balance type has specific lens for examination
10. **Playtest constantly:** Only way to know if balance is right
