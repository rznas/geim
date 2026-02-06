# Information Design Guide

## The Four-Step Process for Organizing Game Information

Game interfaces must communicate large amounts of information clearly and efficiently. This guide walks you through the systematic process of mapping information to channels and dimensions.

## Step 1: List and Prioritize Information

Begin by making a comprehensive list of all information players need, then organize by importance and frequency.

### Example: Action RPG Information List

**Unprioritized list:**
1. Player health
2. Player mana/energy
3. Experience points
4. Level number
5. Quest objectives
6. Current weapon
7. Current armor
8. Inventory contents
9. Mini-map
10. Enemy health
11. Damage numbers
12. Status effects (buffs/debuffs)
13. Gold/currency
14. Skills/abilities available
15. Skill cooldowns
16. Party members' health
17. Compass/direction indicator
18. Interaction prompts
19. Tutorial hints
20. Achievement notifications

### Prioritization Framework

Sort information into three tiers based on how often players need it:

**Tier 1: Need every moment** (Critical gameplay information)
- Information required for moment-to-moment decision making
- Must be visible at all times during active gameplay
- Absence causes immediate confusion or failure

**Tier 2: Need occasionally while playing** (Contextual information)
- Information players glance at periodically
- Needed for tactical decisions but not split-second reactions
- Can be summarized or simplified in main view

**Tier 3: Need only when requested** (Deep information)
- Detailed information accessed intentionally
- Can pause or slow gameplay to review
- Acceptable to hide in submenus

### Example: Action RPG Prioritized

**Tier 1 - Need every moment:**
- Immediate surroundings (enemies, obstacles, terrain)
- Player position and facing
- Interaction prompts (context-sensitive)

**Tier 2 - Need occasionally while playing:**
- Player health
- Player mana/energy
- Current weapon/abilities
- Enemy health (when targeting)
- Mini-map
- Status effects
- Skill cooldowns
- Gold/currency
- Quest objectives (summary)
- Party members' health
- Damage numbers

**Tier 3 - Need only when requested:**
- Full inventory
- Detailed stats
- Skill tree
- Quest log (full details)
- Map (full screen)
- Character sheet
- Settings/options
- Achievement list

### Prioritization Questions

For each piece of information, ask:

1. **Frequency:** How often does the player need this?
   - Every second? → Tier 1
   - Every few seconds? → Tier 2
   - Only when they ask? → Tier 3

2. **Urgency:** What happens if the player doesn't see it immediately?
   - Character dies / immediate failure? → Tier 1
   - Miss opportunity / tactical disadvantage? → Tier 2
   - Nothing urgent, just informational? → Tier 3

3. **Decision weight:** What kind of decisions does it inform?
   - Split-second reactions? → Tier 1
   - Tactical choices during combat? → Tier 2
   - Strategic planning between encounters? → Tier 3

## Step 2: List Available Channels

A **channel** is a distinct way to communicate a stream of data to the player. Different games and platforms offer different channels.

### Common Visual Channels

**Screen regions:**
- Top-left corner
- Top-center
- Top-right corner
- Bottom-left corner
- Bottom-center
- Bottom-right corner
- Center screen
- Screen edges/borders
- Full-screen overlay (modal)

**In-world elements:**
- Player avatar/character
- Enemy characters
- Environmental objects
- Floating text/numbers
- Light sources
- Particle effects
- World geometry changes

**UI overlays:**
- Fixed HUD elements
- Floating/diegetic UI
- World-space UI
- Cursor/reticle

### Common Audio Channels

- Background music
- Music transitions/stingers
- Character voices
- Sound effects (combat)
- Sound effects (environmental)
- Sound effects (UI)
- Spatial audio cues
- Audio filters (health warning, underwater)

### Common Haptic Channels

- Controller rumble (intensity)
- Controller rumble (pattern)
- Adaptive trigger resistance (PS5)
- Haptic feedback patterns

### Platform-Specific Channels

**Mobile/Touch:**
- Touch gestures
- Device tilt/orientation
- Notifications
- Vibration patterns

**VR:**
- Hand controllers (each is a channel)
- Spatial audio (enhanced)
- Room-scale position
- Eye tracking (advanced)
- Full body tracking

**Console:**
- Controller light bar
- Button icons
- D-pad/face buttons
- Trigger pressure

