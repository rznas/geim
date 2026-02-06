# Ten Interface Tips

These ten practical tips complement the systematic interface design process with wisdom from real-world game development.

---

## Tip #1: Steal (Top-Down Approach)

**Principle:** Start with proven interfaces from successful games in your genre, then adapt for your unique needs.

### Why This Works
- Players already know how similar games work
- You build on tested solutions
- Saves design time
- Reduces risk of basic usability problems

### How to Apply

1. **Research the genre:**
   - Play 5-10 successful games in your genre
   - Screenshot their interfaces
   - Note common patterns (button layouts, HUD positions)
   - Identify what feels natural vs awkward

2. **Start with the standard:**
   - Use genre conventions as your baseline
   - Example: FPS - WASD movement, mouse aim, E for interact

3. **Modify for your game:**
   - Keep standard controls for standard actions
   - Only innovate where your game is unique
   - Example: Standard FPS controls + unique time-rewind mechanic on R key

### Examples

**Successful "stealing":**
- Halo established FPS console controls → Every console shooter copied the formula
- World of Warcraft established MMO UI → Most MMOs use similar layouts
- Angry Birds established physics puzzler touch controls → Became genre standard

**When to deviate:**
- Your core mechanic doesn't fit standard controls
- Your game has significantly different information needs
- Genre conventions are demonstrably bad (backed by playtesting)

### Cautions

❌ **Don't blindly copy everything** - Understand why conventions exist
❌ **Don't steal from wrong genre** - RTS controls don't work for platformers
❌ **Don't become a clone** - Innovate where your game innovates

✅ **Do understand the standard** before breaking it
✅ **Do playtest** to ensure changes are improvements
✅ **Do give players customization options** when possible

---

## Tip #2: Customize (Bottom-Up Approach)

**Principle:** Build interface from scratch based on your game's unique needs, not existing templates.

### Why This Works
- Results in interface perfectly suited to your game
- Enables innovation and differentiation
- Forces you to understand player needs deeply
- Can lead to breakthrough interface designs

### How to Apply

1. **List information needs** (see information-design-guide.md)
   - What does player need to know every moment?
   - What actions must they take?
   - What feedback must they receive?

2. **List available physical inputs** on your platform
   - Buttons, sticks, touch regions, motion controls
   - Don't assume standard mappings yet

3. **Map logically, not conventionally**
   - Pair most-used actions with most-accessible controls
   - Group related actions physically close
   - Ignore genre conventions initially

4. **Prototype and test**
   - Build paper or digital prototype
   - Test with fresh users (not genre veterans)
   - Observe what feels intuitive

### Examples

**Successful customization:**
- **Portal** - Unique dual-portal mechanic required thinking beyond FPS conventions
- **Monument Valley** - Touch-based isometric navigation designed from scratch
- **Guitar Hero** - Custom controller perfectly matched to music gameplay
- **Wii Sports** - Motion controls built around natural movements, not button conventions

**When to use bottom-up:**
- Your game genre doesn't exist yet
- Core gameplay is entirely new
- Standard controls demonstrably don't work
- Target audience is unfamiliar with gaming conventions
- You can create custom physical interface (mobile, VR, custom controllers)

### Cautions

❌ **Don't reinvent unnecessarily** - If jump works on A button, use A button
❌ **Don't confuse "different" with "better"**
❌ **Don't skip extensive playtesting**

✅ **Do test with both experienced gamers and novices**
✅ **Do iterate based on observation, not opinion**
✅ **Do document why you deviated from conventions**

---

## Tip #3: Design Around Your Physical Interface

**Principle:** Embrace the strengths and constraints of your platform's input/output devices.

### Why This Works
- Players chose platform for a reason (touch, motion, precision, etc.)
- Fighting the platform leads to compromise and mediocrity
- Platform-specific design creates standout experiences
- Players expect interface suited to their device

### Platform-Specific Considerations

#### **Gamepad (Console)**
**Strengths:**
- Comfortable for long sessions
- Excellent for analog movement (sticks)
- Good for sustained button presses
- Haptic feedback built-in

**Design for:**
- Fluid character movement
- Action combat
- Driving/flight
- Platforming

**Avoid:**
- Precise pointing (use snap-to-target)
- Large amounts of text entry
- Interfaces with many small buttons
- RTS-style selection of many units

**Examples:**
- Dark Souls - lock-on targeting compensates for no mouse
- Halo - generous aim assist for controller

#### **Mouse & Keyboard (PC)**
**Strengths:**
- Pixel-precise pointing
- Many discrete buttons available
- Fast text entry
- Comfortable at desk

**Design for:**
- Strategy games (click to select units)
- Precise aiming (FPS)
- Complex interfaces (many buttons/hotkeys)
- Management games (spreadsheets, menus)

