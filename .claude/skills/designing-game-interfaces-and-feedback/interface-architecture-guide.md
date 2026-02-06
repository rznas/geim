# Interface Architecture Guide

## Understanding the Interface Layer Model

The game interface is not a single entity but a complex system with multiple layers. Understanding this architecture helps you diagnose problems and design better systems.

## The Three-Layer Model

```
[PLAYER] ←→ [PHYSICAL INTERFACE] ←→ [VIRTUAL INTERFACE] ←→ [GAME WORLD]
```

### Layer 1: Player
- The player's imagination and consciousness
- Mental model of the game
- Intentions and desires
- Perception and interpretation

### Layer 2: Physical Interface
**Physical Input** - What the player physically manipulates:
- Game controllers (gamepad, joystick)
- Keyboard and mouse
- Touch screens
- Motion sensors
- VR controllers
- Voice input

**Physical Output** - What physically delivers information to the player:
- Display screens
- Speakers/headphones
- Controller vibration/haptics
- VR headsets
- Lights (on controller or device)

### Layer 3: Virtual Interface
The conceptual layer between physical I/O and game world:
- HUD elements (health bars, score displays, minimaps)
- Menus and UI panels
- Virtual buttons and sliders
- Cursor or reticle
- Damage numbers floating in 3D space
- Inventory screens
- Dialogue boxes
- Tutorial pop-ups

**Note:** Some games have minimal virtual interface (board games, simple action games), while others have dense virtual layers (strategy games, RPGs).

### Layer 4: Game World
- The actual game state and mechanics
- Character positions and stats
- Environmental objects
- Game rules and systems
- AI behaviors
- Physics simulations

## The Six Critical Mappings

Every interface involves six transformations of data. Each arrow represents code that maps input/output between layers:

```
                Physical           Virtual          Game
                Interface         Interface         World

Player ─────┐
            │ (7)
            ↓
         ┌──────┐
    ┌────│  1   │←───────────────────────┐
    │    └──────┘                        │
    ↓                                    │
┌────────┐         ┌────────┐      ┌────────┐
│Physical│────3───→│Virtual │──4──→│  Game  │
│ Input  │         │Interface      │  World │
└────────┘         └────────┘      └────────┘
    ↑                   ↑                │
    │                   │                │
    │(Player's      (Player's            ↓
    │ Actions)       Perception)     ┌────────┐
    │                   │            │  Game  │
    │                   5←───────────│  State │
    │                   │            └────────┘
    │                   │                │
    │                   ↓                │
    │              ┌────────┐            │
    │              │Virtual │←──────5────┘
    │              │Display │
    │              └────────┘
    │                   │
    │                   6
    │                   ↓
    │              ┌────────┐
    └──────2───────│Physical│
                   │ Output │
                   └────────┘
                        │
                        ↓ (8)
                    Player
                   Perceives
```

### Mapping #1: Physical Input → World
**What it does:** Translates physical actions directly into game world changes.

**Examples:**
- Thumbstick pressure → Avatar running speed
- How hard you press affects acceleration
- Double-tap for dash movement
- Hold button for continuous action vs. tap for single action

**Design questions:**
- What physical gesture maps to each action?
- Is the mapping direct (1:1) or complex (requires timing, combos)?
- Does the input feel responsive?
- Are there edge cases (corners, high speed) where mapping breaks down?

**Common patterns:**
- **Direct mapping:** Button press = jump immediately
- **Analog mapping:** Trigger pressure = variable speed
- **Combo mapping:** Sequence of inputs = special move
- **Context-sensitive:** Same button does different things based on game state

### Mapping #2: World → Physical Output
**What it does:** Determines what parts of the game world are shown/heard through physical devices.

**Examples:**
- Camera positioning (what part of world is visible)
- Audio spatialization (3D sound positioning)
- Screen resolution and field of view
- Haptic feedback intensity based on in-game events