### Example: Action RPG Channel List

**Primary channels:**
1. Main gameplay viewport (center 70% of screen)
2. Top-left HUD region
3. Top-right HUD region
4. Bottom-left HUD region
5. Bottom-right HUD region
6. Center-screen temporary displays
7. Player character appearance
8. Enemy appearance
9. Background music
10. Combat sound effects
11. UI sound effects
12. Controller vibration
13. Full-screen overlay (for menus)
14. Mini-map (dedicated region)

### Channel Selection Guidelines

**Do:**
- ✅ Use consistent locations for similar information across the game
- ✅ Reserve center screen for most critical/temporary information
- ✅ Use multiple channels for reinforcement (visual + audio + haptic)
- ✅ Match channel importance to information importance

**Don't:**
- ❌ Overcrowd any single region
- ❌ Put critical info in peripheral vision areas (edges/corners)
- ❌ Change channel meanings between game modes
- ❌ Use center screen for persistent information (blocks gameplay view)

## Step 3: Map Information to Channels

Now match each piece of information to the best channel(s). This is part art, part science, requiring iteration and testing.

### Mapping Principles

**Principle 1: Match urgency to visibility**
- Tier 1 (every moment) → Center of screen or in-world
- Tier 2 (occasional) → Screen corners/edges, always visible
- Tier 3 (on request) → Modal overlays, hidden by default

**Principle 2: Use proximity for related information**
- Group related data in same screen region
- Use consistent spacing and alignment
- Create visual "zones" for different info types

**Principle 3: Reinforce with multiple channels**
- Critical events should use 2-3 channels simultaneously
- Example: Taking damage = screen flash (visual) + sound (audio) + rumble (haptic)

**Principle 4: Reserve prime real estate**
- Center screen is most valuable
- Use sparingly for temporary critical information
- Keep it clear for gameplay most of the time

**Principle 5: Respect genre conventions**
- FPS: Health bottom-left, ammo bottom-right
- Fighting games: Health bars at top
- RPGs: Character portrait with stats in corner
- Breaking conventions requires strong justification

### Example: Action RPG Information Mapping

**Main gameplay viewport:**
- Player character (showing equipped gear)
- Enemies (showing aggro state)
- Environment
- Interaction prompts (when near interactable)
- Damage numbers (floating, temporary)

**Top-left corner:**
- Player portrait
- Health bar (horizontal, prominent)
- Mana bar (horizontal, under health)
- Level number (small, corner)
- Experience bar (thin, bottom of portrait)

**Top-right corner:**
- Mini-map
- Quest tracker (3 current objectives)
- Compass indicators (N/S/E/W markers)

**Bottom-left corner:**
- Gold counter (small icon + number)
- Status effect icons (scrolling row)

**Bottom-right corner:**
- Equipped weapon icon (large)
- Weapon durability (circular gauge)
- Skill hotbar (4 skill icons)
- Skill cooldown timers (overlays on icons)

**Center-screen temporary:**
- Level up announcement
- Achievement unlocked
- Boss health bar (top-center during boss fights)
- Critical warnings

**Audio mapping:**
- Background music → Current area mood
- Music stinger → Level up, achievement
- Combat SFX → Hit sounds, ability sounds
- UI SFX → Menu navigation, item pickup
- Voice → Character grunts, NPC dialogue

**Haptic mapping:**
- Light rumble → Walking over rough terrain
- Medium rumble → Taking damage
- Heavy rumble → Heavy attack landing
- Pulsing rumble → Low health warning

### Creating the Mapping Document

Create a visual mockup or written specification:

```
[ACTION RPG INTERFACE MAP]

┌─────────────────────────────────────────────────────┐
│ [Portrait]  [HEALTH BAR========]      [MINI-MAP]   │
│ [  Lvl 12]  [MANA BAR==========]      Quest:       │
│  ────────────                         • Kill 5     │
│ [XP ▓▓▓▓░░░]                          • Find Key   │
│                                                      │
│                                                      │
│          [         GAMEPLAY AREA           ]        │
│          [     Player Character Here      ]        │
│          [     Enemies visible here        ]        │
│          [  Damage numbers float here     ]        │
│                                                      │
│                                                      │
│ [Gold: 1,250]                      [⚔ SWORD]       │
│ [Status: 🛡️⚡]                     [Durability: ▓▓] │
│                                     [🔥][⚔][🏹][🛡]│
└─────────────────────────────────────────────────────┘

TEMP CENTER: Boss HP bar appears here during boss fights
TEMP CENTER: "LEVEL UP!" announcement fades in/out
```

