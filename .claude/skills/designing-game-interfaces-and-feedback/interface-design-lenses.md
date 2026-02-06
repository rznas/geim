# Interface Design Lenses

This guide provides the complete set of design lenses for interface design from Chapter 15 of *The Art of Game Design*. Use these lenses to analyze and refine your interface at different stages of development.

---

## Lens #59: The Lens of Control

**Purpose:** Ensure players feel in control of their experience through the interface.

**When to use:**
- Throughout interface design process
- When players report feeling "helpless" or "fighting the controls"
- During control scheme design
- When testing responsiveness

### Core Questions

1. **When players use the interface, does it do what is expected? If not, why not?**
   - Test assumption: "When I press X, Y should happen"
   - Identify mismatches between player expectation and actual behavior
   - Common causes: Lag, unclear button mapping, hidden state changes

2. **Intuitive interfaces give a feeling of control. Is your interface easy to master or hard to master?**
   - Track time-to-competence (how long until players feel comfortable)
   - Identify steep learning curves
   - Consider: Simple to learn vs deep to master balance

3. **Do your players feel they have a strong influence over the outcome of the game? If not, how can you change that?**
   - Test if players attribute success/failure to their actions or to randomness
   - Ensure clear cause-and-effect relationships
   - Provide feedback that shows player impact

4. **Feeling powerful = feeling in control. Do your players feel powerful? Can you make them feel more powerful somehow?**
   - Measure: Do players feel capable?
   - Consider: Second-order motion, dramatic feedback, responsive controls
   - Avoid: Sluggish response, weak audio/visual feedback

### Application Examples

**Good control:**
- Responsive controls (< 0.1 second input lag)
- Clear feedback for every action
- Predictable results
- Players say "I did X" not "The game did X"

**Poor control:**
- Delayed or unresponsive input
- Actions with unclear effects
- Randomness overwrites player skill
- Players blame the game, not themselves

### Design Responses

**If players don't feel in control:**
- Reduce input lag
- Improve feedback clarity
- Make cause-effect relationships more direct
- Add practice mode or tutorial
- Consider control customization options

**If interface does unexpected things:**
- Test with fresh players to identify mismatched expectations
- Either change behavior to match expectations, OR
- Add clear communication about how it actually works

---

## Lens #60: The Lens of Physical Interface

**Purpose:** Examine how players physically interact with your game.

**When to use:**
- During control scheme design
- When choosing/designing hardware
- When porting to new platforms
- When players report physical discomfort or fatigue

### Core Questions

1. **What does the player pick up and touch? Can this be made more pleasing?**
   - Controller, mouse, keyboard, touch screen, VR controller?
   - Weight, texture, button feel
   - Comfort for long sessions
   - Consider custom controllers if budget allows

