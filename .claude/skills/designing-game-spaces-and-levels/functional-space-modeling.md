# Functional Space Modeling Guide

## Overview

**Functional space** is the abstract, mathematical structure of your game space with all aesthetics and visuals stripped away. Understanding functional space lets you design gameplay without being distracted by how things look.

## Why Model Functional Space?

### Benefits

1. **Clarity:** See the skeleton of your game clearly
2. **Freedom:** Let go of real-world assumptions
3. **Focus:** Concentrate on gameplay interactions
4. **Communication:** Discuss structure without aesthetic baggage
5. **Flexibility:** Multiple ways to represent same space

### Principle

**All that matters is how the space feels when playing, not whether it has a realistic blueprint.**

## Core Dimensions of Functional Space

### 1. Discrete vs. Continuous

#### Discrete Space

**Definition:** Space divided into distinct, separate units where exact position within unit doesn't matter.

**Characteristics:**
- Finite number of meaningful positions
- Position matters only at unit level
- Often represented as points or cells

**Examples:**

**Tic-Tac-Toe:**
- Looks like continuous grid on paper
- Actually nine discrete zero-dimensional points
- WHERE you mark in a cell doesn't matter
- WHICH cell matters

**Chess:**
- 64 discrete squares
- Piece position within square irrelevant
- Only which square matters

**Monopoly:**
- Appears 2D (square board)
- Actually 1D (40 discrete points in a loop)
- Corner spaces look special but are functionally equivalent

#### Continuous Space

**Definition:** Space where exact position matters at any scale.

**Characteristics:**
- Infinite possible positions
- Precise location matters
- Often involves physics

**Examples:**

**Pool/Billiards:**
- Table is continuous 2D surface
- Ball position matters precisely
- Can be anywhere on table
- (Arguably 3D when balls leave table or hop)

**Soccer Field:**
- Continuous 2D (or 3D if considering height)
- Player and ball can be anywhere
- Exact position affects gameplay

**Racing Games:**
- Continuous space for vehicle position
- Precise location crucial for racing line

#### Mixed Systems

Some games use both:

**Tournament Chess:**
- Turn-based (discrete time)
- Continuous clock (continuous time limit)

**Analyzing Soccer:**
- Usually think of as continuous 2D
- Can model as discrete if analyzing field areas
- Height matters → think as continuous 3D
- Depends on what you're analyzing

### 2. Number of Dimensions

#### Zero-Dimensional

**Single point or disconnected points where only state matters, not position**

**Example: Twenty Questions**
- No physical board
- Could model as:
  - Mind of answerer (contains secret)
  - Mind of questioner (processes answers)
  - Conversation space (information exchange)

**Insight:** Even seemingly spaceless games have information state that exists somewhere.

#### One-Dimensional

**Linear space where you can only move along a line**

**Examples:**
- **Candyland:** Forward and backward along path
- **Monopoly:** 40-point loop
- **Many racing games:** Track as 1D path

**Characteristics:**
- Position measured on single axis
- May loop back on itself
- May have two ends or connect to itself

#### Two-Dimensional

**Flat space with two axes of movement**

**Examples:**
- **Chess:** 8×8 grid
- **Go:** 19×19 grid
- **Pool table:** Continuous 2D surface
- **Many RPG overworlds:** 2D plane with movement

**Characteristics:**
- Position needs two coordinates
- Can be discrete (grid) or continuous
- May have boundaries or wrap around

#### Three-Dimensional

**Space with three axes: typically X, Y, Z**

**Examples:**
- **Most 3D games:** Full 3D navigation
- **Minecraft:** 3D grid of blocks
- **Flight simulators:** Continuous 3D space
- **VR environments:** Full 3D presence

**Characteristics:**
- Position needs three coordinates
- Can be discrete or continuous
- May have boundaries (walls, floor, ceiling)

#### Higher Dimensions

**Rare but possible:**
- **Time as fourth dimension:** Some puzzles use time travel
- **Parallel dimensions:** Switching between alternate spaces
- **Abstract dimensions:** Non-spatial qualities that affect gameplay

### 3. Boundaries