## Step 4: Review Use of Dimensions

Each channel can have multiple **dimensions** that convey information. Dimensions are the properties that can vary within a channel.

### Common Dimensions by Channel Type

**Visual channels:**
- Number/text
- Color
- Size
- Font/style
- Position
- Shape
- Animation/movement
- Transparency/opacity
- Rotation
- Fill amount (bar, circle)
- Glow/highlight
- Border/outline

**Audio channels:**
- Volume
- Pitch
- Tempo
- Timbre (instrument/sound type)
- Spatial position (stereo/surround)
- Reverb/echo
- Filter (low-pass, high-pass)

**Haptic channels:**
- Intensity/amplitude
- Duration
- Frequency/pattern
- Location (if multiple haptic points)

### Two Approaches to Using Dimensions

#### Approach 1: Reinforcement (Redundant Encoding)

Use multiple dimensions to convey the **same** information more clearly.

**Example: Enemy Health Display**
- Dimension 1 (Number): "450/1000 HP"
- Dimension 2 (Color): Green (high) → Yellow (medium) → Red (low)
- Dimension 3 (Size): Health bar length proportional to HP
- Dimension 4 (Animation): Pulsing when low

**Benefits:**
- Very clear communication
- Accessible (color-blind players can see size)
- Dramatic/juicy feel
- Hard to misunderstand

**Drawbacks:**
- Uses "bandwidth" for single piece of info
- Can feel redundant/obvious

**When to use:**
- Critical information (player health)
- Information that must be understood quickly
- When accessibility is important

#### Approach 2: Multiplexing (Independent Encoding)

Use multiple dimensions to convey **different** information efficiently.

**Example: Damage Number Display**
- Dimension 1 (Number): Amount of damage (50, 100, 250)
- Dimension 2 (Color): Damage type (Red = physical, Blue = magic, Purple = poison)
- Dimension 3 (Size): Indicates critical hit (large = crit, small = normal)
- Dimension 4 (Font): Indicates source (Bold = player damage, Italic = ally damage, Regular = DoT)

**Benefits:**
- Very efficient use of screen space
- Conveys multiple facts in one element
- Elegant when mastered

**Drawbacks:**
- Requires player education
- Can be confusing initially
- Players may miss subtle distinctions

**When to use:**
- When screen space is limited
- For power users / experienced players
- When information is important but not critical
- When you can gradually teach the system

### Dimension Design Guidelines

**Clarity principles:**
1. **High contrast for critical info** - Make differences obvious (not subtle)
2. **Consistent meaning** - Same dimension = same meaning everywhere
3. **Limited palette** - Don't use 10 different colors, use 3-5 with clear meanings
4. **Respect accessibility** - Don't rely on color alone (use shape, size, icon too)

**Example: Health Bar Dimensions**

**Good: Clear reinforcement**
```
FULL HEALTH:  [████████████] 100%  (Green, large, no animation)
MED HEALTH:   [█████░░░░░░░]  50%  (Yellow, medium, slow pulse)
LOW HEALTH:   [██░░░░░░░░░░]  20%  (Red, small, fast pulse + sound)
```

**Bad: Confusing multiplexing**
```
Player HP:  [████████] (Blue bar)
Shield HP:  [████░░░░] (Blue bar with white outline)
Armor HP:   [███░░░░░] (Blue bar with thicker white outline)
```
→ Too similar, hard to distinguish quickly

**Better: Clear multiplexing**
```
Player HP:  [████████] (Red bar, heart icon)
Shield HP:  [████░░░░] (Blue bar, shield icon)
Armor HP:   [███░░░░░] (Gray bar, armor icon)
```
→ Color + icon makes each distinct

### Dimension Checklist

For each channel in your interface, document:

1. **What information is shown here?**
2. **What dimensions are available?**
   - List all properties that could vary (color, size, position, etc.)