**Design questions:**
- Can players see everything they need to see?
- Is the camera angle optimal for the gameplay?
- Does audio clearly indicate direction and distance?
- When should haptic feedback trigger?

**Common patterns:**
- **Fixed camera:** Classic 2D games, strategy games
- **Following camera:** 3D platformers, adventure games
- **First-person camera:** FPS, immersive sims
- **Free camera:** RTS, simulation games
- **Audio mixing:** Important sounds prioritized over ambient

### Mapping #3: Physical Input → Virtual Interface
**What it does:** Physical actions that manipulate UI elements (not the game world directly).

**Examples:**
- Mouse click on button
- Touch drag on slider
- D-pad navigation through menu
- Scroll wheel on inventory list
- Pinch-to-zoom on map

**Design questions:**
- Is menu navigation intuitive for the physical input device?
- Can players easily hit/select UI elements?
- Are there shortcuts for frequent actions?
- Does the UI respond to platform-specific gestures (swipe, pinch)?

**Common patterns:**
- **Point-and-click:** Mouse-based UIs
- **D-pad navigation:** Console menu systems
- **Touch gestures:** Mobile interfaces
- **Keyboard shortcuts:** PC power-user features

### Mapping #4: Virtual Interface → World
**What it does:** Virtual UI interactions that affect the game world.

**Examples:**
- Select item from inventory → Equip it to character
- Click on map location → Character pathfinds there
- Drag spell icon onto enemy → Cast spell
- Confirm dialogue choice → Trigger story branch

**Design questions:**
- Is there delay between UI action and world response?
- Are UI actions reversible?
- Does the UI give feedback about what will happen?
- Can players trigger critical actions by accident?

**Common patterns:**
- **Immediate effect:** Selection instantly affects game
- **Queued actions:** Commands queue up for execution
- **Confirmation required:** Dangerous actions need confirmation
- **Preview mode:** Show effect before committing

### Mapping #5: World → Virtual Interface
**What it does:** Game state changes that update UI displays.

**Examples:**
- Character takes damage → Health bar decreases
- Pick up coins → Score counter increases
- Enter combat → Battle UI appears
- Timer reaches zero → Warning indicator flashes

**Design questions:**
- What information from the world needs to be displayed?
- When should the UI update (continuously, discretely, on events)?
- How prominently should each piece of information be shown?
- Should UI changes have animations/transitions?

**Common patterns:**
- **Continuous updates:** Health bars, timer displays
- **Event-driven:** Pop-ups, notifications, mode changes
- **Threshold-based:** Warnings when values reach critical levels
- **Contextual display:** UI appears only when relevant

### Mapping #6: Virtual Interface → Physical Output
**What it does:** Rendering the virtual UI to screen and audio devices.

**Examples:**
- Health bar rendered at top-left of screen
- Menu buttons drawn with specific colors and fonts
- UI sound effects (button clicks, warning beeps)
- UI animations (smooth transitions, particle effects)

**Design questions:**
- Where on screen should each UI element go?
- What visual style matches the game theme?
- Are UI elements readable in all situations?
- Do UI sounds enhance or annoy?

**Common patterns:**
- **Diegetic UI:** UI exists in game world (holographic displays in sci-fi)
- **Non-diegetic UI:** Overlay on top of game view
- **Spatial UI:** UI elements float in 3D space
- **Meta UI:** Full-screen overlays (pause menus, inventories)

### Mappings #7 and #8: Player's Mental Projection
**What they do:** The player's consciousness projection into and out of the game.

**Mapping #7: Player → Physical Interface**
The player's intentions and mental model drive their physical actions. Players think "I want to jump over that gap" not "I will press the A button."

**Mapping #8: Physical Output → Player**
The player's perception and interpretation of feedback. Players see "my character is low on health" not "the red bar in the corner is small."

**Design implications:**
- When players describe gameplay, they say "I ran" not "I pushed the thumbstick"
- Interface transparency allows this mental projection to work
- Breaking this projection (confusing controls, unclear feedback) breaks immersion
- Good interface design makes mappings 7 and 8 feel natural and invisible