**Definition:** Edges or limits of the game space

#### Types of Boundaries

**Hard Boundaries:**
- Walls in FPS games
- Edge of board in board games
- Impassable terrain

**Soft Boundaries:**
- Dangerous zones (take damage but can enter)
- Out-of-bounds areas (penalized but possible)
- Recommended limits (can go farther but discouraged)

**Wrapping Boundaries:**
- *Pac-Man* screen edges
- *Asteroids* screen wrap
- Some space games (toroidal space)

**Questions to Ask:**
- What are the boundaries of my space?
- Are they hard, soft, or wrapping?
- Do boundaries make sense for my gameplay?

### 4. Connectivity and Subspaces

#### Nested Spaces

**Definition:** Spaces within spaces

**Example: RPGs**

**Outdoor Space:**
- Continuous 2D
- Travel across landscape

**Icons on Map:**
- Represent towns, caves, castles

**Enter Icon:**
- Completely separate interior space
- Not geographically realistic
- Matches mental model of how we think
  - Indoors: Think about interior space
  - Don't worry about exact outdoor relationship

**Why This Works:**
- Matches human perception
- Simple representation of complex world
- Easy to understand and navigate

#### Connected Spaces

**Web or Network:** Points connected by paths

**Example: Text Adventures**
- Rooms (nodes)
- Exits (connections)
- Navigation by following connections

**Graph Structure:**
- Nodes = locations
- Edges = connections
- Can map complex relationships

#### Disconnected Spaces

**Completely separate areas:**
- Different levels in game
- Separate game modes
- Parallel dimensions

**Transitions:**
- How do players move between?
- Load screens, portals, menus?

## Lens #26: Functional Space

Use this lens to think about space abstractly, with all surface elements stripped away.

### Questions to Ask

1. **Is the space discrete or continuous?**
   - Or a mix of both?
   - What's more useful to think about?

2. **How many dimensions does it have?**
   - 0D, 1D, 2D, 3D, or more?
   - Does it change based on what I'm analyzing?

3. **What are the boundaries of the space?**
   - Hard, soft, or wrapping?
   - Where do they exist?
   - Why those boundaries?

4. **Are there subspaces? How are they connected?**
   - Nested spaces?
   - Connected via graph?
   - Completely separate?

5. **Is there more than one useful way to abstractly model the space?**
   - Different models for different purposes?
   - Which model helps me think most clearly?

## Modeling Techniques

### Technique 1: Diagram the Abstract Space

**Strip away aesthetics:**

**Tic-Tac-Toe Example:**

Instead of:
```
 │ │
─┼─┼─
 │ │
─┼─┼─
 │ │
```

Think of:
```
① ─ ② ─ ③
│   │   │
④ ─ ⑤ ─ ⑥
│   │   │
⑦ ─ ⑧ ─ ⑨
```

**Nine zero-dimensional points in 2D grid arrangement**

Lines show adjacency relationships, not continuous space.

### Technique 2: Create Connectivity Graphs

**For web-based spaces:**

```
    Town
     │
  ┌──┼──┐
  │  │  │
Cave Forest Dungeon
  │     │
  └─────┘
```

**Nodes:** Locations
**Edges:** Paths between them
**Useful for:** Planning navigation flow

### Technique 3: State Diagrams

**For discrete state spaces:**

```
[Start] → [Path Choice] → [Combat]
              │              │
              ↓              ↓
          [Town] ←──────── [Victory]
              │
              ↓
           [Shop]
```

**Shows:** How players move through game states

### Technique 4: Multi-Level Maps

**For nested spaces:**

**Level 1: Overworld (High Level)**
```
╔═══════════╗
║ World Map ║
║  🏰  🏔️  ⛪ ║
╚═══════════╝
```

**Level 2: Location Interior (Detail)**
```
Castle Icon → ┌─────┐
              │ Castle │
              │  Interior  │
              └─────┘
```

### Technique 5: Dimensional Analysis

**Soccer Field Example:**

**For Field Positioning:**
- Think continuous 2D
- Analyze player positions
- Plan field modifications