3. **How will I use each dimension?**
   - As reinforcement (same info multiple ways)?
   - As multiplexing (different info per dimension)?
4. **Is this clear or confusing?**
   - Can playtesters understand it without explanation?
5. **Does it respect accessibility?**
   - Can color-blind players understand it?
   - Is text readable?
   - Are audio cues redundant with visual?

### Example: Detailed Dimension Map

**Channel: Damage Numbers (floating text)**

| Dimension | Values | Meaning | Purpose |
|-----------|--------|---------|---------|
| Number | 1-9999 | Damage amount | Core information |
| Color | Red, Blue, Green, Purple | Physical, Magic, Healing, Poison | Multiplexing |
| Size | Small, Normal, Large | Normal, Critical, Massive Crit | Reinforcement + Multiplexing |
| Font Weight | Regular, Bold | Player damage, Boss damage | Multiplexing |
| Animation | Float up, Float and fade, Explode | Normal, Critical, Extreme | Reinforcement |
| Sound | Soft hit, Hard hit, Crit sound | Normal, Critical | Reinforcement |

**Teaching strategy:**
- Tutorial explicitly shows: "Red numbers = physical damage"
- First critical hit triggers slow-mo with text: "CRITICAL HIT!"
- Players naturally learn the system through play

## Practical Exercise: Designing Your Interface

### Step-by-Step Worksheet

**1. List all information** (brainstorm, don't filter yet)
- [ ] List 15-30 pieces of information players need
- [ ] Include HUD data, world state, feedback, etc.

**2. Prioritize into tiers**
- [ ] Tier 1 (every moment): ____ items
- [ ] Tier 2 (occasional): ____ items
- [ ] Tier 3 (on request): ____ items

**3. List your channels**
- [ ] Screen regions: ____ channels
- [ ] Audio channels: ____ channels
- [ ] Haptic channels: ____ channels
- [ ] Other: ____ channels

**4. Create mapping**
- [ ] Create visual mockup or ASCII diagram
- [ ] Map each Tier 1 item to channel(s)
- [ ] Map each Tier 2 item to channel(s)
- [ ] Map each Tier 3 item to channel(s)

**5. Design dimensions**
- [ ] For each channel, list available dimensions
- [ ] Decide: reinforcement or multiplexing per dimension
- [ ] Document the meaning of each dimensional value
- [ ] Check for clarity and accessibility

**6. Test and iterate**
- [ ] Create paper prototype
- [ ] Test with users
- [ ] Identify confusion points
- [ ] Refine and test again

## Common Pitfalls and Solutions

### Pitfall 1: Information Overload
**Problem:** Too many HUD elements, screen feels cluttered.
**Solution:**
- Move Tier 3 info to submenus
- Use contextual display (hide when not needed)
- Combine related info into groups
- Use transparency/fade for less critical elements

### Pitfall 2: Can't Find Critical Info
**Problem:** Players miss important information during gameplay.
**Solution:**
- Move info closer to center or to consistent location
- Increase size or contrast
- Add reinforcing channels (sound, animation)
- Use attention-grabbing cues (flash, pulse)

### Pitfall 3: Inconsistent Placement
**Problem:** Similar info in different locations across game modes.
**Solution:**
- Create style guide for HUD layout
- Use same regions for same types of info everywhere
- Only change layout when switching major modes (gameplay vs menu)

### Pitfall 4: Inaccessible Design
**Problem:** Color-blind players or players with audio/visual impairments struggle.
**Solution:**
- Never use color alone (add icons, shapes, text)
- Provide subtitle/caption options
- Allow HUD scaling and opacity adjustment
- Test with accessibility consultants

### Pitfall 5: Genre Confusion
**Problem:** Breaking conventions frustrates experienced players.
**Solution:**
- Research genre standards (where do players expect health?)
- Innovate deliberately, not accidentally
- If breaking convention, have strong reason and clear communication

## Integration with Interface Lenses

After completing this four-step process, review your information design with:

- **Lens #66: Channels and Dimensions** - Is information mapped thoughtfully?
- **Lens #62: Transparency** - Does UI become invisible with practice?
- **Lens #63: Feedback** - Does every action have clear feedback?
- **Lens #59: Control** - Does information help players feel in control?

---

*See SKILL.md for integration with complete interface design workflow*