# The Story Stack Framework

The Story Stack is the proper hierarchy for designing story-driven games. It orders elements from least flexible (Fantasy) to most flexible (Story).

## Critical Warning

**Most designers make this mistake:** They start by writing the story, then try to build a game around it. This approach **ruins more games than any other mistake**.

**Why it fails:** Story becomes the master instead of the servant, forcing inflexible elements (especially Fantasy) to bend unnaturally to narrative requirements.

**The correct approach:** Start at the bottom of the stack (Fantasy) and build upward. Story comes LAST.

## The Stack Hierarchy

```
┌──────────────────────────────────────────────┐
│ 5. STORY (Most Flexible)                    │ ← Design LAST
│    Narrative that explains the world         │
├──────────────────────────────────────────────┤
│ 4. WORLD                                     │
│    Setting where economy makes sense         │
├──────────────────────────────────────────────┤
│ 3. ECONOMY                                   │
│    Progress system rewarding actions         │
├──────────────────────────────────────────────┤
│ 2. ACTION                                    │
│    Player activities fulfilling fantasy      │
├──────────────────────────────────────────────┤
│ 1. FANTASY (Least Flexible)                 │ ← Design FIRST
│    Core player desire/aspiration             │
└──────────────────────────────────────────────┘
```

**Ordering Principle:** From inflexible (Fantasy) to flexible (Story)

## Level 1: Fantasy (Foundation)

### What Is Fantasy?

The core player desire or aspiration. The "what would it feel like to be..." that draws players to your game.

### Why Fantasy Is Least Flexible

**The Terrifying Truth:** Either a fantasy appeals to a player or it does not. There is no middle ground.

**Examples:**
- ✓ **Flying superhero** - Many people have this fantasy
- ✗ **Professional dishwasher** - Almost nobody fantasizes about this

### The Test

Ask: "Do enough people want to BE this or DO this?"

If the answer is unclear or "no," everything else will be an uphill battle.

### Common Strong Fantasies

- **Power fantasies:** Be a hero, wizard, warrior, commander
- **Mastery fantasies:** Become the best at something
- **Creation fantasies:** Build worlds, create art, design systems
- **Social fantasies:** Lead a team, be popular, influence others
- **Exploration fantasies:** Discover secrets, explore unknown lands
- **Transformation fantasies:** Change yourself or the world

### How to Define Your Fantasy

Write one clear sentence:

- "Experience what it's like to be a fairy and fly through an enchanted world"
- "Feel the power of being a legendary ninja"
- "Build and manage your own theme park"

**If you can't state it clearly, you don't have it yet.**

### Example: Pixie Hollow Online

**Initial (Wrong) Approach:**
- Based game on activities from Tinkerbell movie
- Helping animals, harvesting items, making gifts, solving problems
- Flying was just transitions between activities

**Player Feedback:**
"These seem interesting... but what I really want to do is FLY!"

**Lesson:** The movie's priorities ≠ the fantasy's requirements

**Corrected Design:**
- Flying became the PRIMARY action, not a transition
- All activities involved flight
- Special attention given to the feel of flying
- This fulfilled the fantasy properly

### Red Flags

**Warning sign:** "We can't do that... it goes against the story."

**What this means:** Story has enslaved your design. You started at the wrong end of the stack.

**Solution:** Return to Fantasy. Make story serve the fantasy, not vice versa.

## Level 2: Action (Implementation)

### What Is Action?

The specific player activities that fulfill the fantasy. The verbs of your game.

### How to Choose Actions

1. **State your fantasy clearly**
2. **Ask: "What actions best fulfill this fantasy?"**
3. **Don't assume—test with real players**
4. **Prioritize actions that FEEL right for the fantasy**

### The Fantasy-Action Connection

**Strong connection:** Actions directly deliver on fantasy promise
- Fairy fantasy → Flying (not just in cutscenes, but constantly)
- Ninja fantasy → Stealth, assassination, acrobatics
- Builder fantasy → Place blocks, design structures, terraform

**Weak connection:** Actions tangential to fantasy
- Fairy fantasy → Solve logic puzzles (disconnected)
- Ninja fantasy → Memorize trap locations (tedious)
- Builder fantasy → Combat enemies (contradicts fantasy)

### Common Pitfall: Movie Actions ≠ Game Actions

Movies show what's dramatically interesting, not what's experientially fun.

**Example:** A movie about a detective might show:
- One key interrogation (dramatic)
- Paperwork montage (visual shorthand)
- Climactic chase (exciting)

**A game about a detective needs:**
- Many interrogations (core loop)
- Investigation mechanics (not just montage)
- Multiple chases (replayable fun)

### Evaluating Your Actions

For each action, ask:
- Does this directly fulfill the fantasy?
- Does this feel right for the fantasy?
- Did we include this because it's fun, or because we saw it in media?
- Are we making players do this because WE think they should want it?

### Example: Pirates Game

**Realistic but wrong:** Ships travel at historically accurate slow speeds
**Result:** Players bored

**Fixed:** Ships travel at "feels right" speed (much faster than realistic)
**Result:** Players engaged

