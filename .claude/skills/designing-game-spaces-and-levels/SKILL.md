---
name: designing-game-spaces-and-levels
description: Design game levels, spaces, and environments using architectural principles, spatial organization patterns, and presence techniques. Use when creating level layouts, designing virtual architecture, building VR/AR environments, or structuring game worlds for any platform or genre.
---

# Designing Game Spaces and Levels

Design compelling game spaces and levels that create powerful player experiences through thoughtful spatial organization, architectural principles, and presence considerations.

## When to Use This Skill

- Creating level layouts for any game genre
- Designing virtual architecture and environments
- Building VR/AR experiences that require strong presence
- Structuring game worlds and spatial progression
- Solving spatial design problems (scale, navigation, pacing)
- Applying architectural principles to game design

## Core Principles

### Architecture's Purpose in Games

**The primary purpose of architecture is to control a person's experience.**

As a game designer, you are an architect of virtual spaces. Just like real architects:
- You create structures people must enter to use
- You cannot create experiences directly—you use indirect control
- You design structures whose only point is to engender experiences that make people happy

The key difference: Your spaces are virtual, giving you both freedom and challenges.

## Design Workflow

### Step 1: Define Functional Space First

Before any aesthetics, understand your space mechanically using **Lens #26: Functional Space**.

Ask yourself:
- Is the space discrete or continuous?
- How many dimensions does it have?
- What are the boundaries?
- Are there subspaces? How are they connected?
- Is there more than one useful way to model this space?

**Example:** A Monopoly board looks 2D but is functionally a 1D loop of 40 discrete points.

See [functional-space-modeling.md](functional-space-modeling.md) for detailed guidance on analyzing and modeling game spaces.

### Step 2: Choose Your Spatial Organization Pattern

Select an organizing principle for your game space. See [spatial-organization-patterns.md](spatial-organization-patterns.md) for the five common patterns:

1. **Linear** - Forward/back along a line (Super Mario Bros, Monopoly)
2. **Grid** - Squares, hexagons, or rectangles (Chess, Minecraft)
3. **Web** - Connected points with multiple paths (Zork, Trivial Pursuit)
4. **Points in Space** - Wandering between discrete locations (Final Fantasy, Animal Crossing)
5. **Divided Space** - Irregular sections like a real map (Risk, Civilization)

**Tip:** Patterns can be combined (Clue = grid + divided space; Baseball = linear + points in space)

### Step 3: Design Landmarks

**Critical:** Spaces need landmarks to be memorable and navigable.

Landmarks provide:
- Navigation cues (players know where they are)
- Visual interest and variety
- Memorable moments players talk about
- Points of orientation

**Anti-pattern:** Too much chaos is as monotonous as too much order. Every area described as "all different" is just as confusing as "all alike."

### Step 4: Remove Inner Contradictions

Use **Lens #92: Inner Contradiction** to ensure your space doesn't defeat its own purpose.

Ask:
- What is the purpose of my game?
- What are the purposes of each subsystem?
- Is there anything that contradicts these purposes?
- How can I change that?

**Example:** If your game is about exploration, but your level layout is confusing rather than intriguing, that's an inner contradiction.

### Step 5: Apply Alexander's Fifteen Properties

To give your space "the nameless quality" that feels special and alive, check it against Christopher Alexander's fifteen properties of living structures.

Use **Lens #93: The Nameless Quality** and ask:
- Does my design feel alive, or do parts feel dead?
- Which of the fifteen properties does my design have?
- Could it have more of them?
- Where does my design feel like myself?

**Quick reference:**
1. Levels of scale (telescoping goals, nested structures)
2. Strong centers (strong avatar, clear purpose)
3. Boundaries (territory, rules)
4. Alternating repetition (level/boss cycles, tension/release)
5. Positive space (balanced strategies, interlocked beauty)
6. Good shape (pleasing visual and spatial forms)
7. Local symmetries (internal symmetries, organic connections)
8. Deep interlock (elements that define each other)
9. Contrast (opponents, controllable vs. uncontrollable)
10. Gradients (challenge curves, probability distributions)
11. Roughness (handmade feeling, house rules)
12. Echoes (pleasing repetition, boss/minion similarities)
13. The void (hollow spaces around important moments)
14. Simplicity and inner calm (simple rules, emergent properties)
15. Not-separateness (well-connected elements)

See [alexander-fifteen-properties-guide.md](alexander-fifteen-properties-guide.md) for detailed explanations and game design applications of each property.

## Platform-Specific Considerations

### Virtual Architecture Peculiarities

Virtual spaces can be strange in ways impossible in reality:
- Huge amounts of "wasted" space
- Weird architectural features
- No relationship with outside environment
- Overlapping areas (physically impossible layouts)

**This is okay!** Human minds are weak at translating 3D spaces to 2D maps. We think relatively, not absolutely. What matters is how the space **feels** when the player is in it, not whether it has a realistic blueprint.