**For Goal Height:**
- Think continuous 3D
- Consider vertical space
- Analyze high balls

**For Field Zones:**
- Think discrete 2D
- Nine areas of play
- Analyze regional tactics

**Same space, different models, different insights**

## Common Modeling Scenarios

### Board Game Redesign

**Question:** How do I modify this game?

**Approach:**
1. Model current functional space
2. Identify what you want to change
3. Modify abstract model
4. Apply new aesthetics

**Example: Modifying Monopoly**

**Current:** 40-point 1D loop

**Modifications:**
- Add shortcuts? → Web structure
- Add interior spaces? → Nested spaces
- Make 2D? → Grid or divided space

**Model first, then visualize**

### Video Game Level Design

**Question:** How should this level be structured?

**Approach:**
1. Define gameplay needs
2. Choose functional organization
3. Map out abstract space
4. Add landmarks
5. Apply visual design

**Example: FPS Level**

**Needs:** Combat, exploration, pacing

**Model:**
- Main path (1D spine)
- Side areas (2D or 3D off main path)
- Vertical elements (3D when important)

**Refine abstract structure before building geometry**

### VR Experience Design

**Question:** How should this VR space work?

**Approach:**
1. Model player movement capabilities
2. Define interaction points
3. Map presence requirements
4. Test in brownbox
5. Build digital version

**Focus on functional relationships first**

## Working with Functional Space and Aesthetics

### Lens #10: Holographic Design

**Simultaneously see:**
- Abstract functional space
- Aesthetic space player experiences
- How they interrelate

**Benefits:**
- Make confident decisions
- Ensure function and form align
- Avoid aesthetic/gameplay conflicts

### Translation Process

**1. Functional Design:**
- Create abstract model
- Test gameplay in prototype
- Refine until it works

**2. Aesthetic Application:**
- Choose visual style
- Map abstract to visual
- Ensure clarity preserved

**3. Iteration:**
- Does visual support functional?
- Are players confused?
- Refine both together

### Common Pitfalls

**Aesthetic-First Design:**
- Build beautiful space
- Realize gameplay doesn't work
- Must rebuild or compromise

**Functional-Only Design:**
- Perfect abstract space
- Players don't understand it
- Poor aesthetic communication

**Solution:** Think about both, but functional first.

## Multiple Models for One Space

**Different analyses need different models:**

### Soccer Field Example

**Tactical Analysis:**
- Discrete 2D (defensive, midfield, attacking thirds)

**Physics Simulation:**
- Continuous 3D (ball trajectory, player collisions)

**Strategic Planning:**
- Divided space (left wing, center, right wing)

**All valid, all useful, for different purposes**

### Minecraft Example

**Building:**
- 3D discrete grid (blocks snap to grid)

**Survival:**
- Continuous 3D (precise positioning matters for falls, combat)

**World Map:**
- 2D continuous (navigating to locations)

**Useful to think multiple ways depending on task**

## Iteration and Refinement

### Process

1. **Create initial abstract model**
   - Simple first version
   - Test basic concept

2. **Prototype and playtest**
   - Does it play well?
   - What's confusing?

3. **Refine model**
   - Adjust dimensions
   - Modify boundaries
   - Change connectivity

4. **Test again**
   - Better?
   - New problems?

5. **Apply aesthetics**
   - Make it beautiful
   - Ensure clarity

6. **Final testing**
   - Function and form working together?

### Questions at Each Stage

- **Does this model help me think?**
- **Does it reveal insights?**
- **Does it suggest improvements?**
- **Can I communicate it to others?**

## Remember

**Functional space modeling is a tool, not a rule.**

Use it to:
- ✓ Think clearly about structure
- ✓ Communicate design intent
- ✓ Experiment with alternatives
- ✓ Solve design problems

Don't use it to:
- ✗ Constrain creativity unnecessarily
- ✗ Ignore player experience
- ✗ Replace playtesting
- ✗ Over-complicate simple designs

**The map is not the territory, but a good map helps you navigate the territory.**

---

**When you can think of your space in pure abstract terms, you're free to focus on the gameplay interactions you want to create.**