**Avoid:**
- Analog movement (WASD is digital)
- Long-session comfort (unless at desk)
- Console port UIs (huge buttons, limited keyboard use)

**Examples:**
- StarCraft - mouse selection of units, keyboard hotkeys for abilities
- CS:GO - precise mouse aim fundamental to gameplay

#### **Touch (Mobile/Tablet)**
**Strengths:**
- Direct manipulation (no tool mediation)
- Natural for casual players
- Multitouch enables complex gestures
- Portable, short-session friendly

**Design for:**
- Dragging/swiping
- Pinch to zoom
- Tap to select
- Turn-based or pausable gameplay

**Avoid:**
- Sustained button holding (no tactile feedback)
- Small precise targets (fingers are fat)
- Twitch-reflex gameplay
- Complex multi-button combos

**Examples:**
- Angry Birds - flick to aim, natural touch metaphor
- Hearthstone - drag cards, direct manipulation
- Fruit Ninja - swipe gesture core to gameplay

#### **Motion Controls (VR/Kinect/Wii)**
**Strengths:**
- Primal/intuitive gestures
- Physical engagement
- Novel experiences
- 1:1 body mapping possible

**Design for:**
- Sports/physical activities
- Natural gestures (reaching, throwing, swinging)
- Spatial presence
- Full-body or hand movement

**Avoid:**
- Precise small movements
- Sustained awkward poses
- Actions impossible in real life
- Complex button combinations

**Examples:**
- Beat Saber - natural slashing motions
- Wii Sports - bowling/tennis motions
- Half-Life: Alyx - hand presence in VR

### Cross-Platform Design

**If you must go cross-platform:**
1. **Design for each platform separately**
   - Don't compromise both for sake of parity
   - Create platform-specific controls
   - Adjust UI scale and layout per platform

2. **Use lowest common denominator for core game**
   - Core gameplay must work on all platforms
   - Use platform-specific UI and controls to access it

3. **Consider lead platform**
   - Design for primary platform first
   - Port to others with platform-specific adaptations

**Bad example:**
- Skyrim on PC - console UI scaled up, didn't utilize mouse/keyboard strengths

**Good example:**
- Diablo III - same game, different UIs per platform (mouse-based vs controller-optimized)

---

## Tip #4: Theme Your Interface

**Principle:** Interface aesthetics should reinforce the game's theme and world.