## Using This Model for Diagnosis

When playtesting reveals interface problems, identify which mapping is failing:

**Problem:** "Players don't realize they're taking damage"
- **Diagnosis:** Mapping #5 (World → Virtual Interface) or #6 (Virtual Interface → Physical Output) is weak
- **Solution:** Add stronger damage feedback (screen flash, sound, controller rumble)

**Problem:** "Players keep hitting the wrong button"
- **Diagnosis:** Mapping #1 (Physical Input → World) doesn't match player expectations
- **Solution:** Remap buttons to match genre conventions or add customization

**Problem:** "Players can't find the information they need"
- **Diagnosis:** Mapping #5 or #6 - information is missing or poorly placed
- **Solution:** Add UI element or improve information architecture

**Problem:** "Menu is hard to navigate with controller"
- **Diagnosis:** Mapping #3 (Physical Input → Virtual Interface) is awkward
- **Solution:** Redesign menu layout for D-pad/analog navigation

**Problem:** "Players confused about what their character can see"
- **Diagnosis:** Mapping #2 (World → Physical Output) - camera issues
- **Solution:** Adjust camera angle, add indicators, improve visibility

## Design Principles by Mapping

### For Mappings #1 and #3 (Input Mappings)
- Respond within 0.1 seconds or players feel lag
- Match player expectations from genre conventions
- Provide button remapping when possible
- Avoid accidental inputs (confirmation for dangerous actions)
- Consider physical comfort (avoid awkward hand positions)

### For Mappings #2 and #6 (Output Mappings)
- Ensure critical information is always visible
- Use multiple channels (visual + audio + haptic)
- Scale UI appropriately for viewing distance
- Test readability in all lighting conditions
- Respect platform conventions (home button, pause behavior)

### For Mappings #4 and #5 (Virtual-World Bridge)
- Keep delay minimal between UI interaction and world response
- Provide clear feedback that action was registered
- Preview effects when possible
- Allow undo for non-critical actions
- Update UI immediately when world state changes

## Example: Analyzing Zelda's Interface

**Physical Input (NES controller):**
- D-pad, A button, B button, Start, Select

**Virtual Interface:**
- Top dashboard (health, rubies, keys, bombs)
- Current weapon/item indicators
- Minimap (shows distant surroundings)
- Inventory subscreen (accessed via Select)

**Mapping #1 (D-pad → Link's movement):**
- 8-directional movement
- Smooth, responsive feel
- No acceleration/deceleration complexity

**Mapping #3 (Select button → Inventory screen):**
- Mode change from gameplay to inventory
- D-pad now navigates menu instead of character

**Mapping #4 (Select weapon in inventory → Equipped to B button):**
- Selection immediately changes Link's B button weapon

**Mapping #5 (Collect rupees → Rupee counter updates):**
- Immediate visual feedback
- Score increases with satisfying sound

**Mapping #6 (Health → Heart containers displayed):**
- Easily readable at a glance
- Takes up significant screen space (deemed important)
- Visual reinforcement (full hearts vs. empty)

**Why it works:**
- All six mappings are clear and consistent
- Mode changes are obvious (entirely different screen)
- Critical info always visible
- Minimal lag between input and response
- Physical interface well-suited to gameplay needs

## Design Exercise

For your game, document all six mappings:

1. **Physical Input → World:** List every physical input and its direct world effect
2. **World → Physical Output:** Define camera behavior and audio mixing rules
3. **Physical Input → Virtual Interface:** Describe how players navigate menus
4. **Virtual Interface → World:** List UI interactions that affect gameplay
5. **World → Virtual Interface:** Specify when/how UI elements update
6. **Virtual Interface → Physical Output:** Design screen layout and rendering

This documentation becomes your interface specification and helps identify gaps or inconsistencies before implementation.

---

*See SKILL.md for integration with other interface design tools and lenses*