**Lesson:** What feels right > what is historically accurate

## Level 3: Economy (Progress System)

### What Is Economy?

The system of earning and spending that rewards player actions and creates progress.

**Economy = Earning + Spending**

### Economy Must Serve Fantasy and Action

The economy defines what matters in your world. If you reward the wrong actions, players will do the wrong things.

### Design Process

1. **Identify your core actions** (from Level 2)
2. **Ask: "How do we reward these actions?"**
3. **Ask: "What do players spend rewards on?"**
4. **Ensure the economy reinforces the fantasy**

### Example: Ninja Fantasy

**Fantasy:** Be a legendary ninja

**Actions:**
- Throw ninja stars
- Sneak up on enemies
- Strike with sword

**Wrong Economy:**
- Reward players for memorizing hidden trap locations
- Force tedious puzzle-solving to progress

**Why it's wrong:** Rewarding actions that DON'T fulfill fantasy

**Right Economy:**
- Reward stealth kills more than noisy kills
- Reward speed and efficiency
- Reward style and technique

**Result:** Players do ninja-like things because that's what earns progress

### Example: Pixie Hollow Online

**Question:** Should fairies have money?

**Initial thought:** Yes, typical game economy with currency

**Problem:** "Fairybucks" contradicts fairy fantasy

**Solution:** Barter system with natural currencies
- Slippers cost 5 pine needles
- Hair ribbon costs 2 blueberries
- Dress costs 6 lily petals

**Result:**
- Economy matches fantasy
- Encourages desired actions (flying around to scavenge)
- Reinforces fairy world feeling

### Common Economy Types

**Simple earning:**
- Points
- Level progression
- Win condition

**Earning + spending:**
- Currency to buy upgrades
- Resources to craft items
- Experience to unlock abilities

**Complex economies:**
- Multiple currencies
- Trading systems
- Player-driven markets

### Evaluating Your Economy

Ask:
- What actions does this economy reward?
- Are those the actions that best fulfill the fantasy?
- Does earning feel consistent with the fantasy?
- Does spending feel consistent with the fantasy?
- Are we accidentally rewarding boring/tedious actions?

## Level 4: World (Justification)

### What Is World?

The setting with rules that make your economy (and thus your actions and fantasy) make logical sense.

**World ≠ Story**
- Story = sequence of events
- World = place that operates by certain rules

### Purpose of World

Explain WHY your game works the way it does.

### Questions Your World Must Answer

1. **Why does this economy exist?**
   - Where do collectibles come from?
   - Why do NPCs want what they want?
   - What created this system?

2. **What are the rules of this world?**
   - What's possible and impossible here?
   - Why do these actions work?
   - What logic governs this place?

3. **Who lives here and why?**
   - What motivates inhabitants?
   - What social structures exist?
   - Why haven't things changed?

### Example: Running/Jumping/Collecting Stars

**Actions:** Run, jump, collect stars

**Economy:** Trade stars for magical items

**World questions:**
- Where did the stars come from?
- Why do item sellers want stars?
- Where did the magical items come from?
- Why are stars valuable in this world?

**Bad answer:** (shrug) "They just are."
**Result:** World feels hollow and fake

**Good answer:** Create mythology
- Stars = crystallized wishes that fell from sky
- Sellers want them because they grant power/luck
- Magical items crafted by ancient civilization
- Stars are the energy source for magic

**Result:** World feels coherent and believable

### World Consistency

**Critical rule:** If your world operates by certain rules, NEVER break them.

**Example: Pocket Space**
- You can put a microwave in your pocket (weird but okay)
- Later, "That ironing board is too big to carry"
- **Result:** World breaks, players stop believing

**One inconsistency ruins everything—past, present, and future.**

### World Detail Level

You don't need to share everything with players, but YOU must know:
- History of your world
- Why things are the way they are
- What happened before the game starts
- Motivations of all factions/characters

**Disney Theme Park Secret:** Every attraction has elaborate backstory never told to guests, but designers know it and use it to keep experience solid.

**If it's not real to you, it's not real to them.**

## Level 5: Story (Narrative Explanation)

### What Is Story?

The narrative that explains your world and motivates the player's journey through it.

### Why Story Comes Last

Story is the MOST flexible element:
- Can be changed with just a few words
- Can justify almost anything
- Should serve everything below it
- Must never constrain the fantasy

**Gameplay changes take weeks (balancing)**
**Technology changes take months (reprogramming)**
**Story changes take minutes (rewriting)**

### Story's Proper Role

Story is the **willing servant** of the game, using its flexibility to:
- Explain why the world works this way
- Justify the economy
- Motivate the actions
- Frame the fantasy

**Story should NEVER:**
- Dictate what mechanics are allowed
- Prevent fun actions
- Override player feedback about the fantasy
- Enslave the design process

### Using Story's Flexibility

**Example: 3DO Flying Game**

**Problem:** Technical limitation—only weird green fog possible

**Initial reaction:** "This looks unrealistic, scrap it"

**Story solution:** Evil aliens shrouded planet in toxic gas