### Why This Works
- Creates cohesive experience (see Lens #11: Unification)
- Enhances immersion
- Makes game feel like a unified artistic vision
- Helps interface feel part of the world, not UI overlay

### Levels of Interface Theming

#### **Level 1: Diegetic UI** (exists in game world)
Interface elements that characters can see/interact with.

**Examples:**
- Dead Space - health bar on protagonist's back (visible to character)
- Racing games - speedometer on car dashboard
- Metroid Prime - HUD is Samus's helmet display
- Flight simulators - cockpit instruments

**Benefits:**
- Maximum immersion
- Thematically powerful
- No "breaking the fourth wall"

**Challenges:**
- Must fit realistically in world
- Limited by world's technology/aesthetic
- Can be hard to read
- Difficult to adjust based on game state

#### **Level 2: Spatial UI** (in 3D space but not diegetic)
UI elements positioned in 3D world but characters don't acknowledge them.

**Examples:**
- The Sims - plumbobs above characters
- World of Warcraft - nameplates above NPCs
- Overwatch - health bars floating above players
- Many RPGs - damage numbers in world space

**Benefits:**
- Connected to world spatially
- Can use themed visual style
- More flexible than diegetic
- Players associate UI with world object

**Challenges:**
- Can clutter 3D space
- May occlude important gameplay
- Depth perception can be confusing

#### **Level 3: Non-Diegetic but Themed** (overlay, but styled to match world)
Traditional HUD overlay, but artwork matches game theme.

**Examples:**
- Medieval game - parchment paper, old fonts, wax seals
- Sci-fi game - holographic effects, tech fonts, scan lines
- Horror game - blood splatters, distressed textures, unsettling fonts
- Steampunk game - brass frames, gears, Victorian typography

**Benefits:**
- Can use familiar HUD layouts
- Easier to read/navigate
- Full control over information display
- Still maintains thematic coherence

**Challenges:**
- Can feel "tacked on" if not done well
- May limit UI clarity for sake of style
- Requires art resources

#### **Level 4: Generic UI** (functional but not themed)
Clean, minimal interface focused on function over form.

**When appropriate:**
- Abstract/puzzle games (Tetris, Portal 2 test chambers)
- Competitive games where clarity trumps immersion (CS:GO, League)
- Games with multiple art styles (user-generated content)
- Minimalist design philosophy

**Not a cop-out if:**
- Deliberate aesthetic choice
- Serves the game's goals
- Part of minimalist design vision

### Theming Guidelines

**Do:**
- ✅ Let theme guide color palette (fantasy = earthy tones, sci-fi = blues/teals)
- ✅ Match fonts to world (medieval = blackletter, future = geometric sans-serif)
- ✅ Use materials from world (wood, stone, metal, hologram)
- ✅ Consider how in-world tech would display info
- ✅ Make menus feel like in-world objects (books, tablets, holograms)

**Don't:**
- ❌ Sacrifice readability for theme
- ❌ Use theme as excuse for cluttered UI
- ❌ Mismatch theme (neon UI on medieval game)
- ❌ Forget color-blind accessibility for themed colors

### Examples Analysis

**Fallout series:**
- Themed: Retro-futuristic Pip-Boy interface
- Color: Green monochrome (CRT aesthetic)
- Fonts: Monospace, computer-like
- Result: Perfectly captures 1950s-future aesthetic

**Horizon Zero Dawn:**
- Themed: Holographic tribal-tech fusion
- Color: Cyan/orange (tech + nature)
- Shapes: Geometric but with organic curves
- Result: Reflects theme of primitive culture using advanced tech

**Persona 5:**
- Themed: Stylish phantom thief aesthetic
- Color: Bold red/black/white
- Typography: Aggressive angles, motion
- Result: Every menu burst with personality

---

## Tip #5: Sound Maps to Touch

**Principle:** Use sound to simulate tactile feedback when physical touch isn't available.

### Why This Works
- Human brains naturally associate sound with touch
- Creates "feel" for virtual objects
- Enhances juiciness
- Provides confirmation of actions

### The Mind-Sound-Touch Connection

When manipulating real objects:
1. You touch it
2. It makes a sound (click, thud, scrape)
3. You feel the vibration/resistance
4. Brain integrates all three into "interaction"

In games, we lack #1 and #3, but sound (#2) can trigger memory of the full sensory experience.

### Application Areas

#### **Menu Navigation**
**Without sound:** Silent menus feel "dead"
**With sound:**
- Hover sound (soft, high) - "I'm touching this"
- Click sound (crisp, definite) - "I've pressed it"
- Slide sound (smooth whoosh) - "This moved"
- Cancel sound (lower pitch) - "I went back"

**Example sounds:**
- Hover: Soft "blip" (like touching a touchscreen)
- Select: Satisfying "click" (like pressing a button)
- Scroll: Gentle "whoosh" (like sliding paper)

#### **Combat/Action**
**Without sound:** Hits feel weightless
**With sound:**
- Light hit: Quick "thwack"
- Heavy hit: Deep "THOOM" with bass
- Critical hit: Explosive "CRACK"
- Block: Metallic "CLANG"

Combine with:
- Controller rumble (if available)
- Screen shake
- Particle effects

Result: Feels like you hit something solid

#### **Object Manipulation**
**Without sound:** Dragging/picking up feels abstract
**With sound:**
- Pick up: "Clink" or "whoosh" (object weight)
- Put down: "Thud" (contact with surface)
- Drag: Continuous scraping/sliding sound
- Throw: Whoosh increasing in pitch

**Good example:**
- Portal: Cubes make satisfying metallic sounds when placed
- The Witness: Panel puzzles click and hum with tactile sound

#### **Environmental Interaction**
**Opening doors:**
- Old wood: Creaking
- Metal: Industrial clank
- Automatic: Pneumatic hiss

**Walking surfaces:**
- Grass: Soft rustling
- Metal: Hard footsteps
- Wood: Creaking boards
- Snow: Crunching

Result: Even though you're pressing buttons, you feel like you're there

### Sound Design Principles

**Principle 1: Match Material**
- Metal = sharp, bright, reverberant
- Wood = warm, hollow, less sustain
- Cloth = soft, muffled, quick decay
- Glass = bright, tinkling, fragile

**Principle 2: Match Weight**
- Light objects = higher pitch, quick decay
- Heavy objects = lower pitch, longer sustain, more bass

**Principle 3: Match Speed**
- Fast actions = short, sharp sounds
- Slow actions = longer, drawn out sounds

**Principle 4: Layering**
- Combine multiple sounds (impact + material + environment)
- Example: Sword hit = metal clash + enemy grunt + ambient reverb

### Common Patterns

**Pattern 1: The Triple**
For any major action, provide three-layer feedback:
1. **Visual** - See the effect
2. **Audio** - Hear the sound
3. **Haptic** - Feel the rumble (if available)

**Pattern 2: The Cascade**
For chain reactions, each event has diminishing audio:
```
Primary action: FULL VOLUME
Secondary effect: 70% volume
Tertiary effect: 40% volume
```
Creates satisfying cascade without overwhelming

**Pattern 3: The Swell**
For charging/building actions:
- Start: Low volume, low pitch
- Building: Increase volume and pitch
- Release: Sharp, loud, high (with falling decay)

Example: Charging a mega blast

### Testing Sound-Touch

**Good test:**
- Turn OFF visuals
- Play using only sound
- Can you tell what's happening?

**Example:** Super Mario Bros
- Jump sound = "boing"
- Coin = "ding"
- Enemy stomp = "thud"
- Power-up = ascending notes
- You could play with eyes closed!

---

## Tip #6: Balance Options and Simplicity with Layers

**Principle:** Hide complexity in layers (modes/submenus) to keep main interface simple while still offering power.

### The Dilemma

**Players want:**
- Simple, clean interface (easy to learn)
- Access to many options (power and control)

**These seem contradictory!**

### Solution: Progressive Disclosure Through Layers

Show simple options immediately, hide complex options behind intentional actions.

#### **Layer 1: Core Gameplay**
Visible always, minimal elements
- Health
- Core actions (attack, jump)
- Critical feedback

**Example (action game):**
- Health bar
- Weapon icon
- Ammo count
- Targeting reticle

#### **Layer 2: Tactical Options**
Accessible with single button, temporary
- Weapon switching
- Skill activation
- Quick inventory

**Example (action game):**
- Hold Tab: Weapon wheel appears
- Select weapon
- Release Tab: Wheel disappears

#### **Layer 3: Strategic Options**
Requires pause or mode change, full-screen
- Full inventory management
- Skill trees
- Map
- Options

**Example (action game):**
- Press Start: Pause menu
- Navigate to inventory
- Full screen of items, stats, equipment

#### **Layer 4: Configuration**
Deep menu diving, rare access
- Settings
- Keybinding
- Graphics options
- Accessibility

### Layering Patterns

**Pattern 1: Radial Menu (Console/Controller)**
- Hold button → Radial menu appears (8 options in circle)
- Analog stick selects
- Release button → Activates selection

**Benefits:**
- Many options (8-12)
- Fast access (hold, flick, release)
- Doesn't permanently occupy screen

**Examples:**
- Grand Theft Auto - weapon wheel
- Mass Effect - power wheel
- Battlefield - commo rose

**Pattern 2: Tab/Escape Pattern (PC)**
- Tab key → Shows scoreboard/objectives (while held)
- Escape key → Pauses game, opens menu

**Benefits:**
- Familiar to PC players
- Fast to access
- Clear visual distinction (overlay vs fullscreen)

**Pattern 3: Long Press (Touch/Mobile)**
- Tap → Basic action
- Tap and hold → Opens context menu with more options

**Benefits:**
- Doesn't require screen space for buttons
- Scales to power users

**Examples:**
- Many mobile games - hold on character for info/actions

**Pattern 4: Modes (All Platforms)**
- Different states with completely different interface layouts
- Clear visual indication of mode

**Examples:**
- Building mode (Fortnite) - different HUD layout
- Photo mode (many games) - remove all HUD, show camera controls
- Map mode (open world games) - full screen map with filters/pins

### Guidelines for Layering

**Do:**
- ✅ Put most-used actions in Layer 1
- ✅ Make layer changes obvious (fade, animation, sound)
- ✅ Allow quick exit from deeper layers
- ✅ Remember player's place when returning to layer

**Don't:**
- ❌ Hide critical information in deep layers
- ❌ Make players navigate menus for time-sensitive actions
- ❌ Create more than 4 layers (gets confusing)
- ❌ Mix layer metaphors (radial menu + nested lists)

### Discoverability

**Problem:** How do players know about hidden layers?

**Solutions:**
1. **Tutorial messages** - "Press Tab for inventory"
2. **Contextual hints** - When player is damaged: "Press Start to use healing items"
3. **Visual cues** - Button prompts, glowing indicators
4. **Intuitive mapping** - Use platform conventions (Start = pause, Tab = scoreboard)
5. **Gradual introduction** - Unlock layers as player learns (first hour = Layer 1 only)

---

## Tip #7: Use Metaphors

**Principle:** Make unfamiliar interfaces understandable by making them resemble familiar real-world objects or concepts.

### Why Metaphors Work

**Human learning:** We understand new things by relating them to things we already know.

**Interface metaphor:** "This virtual thing works like that real thing you know"

### Classic Computing Metaphors

- **Desktop** - computer screen as desk with files/folders
- **Trash can** - deleting files is like throwing papers away
- **Windows** - applications as overlapping papers on desk
- **Mouse cursor** - your finger pointing at screen

These metaphors helped millions understand computers.

### Game Interface Metaphors

#### **Inventory as Physical Container**
**Metaphor:** "Your inventory is a backpack/bag"

**Familiar concepts:**
- Limited space (only so much fits)
- Weight matters (heavy items slow you down)
- Organization (sorting into pouches/sections)

**Examples:**
- Resident Evil - briefcase with grid tetris
- Skyrim - weight limit before over-encumbered
- Diablo - bag with slots

**What it teaches without explanation:**
- Why you can't carry 1000 swords
- Why there's a limit
- Why you need to organize

#### **Map as Paper Map**
**Metaphor:** "This is a paper map you're holding"

**Familiar concepts:**
- Unfolds/opens
- Can write notes on it
- Gets more detailed as you explore
- "Fog of war" = unexplored areas

**Examples:**
- Zelda: Breath of the Wild - map like paper, fills in as you go
- Red Dead Redemption - worn paper aesthetic

**What it teaches:**
- Why you can't see everywhere immediately
- Why you need to explore to reveal map

#### **Health as Physical State**
**Metaphors vary:**
- **Heart containers** (Zelda) - like having N hearts
- **Health bar** (most games) - like a fuel gauge
- **Blood/wounds** (realistic games) - like actual injury
- **Shield recharge** (Halo) - like energy field

**Each metaphor implies different rules:**
- Hearts: Discrete chunks, find heart pieces
- Bar: Continuous, gradual healing
- Wounds: Realistic, need first aid
- Shield: Regenerates if you take cover

#### **Skill Trees as Growth**
**Metaphor:** "Character development is like a growing tree"

**Familiar concepts:**
- Starts with roots/trunk (basic abilities)
- Branches out (specializations)
- Can't reach high branches without climbing up

**What it teaches:**
- Why you can't learn advanced skills immediately
- Why choices matter (can't fill every branch)
- Progression path

### Creating Effective Metaphors

**Good metaphor qualities:**

1. **Familiar to target audience**
   - ✅ Backpack inventory (everyone knows backpacks)
   - ❌ Quantum storage (unless sci-fi game for sci-fi fans)

2. **Consistent rules**
   - If interface is "a book," it should behave like a book
   - Pages turn, bookmarks work, etc.
   - Don't break metaphor randomly

3. **Reinforced visually**
   - If metaphor is "paper map," make it look like paper
   - Use appropriate textures, sounds, animations

4. **Teaches, doesn't just decorate**
   - Metaphor should help player understand how system works
   - Not just cosmetic

**Example: ToyTopia Radio Controls** (from the book)

**Problem:** Game had delay between button press and action (for network sync)

**Without metaphor:** Confusing, players think interface is broken

**With metaphor:** Button sends "radio signal" to toy
- Visual: See radio wave travel from button to toy
- Audio: Radio transmission sound
- Result: Delay makes sense, feels intentional

### When to Avoid Metaphors

**Don't use metaphor if:**
- It limits what interface could do (too constraining)
- Target audience doesn't know the reference
- It makes simple things complicated
- It's decorative but doesn't aid understanding

**Example of bad metaphor:**
- Desktop "trash can" on Mac used to be where you ejected disks
- Confusing! Ejecting ≠ Deleting
- Metaphor broke down

### Testing Your Metaphor

**Questions to ask:**
1. Can new players guess how it works based on metaphor?
2. Does the metaphor help or confuse?
3. Are there places where metaphor breaks down?
4. Could we explain system without metaphor? (If yes, maybe not needed)

**Playtest exercise:**
- Show interface to new player
- Don't explain anything
- Ask: "What do you think this is?"
- If they understand the metaphor, good sign!

---

## Tip #8: If It Looks Different, It Should Act Different

**Principle:** Visual differences should indicate functional differences. Things that look the same should behave the same.

### Why This Matters

**Player assumption:** "If it looks different, it must *be* different"

When you violate this, players feel tricked or confused.

### Common Violations

#### **Problem 1: Decorative Variety**
**Scenario:** Designer wants visual variety, creates 5 different-looking enemies that all behave identically.

**Example:**
- Red orc, blue orc, green orc
- All have same health, same attacks, same behavior
- Just different paint jobs

**Player confusion:**
- "Why do they look different?"
- "Is blue one stronger?"
- Learns to ignore differences → feels disappointed

**Solution:**
- Make them behave differently (red = aggressive, blue = defensive, green = ranged)
- OR use more subtle variety (same basic shape, slight color variation)

#### **Problem 2: Hidden Identity**
**Scenario:** Same button/icon means different things in different contexts.

**Example:**
- "X" button sometimes means "close window"
- "X" button sometimes means "delete item"
- Looks identical, means different things

**Player confusion:**
- Accidentally deletes item thinking they're closing window
- Loss of trust in interface

**Solution:**
- Use different icons (X = close, trash can = delete)
- Use consistent language ("Cancel" vs "Delete")
- Add confirmation for dangerous actions

#### **Problem 3: Invisible Difference**
**Scenario:** Things that behave differently look the same.

**Example:**
- Two doors in dungeon
- One is unlocked, one is locked
- Look identical until you try them

**Player confusion:**
- Can't tell which is which
- Wastes time trying locked doors
- Feels arbitrary

**Solution:**
- Make locked doors visually distinct (different color, padlock visible, chains)
- Add subtle cues (locked door is darker, different texture)

### Positive Examples

#### **Example 1: Enemy Types (Clear Visual Language)**
**Hollow Knight:**
- Small enemies: Low health, simple behavior
- Medium enemies: Medium health, more complex
- Large enemies: High health, dangerous

**Visual cues match function:**
- Size indicates health/danger
- Distinctive colors/shapes for different attack patterns
- Player learns visual language quickly

#### **Example 2: Platform Types**
**Super Mario games:**
- Solid block: Can stand on
- Block with "?": Can hit for items
- Block with face (Thwomp): Dangerous, crushes you
- Cloud platform: Can jump through from below
- Ice platform: Slippery

**Each looks distinct and behavior matches appearance**

#### **Example 3: Item Rarity (Color Coding)**
**Many RPGs/looters:**
- White/gray = Common
- Green = Uncommon
- Blue = Rare
- Purple = Epic
- Orange/Gold = Legendary

**Looks different = IS different (better stats)**

### Creating Consistent Visual Language

**Step 1: Define your visual vocabulary**

| Visual Property | Meaning |
|-----------------|---------|
| Size | Health/power level |
| Color | Type/element (red=fire, blue=ice) |
| Shape | Behavior category (humanoid=intelligent, blob=mindless) |
| Glow/effect | Special property (glowing=magical) |
| Texture | Material (rough=tough, smooth=fast) |

**Step 2: Apply consistently**
- ALWAYS make bigger enemies tougher
- ALWAYS make red things fire-related
- NEVER break your own rules

**Step 3: Teach the language**
- First enemies introduce each property individually
- Tutorial draws attention: "Red enemies use fire attacks"
- Let players discover through play

**Step 4: Combine elements**
- Red (fire) + Large (tough) = Tough fire enemy
- Blue (ice) + Small (weak) = Weak ice enemy
- Players learn to parse combinations

### Guidelines

**Do:**
- ✅ Make visual differences meaningful
- ✅ Keep appearances consistent within category
- ✅ Use visual hierarchy (important things stand out)
- ✅ Teach your visual language clearly

**Don't:**
- ❌ Add visual variety without functional reason
- ❌ Make same button mean different things
- ❌ Hide functionality behind identical appearance
- ❌ Break your established patterns without warning

### When Variety IS Okay

**Acceptable decorative variety:**
- Cosmetic customization that's clearly cosmetic
- Environmental detail that's clearly background
- Subtle texture/lighting variations

**Key: Players must know it's decorative**
- If it's labeled "cosmetic" or "skin" → okay
- If it's obviously background scenery → okay
- If it could plausibly be functional → NOT okay

---

## Tip #9: Test, Test, Test!

**Principle:** No one gets interface right the first time. Extensive playtesting is mandatory.

### Why Testing Is Critical

**Interface design is hard because:**
- You can't see through beginner eyes (curse of knowledge)
- Your mental model ≠ player's mental model
- Assumptions you make may be wrong
- What's "obvious" to you may not be to players

**Testing reveals:**
- Where players get confused
- What they expect that doesn't happen
- Which information they can't find
- Which actions feel awkward

### When to Test

**Don't wait for complete game!**

**Test early, test often:**

#### **Phase 1: Paper Prototype (Day 1)**
- Draw interface on paper
- Have player mime using it
- Watch what they expect to do

**Benefits:**
- Extremely cheap/fast
- Reveals major issues immediately
- Easy to iterate (draw new version)

**Example:**
- Draw HUD layout on paper
- Ask player: "Where would you look for your health?"
- Observe where they point

#### **Phase 2: Interactive Mock-up (Week 1-2)**
- Create clickable prototype (PowerPoint, Figma, Unity UI)
- No gameplay, just interface
- Have player navigate menus

**Benefits:**
- Tests navigation and layout
- Reveals menu confusion
- Still cheap to iterate

**Example:**
- Create inventory menu mock-up
- Give player scenario: "Equip a sword"
- See if they can find it

#### **Phase 3: With Gameplay (Month 1+)**
- Working game with functional interface
- Test in real gameplay scenarios
- Observe where interface fails under pressure

**Benefits:**
- Tests real usage patterns
- Reveals problems that only show during active play
- Tests information visibility and feedback

**Example:**
- Player in combat scenario
- Observe: Can they see their health while fighting?
- Do they notice when abilities are ready?

#### **Phase 4: Polish Testing (Near completion)**
- Test refined interface
- Look for subtle improvements
- Fine-tune timing, sizing, positioning

### Testing Methods

#### **Method 1: Think-Aloud Protocol**
**How:**
- Ask player to verbalize their thoughts while playing
- "What are you trying to do now?"
- "What do you think this button does?"

**Reveals:**
- Player intentions vs actual actions
- Misconceptions about interface
- Where they get stuck

**Example observations:**
- "I'm looking for my health... I don't see it... oh there it is in the corner"
  → Health bar too small or poorly placed

#### **Method 2: Silent Observation**
**How:**
- Watch player play without talking
- Record screen and face/hands
- Note when they hesitate, fumble, or look confused

**Reveals:**
- Natural behavior (not influenced by talking)
- Where interface breaks flow
- Which actions feel awkward

**Example observations:**
- Player repeatedly presses wrong button for action
  → Button mapping doesn't match expectations

#### **Method 3: Post-Play Interview**
**How:**
- After gameplay session, ask questions
- "Which part felt confusing?"
- "Was there information you needed but couldn't find?"

**Reveals:**
- Overall impressions
- Memory of problems
- Suggestions for improvement

**Example questions:**
- "Rate the controls: Easy to learn, or difficult?"
- "Did you always know what to do next?"

#### **Method 4: Metrics/Analytics**
**How:**
- Record data: which buttons used, menu navigation paths, death causes
- Analyze for patterns

**Reveals:**
- Quantitative problems
- Features players never find
- Percentage of players affected

**Example metrics:**
- 70% of players never open skill menu
  → Menu is hidden or players don't understand it

### Who to Test With

**Different testers reveal different problems:**

#### **Fresh Players (First Time Gamers)**
- Reveal: Assumptions you make about basic gaming literacy
- Example: May not know WASD, may not understand "press Start to continue"

#### **Casual Gamers**
- Reveal: Whether interface is too complex
- Example: Too many buttons, overwhelming information

#### **Experienced Gamers (Genre Fans)**
- Reveal: Whether you've violated genre conventions
- Example: "Why isn't reload on R?"

#### **Expert Testers (QA/Design Peers)**
- Reveal: Deep usability issues, edge cases
- Example: "What happens if I open inventory during a cutscene?"

**Test with ALL types!**

### Common Test Findings

**Finding:** "Players didn't see the health bar"
- **Solutions to try:**
  - Make it bigger
  - Use brighter color
  - Add pulsing animation when low
  - Move to more central location
  - Add audio/haptic warning

**Finding:** "Players couldn't figure out how to do [X]"
- **Solutions to try:**
  - Add tutorial prompt
  - Make button more discoverable
  - Simplify the process
  - Add contextual hint when relevant

**Finding:** "Players kept pressing [wrong button]"
- **Solutions to try:**
  - Remap to button they expect
  - Add button remapping option
  - Show button prompts more clearly

**Finding:** "Interface felt 'clunky' or 'slow'"
- **Solutions to try:**
  - Reduce animation time
  - Make buttons more responsive
  - Remove unnecessary confirmation dialogs
  - Increase "juiciness" (feedback, motion)

### Iteration Cycle

1. **Test** with 5-10 players
2. **Identify** 3-5 biggest problems
3. **Prioritize** (fix critical issues first)
4. **Redesign** solutions for top problems
5. **Implement** changes
6. **Test again** (repeat)

**Important:**
- Don't try to fix everything at once
- Focus on highest-impact changes
- Test again to verify fixes worked

---

## Tip #10: Break the Rules to Help Your Player

**Principle:** Genre conventions and "rules" exist to serve players. When breaking a rule helps players, break it.

### Why This Matters

**Problem:**
- Game design has many "rules of thumb"
- Some become dogma
- Designers follow them blindly

**Reality:**
- Rules exist to solve common problems
- If your game doesn't have that problem, the rule may not apply
- Sometimes breaking rules creates better experience

### When to Break Rules

**Rule-breaking checklist:**
1. **Does the rule actually help players in your specific game?**
   - If no → Consider breaking it
2. **Does breaking it improve player experience measurably?**
   - Playtest both ways
   - Use data, not opinion
3. **Are you breaking it thoughtfully or accidentally?**
   - Deliberate choice backed by reasoning = good
   - Didn't know rule existed = might be bad

### Example: The Mouse Button Rule

**The "Rule":**
- Left mouse button = primary action
- Right mouse button = secondary/context action
- Don't use right button unless you have a specific secondary action

**Rationale:**
- Consistency across applications
- Not all mice have right button (old days)
- Right-click brings up OS context menus in many apps

**But what if you're making a children's game?**

**Problem:**
- Young kids frequently click wrong button (small hands)
- They get frustrated when "nothing happens"
- It's a simple game that only needs one button

**Solution: BREAK THE RULE**
- Map LEFT and RIGHT button to same action
- Both buttons do the same thing
- Kids never click "the wrong button"

**Rationale:**
- Rule was about consistency and having enough buttons
- Kids don't care about consistency with other apps
- Game literally only needs one button
- Breaking rule significantly improves kid experience

**Result:**
- Much lower frustration
- Kids feel competent
- No downside (right button wasn't used anyway)

### More Examples of Smart Rule-Breaking

#### **Example 1: "Always show exact numbers"**
**Rule:** Display exact health numbers (450/500 HP) so players have precise information

**When to break:**
- Immersive survival game where character wouldn't know exact HP
- Solution: Vague indicators ("Healthy," "Injured," "Near death")
- Effect: Increases tension and immersion

**Example:**
- DayZ, Minecraft (hunger/health bars without numbers)
- Reinforces survival theme

#### **Example 2: "Never use auto-aim"**
**Rule:** Players should aim manually; auto-aim is "cheating"

**When to break:**
- Console FPS where analog stick can't match mouse precision
- Solution: Subtle aim assist that nudges crosshair toward target
- Effect: Makes game feel responsive, not frustrating

**Example:**
- Halo, Call of Duty (console versions)
- Players feel skilled, even with assist

#### **Example 3: "Show all UI all the time"**
**Rule:** HUD elements should always be visible so players always have info

**When to break:**
- Cinematic/immersive game where HUD breaks atmosphere
- Solution: Hide UI by default, show temporarily when relevant or on button hold
- Effect: Screen is cleaner, more immersive

**Example:**
- The Last of Us (can hide HUD)
- Dead Space (HUD is diegetic, minimal)

#### **Example 4: "Pause should freeze everything"**
**Rule:** When player hits pause, game completely stops

**When to break:**
- Online multiplayer game (can't pause other players)
- Rhythm game (would break the flow)
- Solution: Different pause behavior or no pause
- Effect: Maintains game's core experience

**Example:**
- Dark Souls (online = no pause)
- Guitar Hero (pause breaks rhythm, so it's discouraged)

#### **Example 5: "Important buttons on face buttons"**
**Rule:** Main actions should map to gamepad face buttons (A/B/X/Y)

**When to break:**
- Game where triggers/shoulders are more important
- Solution: Map primary actions to triggers
- Effect: More intuitive for that specific game type

**Example:**
- Racing games (accelerate/brake on triggers feels natural)
- FPS games (shoot on trigger feels like real gun trigger)

### How to Break Rules Successfully

**Step 1: Understand the rule**
- Why does this rule exist?
- What problem does it solve?
- Who does it help?

**Step 2: Evaluate for your game**
- Do I have that problem?
- Does the rule help my players?
- What would happen if I broke it?

**Step 3: Test both ways**
- Implement rule-following version
- Implement rule-breaking version
- Playtest with real players
- Measure results (confusion, frustration, success)

**Step 4: Make informed decision**
- If breaking rule helps players → break it
- If rule helps players → keep it
- If neutral → probably keep it (consistency is valuable)

**Step 5: Document your reasoning**
- Write down why you broke the rule
- Helps team understand decision
- Prevents someone from "fixing" it later

### Warnings

**Don't break rules:**
- ❌ Because you didn't know the rule existed
- ❌ To be "different" without reason
- ❌ Because it's easier to implement
- ❌ Without playtesting both approaches

**Do break rules:**
- ✅ After understanding why rule exists
- ✅ When it genuinely helps players
- ✅ After testing to confirm benefit
- ✅ For clear, documented reasons

### The Meta-Rule

**The only rule that matters:**
> *Make the player experience as good as possible.*

All other rules are guidelines to achieve that goal. If a rule doesn't serve that goal in your specific case, you're free to break it—but test to make sure!

---

## Integration with Other Interface Design Tools

These ten tips complement:
- **Interface Architecture Guide** - Understanding the six mappings
- **Feedback and Juiciness Guide** - Making interfaces feel responsive
- **Information Design Guide** - Organizing what to display
- **Interface Design Lenses** - Analytical tools for evaluation

Use tips during design process, apply lenses during evaluation, and test constantly throughout.

---

*See SKILL.md for complete interface design workflow*