### Scale Management

**Know How Big** - Define your units clearly.

Common problems:
- **Eye height distortion:** First-person camera too high (>7 feet) or too low (<5 feet)
- **Missing scale cues:** No people, doorways, or familiar objects
- **Texture scaling:** Brick texture too large, floor tiles too small

**Solution:** Use familiar real-world units (feet or meters) for your game units. If your car is 30 feet long, you'll immediately know something's wrong.

### Third-Person Distortion

Third-person view makes normal rooms feel crowded. **Solution 4 (Max Payne approach):**
- Scale up the room
- Scale up furniture slightly
- Spread furniture out

This counteracts the distortion from the eyepoint being far from the body.

## VR/AR Presence Design

When designing for VR/AR, presence is paramount. A broken presence experience can destroy even good gameplay.

### Six Presence Breakers to Avoid

1. **Motion Sickness**
   - Keep framerate ≥60fps (90fps+ better)
   - Avoid virtual camera movement
   - If you must move camera, don't accelerate
   - Hide edges with vignettes
   - Avoid teleportation (breaks presence)
   - Never roll the horizon

2. **Counter-Intuitive Interactions**
   - Allow natural object interactions (knife as screwdriver)
   - Playtest extensively for interaction expectations
   - Small world with rich interactions > big world with weak ones

3. **Intensity Overload**
   - VR amplifies fear and intensity
   - Things too intense make players want to remove headset
   - This breaks presence completely

4. **Unrealistic Audio**
   - Every interaction needs appropriate sound
   - Spatial audio is critical
   - Contextual sounds (coin on wood vs. glass)

5. **Proprioceptive Disconnect**
   - Real body must match virtual body position
   - Seated gameplay needs seated scenarios
   - Avoid objects penetrating player's body
   - No body is better than misaligned body (uncanny valley)

6. **Lack of Identity**
   - Players wonder "who am I in this world?"
   - Failing to address identity reminds players they aren't really there

### Six Presence Builders to Implement

1. **Hand Presence** - Let players use their hands meaningfully
2. **Social Presence** - Other people in VR/AR feel very real
3. **Familiarity** - Familiar spaces build presence quickly
4. **Realistic Audio** - Double your usual sound design effort
5. **Proprioceptive Alignment** - Real and virtual bodies aligned
6. **Comedy** - Comedic worlds forgive imperfections

### Encourage Looking Around

Players hesitate to turn their heads in VR. Encourage it:
- Give reasons to look around (items in back seat, glove boxes)
- Give opportunities to look into things (fine print, hidden compartments)
- Hold players in place initially (parked car, seated position)
- Use familiarity + looking around to build presence

### Brownboxing Technique

Before building digital levels, prototype in reality:
1. Use cardboard boxes to simulate VR scene
2. Playtest with game master describing what happens
3. Test how players interact with hands
4. Measure what they can reach
5. Hand measurements to modeler for digital prototype

See [presence-design-guide.md](presence-design-guide.md) for comprehensive presence techniques and **Lens #93½: Presence**.

## Level Design Is Game Design in Detail

Level design applies **all** game design principles in detail:
- Right level of challenge
- Right amount of reward
- Right amount of meaningful choice
- Proper pacing and interest curves
- Clear goals and feedback

**The devil is in the details.** Use every lens from your toolkit when designing levels.

## Iteration and Testing

1. **Create abstract functional space** first
2. **Choose organization pattern** and add landmarks
3. **Apply Alexander's properties** for living quality
4. **Consider platform specifics** (scale, perspective, presence)
5. **Playtest extensively** - observe where players get lost, frustrated, or delighted
6. **Iterate on details** - level design is game design exercised in detail

## Quick Reference: Key Lenses

- **Lens #26: Functional Space** - Abstract spatial analysis
- **Lens #92: Inner Contradiction** - Remove contradictory elements
- **Lens #93: The Nameless Quality** - Living, organic design
- **Lens #93½: Presence** (VR/AR) - Player's sense of being there

## Supporting Materials

- [alexander-fifteen-properties-guide.md](alexander-fifteen-properties-guide.md) - Detailed guide for all 15 properties of living structures
- [spatial-organization-patterns.md](spatial-organization-patterns.md) - Five organization types with examples and when to use each
- [presence-design-guide.md](presence-design-guide.md) - Complete presence breakers, builders, and VR/AR techniques
- [functional-space-modeling.md](functional-space-modeling.md) - How to analyze and model game spaces abstractly

## Further Reading

- *The Timeless Way of Building* by Christopher Alexander - Foundational work on design quality
- *A Pattern Language* by Christopher Alexander - 253 architectural patterns
- *The Nature of Order* (Books 1-4) by Christopher Alexander - Deep study of the nameless quality
- *Level Design for Games* by Phil Co - Practical level design and documentation

---

**Remember:** You are an architect of virtual experiences. Every space you create should have purpose, beauty, and life.