**Results:**
- Technical approach now viable
- Gameplay mechanic supported
- Story arguably IMPROVED (more dramatic)
- Development continues smoothly

**Example: Mordak's Revenge Board Game**

**Initial design:** Collect 5 keys → travel to Mordak's castle → battle him

**Problem:** Would be better gameplay if Mordak came to player
- More immediate
- Battle in variety of terrains
- More exciting

**Story obstacle:** "But that doesn't make sense!"

**Story solution:** Change keys to "summoning stones"
- Mordak has secret stronghold no one can find
- Collecting 5 stones SUMMONS him out of stronghold
- Forces him to battle in player's current terrain

**Results:**
- Desired gameplay achieved
- Story more novel (not trite "villain in castle")
- Mechanic makes sense narratively
- Better game overall

### Story's Superpower

Story can make the strange seem normal, the arbitrary seem inevitable.

**Bad use:** "We can't make that gameplay change—it contradicts the story!"

**Good use:** "How can we adjust the story to support this better gameplay?"

## How to Respect the Story Stack

### The Design Sequence

1. **Find a powerful fantasy** that resonates with players
2. **Choose actions** that fulfill that fantasy
3. **Create economy** that rewards those actions
4. **Build world** that justifies that economy
5. **Craft story** that explains that world

### Warning Signs You've Violated the Stack

- "We can't do that, it goes against the story"
- "But the story says..."
- Players complain fantasy isn't fulfilled
- Actions feel disconnected from fantasy
- Economy rewards boring things
- World rules seem arbitrary
- Fun ideas rejected for narrative reasons

### How to Fix Stack Violations

1. **Identify where you actually started**
   - Did you write story first? (common mistake)
   - Did you design economy before defining actions?

2. **Return to Fantasy**
   - Restate the core fantasy clearly
   - Confirm it resonates with target players

3. **Rebuild upward**
   - Adjust each level to serve levels below it
   - Make story serve world, world serve economy, etc.

4. **Use story's flexibility**
   - Story is your fixAll tool
   - Never let it constrain—let it explain

## Examples in Practice

### Example 1: Superhero Game

**Stack order:**

1. **Fantasy:** Feel like Superman—invincible, flying, saving people
2. **Action:** Fly, use super strength, rescue civilians, fight villains
3. **Economy:** Earn "hope" from saved civilians, spend on power upgrades
4. **World:** City constantly under threat, you're the protector, powers from alien heritage
5. **Story:** Villain creating disasters to drain your hope and make city give up

**If story started first:** Might have complex narrative about political intrigue, but then fantasy of being invincible doesn't work (need vulnerability for drama). Story enslaves fantasy = weak game.

### Example 2: Farming Game

**Stack order:**

1. **Fantasy:** Own and grow your dream farm
2. **Action:** Plant, water, harvest, raise animals, craft goods
3. **Economy:** Sell products for coins, buy seeds/animals/upgrades
4. **World:** Rural valley with friendly town, seasons affect crops, magical sprites help
5. **Story:** Restore grandfather's neglected farm, help townspeople, unlock valley secrets

**If story started first:** Might have dramatic story about saving farm from bankruptcy with time pressure, but that adds stress that contradicts the peaceful farming fantasy. Story enslaves fantasy = stressed players.

## The Stack in Different Genres

### Action Games
- Fantasy is usually very clear (be the hero)
- Actions are straightforward (combat, movement)
- Economy can be simple (just progress)
- World can be thin (just enough context)
- Story can be minimal (just enough motivation)

### RPGs
- Fantasy might be complex (multiple fantasies)
- Actions need variety (many verbs)
- Economy is critical (character progression)
- World must be rich (immersion required)
- Story can be elaborate (but still serves the stack)

### Simulation Games
- Fantasy is "manage/build X"
- Actions are management/construction
- Economy IS the game (core loop)
- World is the system itself
- Story can be absent (emergent narrative)

## Key Principles

1. **Fantasy either resonates or it doesn't** (least flexible)
2. **Actions must fulfill fantasy** (test with real players)
3. **Economy rewards the right actions** (be careful what you reward)
4. **World makes economy logical** (answer the "why")
5. **Story explains everything** (most flexible, comes last)

6. **Story is the servant, not the master**
7. **Use story's flexibility to fix problems**
8. **Never start with story**

## Practical Exercise

For your current game, answer:

1. **Fantasy:** Can you state it in one sentence? Does it resonate?
2. **Action:** Do your actions directly fulfill the fantasy?
3. **Economy:** Are you rewarding the right behaviors?
4. **World:** Have you explained why your economy exists?
5. **Story:** Is your story serving everything below it, or constraining it?

If story is causing problems, remember: **Story can change**. Use its flexibility.

## Related Concepts

- **Story Tips** - How to write effective story (see [ten-story-tips-guide.md](ten-story-tips-guide.md))
- **Integration Methods** - Pearls vs machines (see [story-game-integration-methods.md](story-game-integration-methods.md))
- **Indirect Control** - Guide players without forcing (see [indirect-control-techniques.md](indirect-control-techniques.md))