2. **How does this map to the actions in the game world? Can the mapping be more direct?**
   - Examine all six interface mappings (especially #1: Physical Input → World)
   - Reduce abstraction where possible
   - Example: Steering wheel for racing game = more direct than analog stick

3. **If you can't create a custom physical interface, what metaphor are you using when you map the inputs to the game world?**
   - Example: Gamepad thumbstick = character's legs
   - Example: Mouse = character's view/head
   - Does metaphor make sense to players?

4. **How does the physical interface look under the Lens of the Toy?**
   - Is it fun to hold and manipulate, even without the game?
   - Does it have satisfying tactile feedback?
   - Would people play with it idly?

5. **How does the player see, hear, and touch the world of the game? Is there a way to include a physical output device that will make the world become more real in the player's imagination?**
   - Screen size, resolution, viewing angle
   - Headphones vs speakers
   - Haptic feedback (rumble, adaptive triggers)
   - VR/AR possibilities

### Application Examples

**Strong physical interfaces:**
- Wii Sports - motion controls directly map to real-world motions
- Dance Dance Revolution - dance pad creates physical dance
- Racing games with wheel/pedals - direct car control metaphor
- VR games with hand tracking - natural hand gestures

**Poor physical interfaces:**
- Complex button combos that require hand contortions
- Imprecise touch targets (buttons too small for fingers)
- Long-session discomfort (bad ergonomics)
- Mapping that contradicts physical intuition

### Design Responses

**Platform-specific optimization:**
- **Gamepad:** Utilize analog sticks, triggers, rumble
- **Mouse/Keyboard:** Use precise pointing, many hotkeys
- **Touch:** Direct manipulation, natural gestures
- **VR:** Spatial interaction, hand presence

**Improving physicality:**
- Add haptic feedback for important events
- Consider motion controls if they fit gameplay
- Design for ergonomics (no awkward hand positions)
- Use physical metaphors players understand

---

## Lens #61: The Lens of Virtual Interface

**Purpose:** Design the virtual layer between physical I/O and game world (HUD, menus, UI).

**When to use:**
- Designing HUD layouts
- Creating menu systems
- Adding information displays
- Balancing clarity vs immersion

### Core Questions

1. **What information does a player need to receive that isn't obvious just by looking at the game world?**
   - Make comprehensive list (health, score, objectives, inventory, etc.)
   - Distinguish: What's visible in world vs what needs UI?
   - Consider: Could this be shown diegetically (in-world) instead?

2. **When does the player need this information? All the time? Only occasionally? Only at the end of a level?**
   - Tier 1: Always visible (health, ammo)
   - Tier 2: Occasional glance (map, objectives)
   - Tier 3: On-demand (full inventory, stats)
   - Use information-design-guide.md for systematic prioritization

3. **How can this information be delivered to the player in a way that won't interfere with the player's interactions with the game world?**
   - Screen real estate is precious
   - Use corners/edges for persistent info
   - Reserve center for gameplay
   - Consider transparency, size, minimal design

4. **Are there elements of the game world that are easier to interact with using a virtual interface (like a pop-up menu, for instance) than they are to interact with directly?**
   - Example: RTS unit selection (easier to click than to "walk up to")
   - Example: RPG spell selection (easier to use menu than 40 hotkeys)
   - Balance: Direct interaction (immersive) vs menu interaction (efficient)

5. **What kind of virtual interface is best suited to my physical interface? Pop-up menus, for example, are a poor match for a gamepad controller.**
   - Mouse → Point-and-click menus, tooltips
   - Gamepad → Radial menus, lists with D-pad navigation
   - Touch → Drag-and-drop, swipe gestures
   - VR → Spatial UI, diegetic interfaces

### Application Examples

**Effective virtual interfaces:**
- Minimal HUD (only essential info)
- Diegetic UI where possible (Dead Space's health on back)
- Contextual display (only show when relevant)
- Clear information hierarchy

**Poor virtual interfaces:**
- Information overload (cluttered screen)
- Critical info hidden in menus
- UI that blocks gameplay view
- Inconsistent visual language

### Design Responses

**Reducing virtual interface density:**
- Move non-critical info to submenus
- Use diegetic display (in-world UI)
- Show contextually (only when needed)
- Increase transparency

**Improving clarity:**
- Use consistent positioning
- High contrast for critical info
- Visual grouping for related data
- Icons + text for reinforcement

---

## Lens #62: The Lens of Transparency

**Purpose:** Make the interface invisible so players can immerse in the game world.

**When to use:**
- When players report "fighting the controls"
- During polish phase
- When testing with experienced players
- Reviewing overall interface coherence

### Core Quote

> *"No matter how beautiful your interface is, it would be better if there were less of it."*
> — Edward Tufte

### Core Questions

1. **What are the player's desires? Does the interface let the players do what they want?**
   - Identify player goals moment-by-moment
   - Map controls to those goals directly
   - Remove unnecessary steps

2. **Is the interface simple enough that with practice, players will be able to use it without thinking?**
   - Can become "muscle memory"?
   - Consistent mapping throughout game?
   - No mode-confusion?

3. **Do new players find the interface intuitive? If not, can it be made more intuitive, somehow? Would allowing players to customize the controls help or hurt?**
   - Test with fresh players
   - Identify points of confusion
   - Consider: Genre conventions, platform norms, natural metaphors
   - Customization helps power users but may indicate poor defaults

4. **Does the interface work well in all situations, or are there cases (near a corner, going very fast, etc.) when it behaves in ways that will confuse the player?**
   - Test edge cases
   - Identify context-dependent failures
   - Ensure consistent behavior across all game situations

5. **Can players continue to use the interface well in stressful situations, or do they start fumbling with the controls or missing crucial information? If so, how can this be improved?**
   - Test during intense moments (boss fights, time pressure)
   - Ensure critical info remains visible
   - Controls must remain responsive under pressure

6. **Does anything confuse players about the interface? On which of the six interface arrows is it happening?**
   - Use interface architecture model to diagnose
   - Identify which mapping (1-6) is causing confusion
   - Fix that specific connection

7. **Do players feel a sense of immersion when using the interface?**
   - Do they say "I jumped" or "I pressed A"?
   - Do they forget they're using a controller?
   - Does UI break the spell?

### Application Examples

**Transparent interfaces:**
- Players project into game world naturally
- Controls become second nature
- UI fades into peripheral awareness
- Players describe actions as "I did X"

**Opaque interfaces:**
- Players conscious of controlling character
- Frequent mistakes or wrong buttons
- UI draws attention to itself
- Players say "the game made me do X"

### Design Responses

**Achieving transparency:**
- Minimize interface elements
- Use consistent mappings
- Respond instantly to input (< 0.1 sec)
- Hide UI that's not immediately needed
- Make common actions simple (few button presses)

**When transparency breaks:**
- Identify the breaking point (observation + interview)
- Diagnose which mapping fails
- Simplify or clarify that mapping
- Add tutorial/practice for complex interactions

---

## Lens #63: The Lens of Feedback

**Purpose:** Ensure the feedback loop between player and game is clear, informative, and engaging.

**When to use:**
- At every moment of gameplay
- When actions feel "flat" or unrewarding
- When players seem confused about game state
- When designing all interface mappings (#2, 5, 6)

### Core Questions

Ask these **at every moment in your game:**

1. **What do players need to know at this moment?**
   - Critical information for current decision
   - Example: During combat → enemy health, my health, weapon cooldowns

2. **What do players want to know at this moment?**
   - May differ from "need"
   - Example: Player wants to know if they're making progress toward achievement

3. **What do you want players to feel at this moment? How can you give feedback that creates that feeling?**
   - Design feedback to evoke emotion
   - Example: Want tension → low health warning sounds, red screen edges
   - Example: Want triumph → fanfare, dramatic slow-mo, particle effects

4. **What do the players want to feel at this moment? Is there an opportunity for them to create a situation where they will feel that?**
   - Enable player-driven emotional moments
   - Example: Player wants to feel powerful → big damage numbers, enemy ragdolls

5. **What is the player's goal at this moment? What feedback will help them toward that goal?**
   - Goal-oriented feedback
   - Example: Goal is "find the exit" → compass pointing to exit
   - Example: Goal is "kill boss" → boss health bar

### The Feedback Loop

```
Player Action → Game Response → Feedback → Player Perceives → Next Action → ...
```

This loop is the waterwheel that generates experience. Smooth, rich feedback creates powerful experiences.

### Types of Feedback

**Immediate feedback (< 0.1 sec):**
- Button press → sound
- Hit enemy → impact flash
- Take damage → screen shake
- Essential for feeling of control

**Delayed feedback (0.1 - 1 sec):**
- Enemy death animation
- Score popup
- Achievement notification
- Reinforces consequences

**Aggregate feedback (end of level/session):**
- Final score screen
- Statistics summary
- Rewards/unlocks
- Provides satisfaction and closure

### Application Examples

**Strong feedback:**
- Immediate response to all actions
- Multiple channels (visual + audio + haptic)
- Clear cause-effect relationships
- Appropriate intensity for action importance

**Weak feedback:**
- Delayed response ("Did I hit the button?")
- Single channel only
- Unclear what caused what
- All feedback same intensity (monotonous)

### Design Responses

**Improving feedback:**
- Add multi-channel feedback (see "juiciness")
- Reduce delay (optimize code, simplify animations)
- Vary feedback intensity by action importance
- Use second-order motion (derived movement)

**Common feedback improvements:**
- Damage number size varies by amount
- Screen shake intensity matches impact force
- Enemy flinch animation shows hit confirmed
- Audio pitch varies to show effect strength

---

## Lens #64: The Lens of Juiciness

**Purpose:** Make the interface fun to use through continuous, rewarding feedback.

**When to use:**
- When interface feels "dry" or boring
- During polish phase
- When adding second-order motion
- When designing all feedback systems

### Definition

**Juicy interface:** Like a ripe peach, a little interaction yields a continuous flow of delicious reward through second-order motion and multiple simultaneous feedback channels.

**Second-order motion:** Motion derived from player action, not directly controlled. Example: Camera sway from movement, weapon recoil, ragdoll physics.

### Core Questions

1. **Is my interface giving the player continuous feedback for their actions? If not, why not?**
   - Every action should have feedback
   - Feedback should be ongoing, not just discrete events
   - Consider: Visual, audio, haptic all together

2. **Is second-order motion created by the actions of the player? Is this motion powerful and interesting?**
   - Does player movement cause interesting derived effects?
   - Example: Running makes camera bob, weapon sway
   - Example: Turning makes character lean, hair flow
   - Is it satisfying to watch?

3. **Juicy systems reward the player many ways at once. When I give the player a reward, how many ways am I simultaneously rewarding them? Can I find more ways?**
   - Single reward: "+100 points" (boring)
   - Juicy reward: Points popup + sound + particles + screen flash + haptic + victory music swell
   - Count channels: How many simultaneous feedback types?

### Juiciness Techniques

#### **Technique 1: Layer Feedback**
For important actions, provide feedback on multiple channels:
- Visual (particle effects, screen shake, color change)
- Audio (sound effect, music swell)
- Haptic (controller rumble)
- UI (numbers, animations)
- World (physics reactions, secondary animations)

#### **Technique 2: Add Second-Order Motion**
Create motion that follows from player actions:
- Camera lag/sway when turning
- Weapon recoil when firing
- Character momentum/inertia
- Cloth/hair physics
- Particles trailing movement

#### **Technique 3: Vary Intensity**
Don't make all feedback the same:
- Light hit → small effect
- Medium hit → medium effect
- Heavy hit → large effect with extra juice
- Critical hit → over-the-top dramatic effect

#### **Technique 4: Add Polish**
Small touches that make interactions delightful:
- Smooth transitions (ease-in/ease-out)
- Anticipation and follow-through animations
- Squash and stretch
- Screen space effects (motion blur, bloom)

### Example: Juicy vs Dry

**Dry: Picking up a coin**
- Coin disappears
- Counter increments
- That's it

**Juicy: Picking up a coin**
- Coin flies toward player with trail effect
- Satisfying "ding" sound
- Counter increments with pop animation
- Particle burst at collection point
- Small haptic pulse
- Subtle screen flash
- Character does quick celebration gesture
- Coin sparkles before collection

**Result:** Collecting coins feels great, players want to collect more!

### Application Examples

**Juicy games:**
- Rocket League - Car hits, explosions, goal celebrations
- Angry Birds - Bird impacts, structure collapses
- Devil May Cry - Combat feedback, style rank
- Peggle - Ball bounces, peg explosions, victory screen

**Dry interfaces:**
- Minimal feedback
- Silent interactions
- Instant state changes with no transitions
- Feels mechanical, not satisfying

### Design Responses

**Making interface juicier:**
1. Identify key player actions
2. For each action, list current feedback
3. Brainstorm additional feedback channels
4. Implement and test
5. Ensure it enhances, not overwhelms

**Warning:**
- Too much juice = overwhelming, distracting
- Balance: Satisfying but not excessive
- Core gameplay visibility must remain

---

## Lens #65: The Lens of Primality

**Purpose:** Tap into primal, intuitive actions that require no explanation.

**When to use:**
- Designing core actions/controls
- Choosing input methods (especially touch/motion)
- Making games for wide audiences (including non-gamers)
- Reducing cognitive load

### Definition

**Primal:** Prehuman, evolved over millions of years. Actions that animals can do intuitively without training. Engage lower brain functions (reptilian, limbic) rather than requiring higher cognition (neocortex).

### Why Primality Matters

**Primal actions feel natural because:**
- Practiced for 300-400 million years (animal evolution)
- Don't require conscious thought
- Instant understanding
- Deep engagement

**Examples:**
- Touch (directly manipulating objects)
- Gather (collecting resources)
- Fight (defeating threats)
- Navigate (finding way through space)
- Overcome obstacles (jumping, climbing)
- Find mate (rescue the princess)

### Core Questions

1. **What parts of my game are so primal an animal could play? Why?**
   - Identify primal elements
   - Example: Touching to collect = primal
   - Example: Navigating maze = primal
   - Example: Understanding complex quest text = NOT primal

2. **What parts of my game could be more primal?**
   - Look for opportunities to simplify
   - Replace abstract with concrete
   - Replace indirect with direct
   - Replace learned conventions with natural actions

### Tool Use vs Direct Interaction

**Tool use (NOT primal):**
- Using keyboard/mouse to control character
- Button combos for actions
- Menu navigation
- Text input

**Direct interaction (PRIMAL):**
- Touch screen to grab object directly
- Motion controls to swing sword
- Speaking voice commands
- Eye tracking to look

### Application Examples

**Primal interfaces:**
- Touch interfaces (directly touch what you want)
- VR hand tracking (reach and grab)
- Motion controls for natural movements
- Eye tracking for looking/aiming

**Non-primal interfaces:**
- Complex button combinations
- Abstract representations
- Tool-mediated control (mouse cursor)
- Text-based interaction

**Primal game elements:**
- Collecting items (gathering)
- Combat with visible enemies (threat response)
- Exploring unknown spaces (navigation)
- Jumping over obstacles (overcoming barriers)
- Protecting characters (nurturing)

### Design Responses

**Increasing primality:**
- Use direct manipulation (touch, VR) over indirect (buttons)
- Show concrete objects over abstract symbols
- Use recognizable threats/rewards (food, danger)
- Leverage spatial navigation
- Create gather-and-collect gameplay
- Show clear cause-effect relationships

**Limitations:**
- Not all games can or should be fully primal
- Tool use enables complexity and depth
- Balance intuition with sophistication

---

## Lens #66: The Lens of Channels and Dimensions

**Purpose:** Thoughtfully map game information to display channels and their dimensions.

**When to use:**
- Designing HUD layout
- Organizing information architecture
- Creating visual language
- Balancing clarity and efficiency

### Core Questions

1. **What data need to travel to and from the player?**
   - Comprehensive list (see information-design-guide.md Step 1)
   - Include input data (player to game) and output data (game to player)

2. **Which data are most important?**
   - Prioritize into tiers (every moment, occasional, on-demand)
   - Critical vs nice-to-have

3. **What channels do I have available to transmit these data?**
   - Screen regions (corners, edges, center)
   - Audio channels (SFX, music, voice)
   - Haptic feedback
   - In-world elements

4. **Which channels are most appropriate for which data? Why?**
   - Match importance to visibility
   - Match frequency to persistence
   - Consider accessibility (multiple channels for critical data)

5. **Which dimensions are available on the different channels?**
   - Visual: Color, size, position, shape, animation, opacity, rotation, fill
   - Audio: Volume, pitch, tempo, timbre, spatial position, reverb
   - Haptic: Intensity, duration, frequency, pattern

6. **How should I use those dimensions?**
   - As reinforcement (multiple dimensions = same information)
   - As multiplexing (different dimensions = different information)
   - Balance clarity with efficiency

### Four-Step Process

See information-design-guide.md for complete process:
1. List and prioritize information
2. List available channels
3. Map information to channels
4. Review use of dimensions

### Design Patterns

**Pattern: Reinforcement**
Use multiple dimensions to make single piece of information very clear.

Example: Enemy health
- Number (500/1000)
- Bar length (50%)
- Color (yellow for medium health)
- Animation (pulse at low health)

**Benefit:** Crystal clear, accessible
**Cost:** Uses multiple dimensions for one fact

**Pattern: Multiplexing**
Use dimensions to convey different information efficiently.

Example: Damage numbers
- Number = amount
- Color = type (red/blue/purple)
- Size = critical or normal
- Font = source (player/ally/DoT)

**Benefit:** Efficient use of space
**Cost:** Requires player learning

### Application Examples

**Good channel/dimension use:**
- Health in top-left (consistent location)
- Critical info uses multiple dimensions (redundant encoding)
- Related info grouped spatially
- Visual hierarchy matches importance

**Poor channel/dimension use:**
- Inconsistent placement
- Critical info only in one dimension (single point of failure)
- Unrelated info grouped together
- Equal visual weight for unequal importance

### Design Responses

**Improving information architecture:**
- Create visual mockup showing all channels
- Document what each dimension means
- Test with color-blind simulations
- Verify critical info visible in stressful moments
- Use standard positions for standard info (follow genre conventions)

---

## Lens #67: The Lens of Modes

**Purpose:** Design interface modes that enhance rather than confuse.

**When to use:**
- Adding new interface modes
- When players report confusion
- Designing mode transitions
- Reviewing modal complexity

### Definition

**Mode:** A change in one of the six interface mappings. When a mode changes, the same input may produce different output, or the same game state may be displayed differently.

### Mode Examples

- Combat mode vs exploration mode (thumbstick changes from navigate to strafe)
- Build mode vs play mode (Fortnite - different actions available)
- Aiming mode vs hip-fire mode (zoom changes control sensitivity)
- Inventory screen vs gameplay (pause and show menu)

### Core Questions

1. **What modes do I need in my game? Why?**
   - Justify each mode's existence
   - Could functionality be available without mode change?
   - Is complexity worthwhile?

2. **Can any modes be collapsed or combined?**
   - Reduce mode count where possible
   - Each mode is cognitive load
   - Simpler is better (if functionality preserved)

3. **Are any of the modes overlapping? If so, can I put them on different input channels?**
   - Overlapping modes = confusion
   - Example: If aiming mode and build mode both use triggers, problems arise
   - Solution: Use different buttons, or make modes mutually exclusive

4. **When the game changes modes, how does the player know that? Can the game communicate the mode change in more than one way?**
   - Critical question for usability
   - Multiple indicators better than one
   - See "Mode Tip #3" below

### Three Essential Mode Tips

#### **Tip #1: Use as Few Modes as Possible**
- Each mode is something to learn
- More modes = more confusion potential
- Only add modes when benefit outweighs cost

#### **Tip #2: Avoid Overlapping Modes**
- Don't let modes fight for same input channels
- Make modes mutually exclusive, OR
- Put modes on different input channels

**Bad example:**
- Walk mode (thumbstick navigates)
- Throw mode (thumbstick aims)
- Drive mode (thumbstick steers)
- What if player switches to throw mode while driving?

**Good example:**
- Thumbstick always navigates/aims/steers (context-dependent but not modal)
- OR different buttons for walk vs drive vs throw

#### **Tip #3: Make Different Modes Look as Different as Possible**
If players don't know what mode they're in, they'll be confused and frustrated.

**Ways to distinguish modes:**
- Change large visible elements on screen
- Change avatar action (swimming vs running)
- Change on-screen data (new HUD layout)
- Change camera perspective (first-person vs third-person)
- Use distinct audio (music change, ambient sound change)
- Color shift (desaturate when paused, blue tint underwater)

### Mode Communication Techniques

**Visual:**
- HUD layout change (new buttons appear)
- Screen overlay (pause screen, scope overlay)
- Character state change (weapon drawn, crouching)
- Camera change (zoom, angle)
- Color grading (underwater = blue, night vision = green)
- Border effects (vignette, frame)

**Audio:**
- Mode-specific music or music layer
- Distinct ambient sound (underwater muffle)
- Audio filter change (low-pass when damaged)
- Mode transition sound (whoosh, click)

**Haptic:**
- Mode-specific rumble pattern
- Adaptive trigger resistance change (PS5)

**Multi-channel (best):**
- Combine several of the above for unmistakable feedback

### Application Examples

**Good mode design:**
- Grand Theft Auto driving - clearly different camera, HUD, controls
- Halo zoom mode - obvious scope overlay, sound change
- RPG battle mode - distinct screen layout, music, turn system
- Zelda inventory - full screen pause, different navigation

**Poor mode design:**
- vi text editor - no indication of insert vs command mode
- Games where "stealth mode" looks almost identical to normal
- Subtle UI changes that don't catch attention
- Modes that look different but same controls (or vice versa)

### Design Responses

**Improving mode clarity:**
1. Audit all modes in game
2. For each mode, list visual/audio/haptic differences
3. If differences are subtle, make them more prominent
4. Test with users: "What mode are you in now?"
5. If they're confused, add more distinguishing features

**Reducing mode complexity:**
1. List all modes
2. Try to eliminate unnecessary modes
3. Combine similar modes
4. Consider context-sensitive actions instead (same button does different things based on context, but it's not a separate "mode")

---

## Lens #67½: The Lens of Metaphor

**Purpose:** Use familiar metaphors to make unfamiliar interfaces understandable.

**When to use:**
- Introducing novel interface concepts
- Teaching complex systems
- Creating thematic coherence
- Reducing learning curve

### Definition

**Interface metaphor:** Making a virtual interface element resemble a real-world object or concept that players already understand.

**Purpose:** Transfer understanding from familiar to unfamiliar. "This works like X, which you already know."

### Core Questions

1. **Is my interface already a metaphor for something else?**
   - Often interfaces use metaphors unconsciously
   - Example: "Folder" for file organization
   - Example: "Backpack" for inventory
   - Identify implicit metaphors

2. **If it is a metaphor, am I making the most of that metaphor? Or is the metaphor getting in the way?**
   - Does it help understanding or limit functionality?
   - Are you consistent with the metaphor?
   - Example: If inventory is a backpack, does it have limited space (consistent) or infinite space (breaks metaphor)?

3. **If it isn't a metaphor, would it be more intuitive if it were?**
   - Could abstract interface benefit from metaphor?
   - What real-world object is similar?
   - Would metaphor help or complicate?

### Effective Metaphors

**Characteristics of good metaphors:**
- Familiar to target audience
- Consistent internal rules
- Reinforced visually/aurally
- Teach, don't just decorate
- Don't overly constrain functionality

**Examples:**

**Inventory as Container:**
- Backpack, briefcase, bag
- Teaches: Limited space, organization needed
- Consistent rules: Weight, volume, compartments

**Map as Paper Map:**
- Unfolds, written on, gets more detailed
- Teaches: Exploration reveals info, fog of war
- Consistent: Can mark locations, limited detail

**Health as Hearts/Vitality:**
- Discrete chunks vs continuous bar
- Teaches: Different systems (chunks vs regeneration)
- Consistent: Find heart pieces to increase max

**Skill Tree as Biological Tree:**
- Grows from roots to branches
- Teaches: Prerequisites, specialization paths
- Consistent: Can't reach top without climbing from bottom

### When Metaphors Fail

**Don't use metaphor if:**
- Target audience unfamiliar with reference
- Metaphor limits needed functionality
- It's decorative but doesn't aid understanding
- It makes simple things complicated

**Bad metaphor example:**
- Mac "trash can" for ejecting disks
- Metaphor: Throwing away = deleting
- Problem: Ejecting ≠ Deleting
- Result: Confusing, metaphor broke down

### Application Examples

**Good metaphors in games:**
- Dead Space holographic inventory (sci-fi tech metaphor)
- Portal test chambers (scientific testing metaphor)
- Papers Please documents (bureaucracy metaphor)
- Return of the Obra Dinn inference book (ship's log metaphor)

**Poor metaphors:**
- Overly literal (game book UI that requires page turning - tedious)
- Inconsistent (sometimes follows rules, sometimes doesn't)
- Obscure (references players don't understand)

### Design Responses

**Creating effective metaphor:**
1. Identify what needs explanation
2. Find familiar real-world analog
3. Design interface to resemble analog visually
4. Ensure consistent behavior with metaphor
5. Test: Do new players understand it faster?

**When metaphor doesn't help:**
- Use abstract UI focused on function
- Don't force metaphor for its own sake
- Clean, minimal design can be clearer than poor metaphor

---

## Using These Lenses in Practice

### When to Apply Each Lens

**Early Design Phase:**
- Lens #60: Physical Interface (choosing/designing hardware)
- Lens #66: Channels and Dimensions (information architecture)
- Lens #67½: Metaphor (conceptual foundation)

**Active Development:**
- Lens #59: Control (continuous evaluation)
- Lens #61: Virtual Interface (HUD design)
- Lens #63: Feedback (every interaction)
- Lens #67: Modes (when adding modes)

**Polish Phase:**
- Lens #62: Transparency (overall coherence)
- Lens #64: Juiciness (feel and satisfaction)
- Lens #65: Primality (intuitive power)

**Constant Evaluation:**
- Lens #59: Control (does it feel good?)
- Lens #62: Transparency (can players forget it's there?)
- Lens #63: Feedback (is information clear?)

### Lens Application Workflow

1. **Identify interface problem or design question**
2. **Select relevant lens(es)** from above
3. **Ask all questions from that lens**
4. **Document answers and observations**
5. **Generate design responses**
6. **Implement changes**
7. **Test with players**
8. **Iterate based on results**

### Combining Lenses

Use multiple lenses together for comprehensive analysis:

**Example: Designing combat feedback**
- Lens #63 (Feedback): What do players need to know?
- Lens #64 (Juiciness): How can we make hits feel satisfying?
- Lens #66 (Channels): What channels should show damage?
- Lens #59 (Control): Do players feel powerful when attacking?

**Example: Creating new interface mode**
- Lens #67 (Modes): Is this mode necessary?
- Lens #62 (Transparency): Will players understand the mode?
- Lens #63 (Feedback): How do we communicate mode change?
- Lens #66 (Channels): What changes visually/aurally?

---

## Quick Reference Chart

| Lens | Focus | Key Question | When to Use |
|------|-------|--------------|-------------|
| #59 Control | Player agency | Do players feel in control? | Always |
| #60 Physical | Hardware | What do players touch? | Platform choice |
| #61 Virtual | HUD/UI | What info isn't obvious? | UI design |
| #62 Transparency | Invisibility | Can interface disappear? | Polish |
| #63 Feedback | Information | What do players need to know now? | Every moment |
| #64 Juiciness | Satisfaction | Is interaction continuously rewarding? | Feel/polish |
| #65 Primality | Intuition | What's naturally understandable? | Core controls |
| #66 Channels | Organization | How is info displayed? | Architecture |
| #67 Modes | State changes | Are modes clear and minimal? | Adding modes |
| #67½ Metaphor | Familiarity | What real thing is this like? | Novel concepts |

---

*Use these lenses alongside the systematic processes in SKILL.md, interface-architecture-guide.md, feedback-and-juiciness-guide.md, information-design-guide.md, and ten-interface-tips.md for comprehensive interface design.*