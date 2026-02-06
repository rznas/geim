# Spatial Organization Patterns for Game Spaces

## Overview

When designing a game space, choosing an organizing principle helps structure how players navigate and experience your world. These five patterns are the most common ways to organize game spaces.

**Important:** Patterns can be combined to create interesting hybrid spaces.

## Pattern 1: Linear

### Description

Players can only move forward and (maybe) backward along a single path. The line may have two ends or loop back on itself.

### Visual Pattern

```
Start ─────────────────────> End
  or
  ┌──────────────────┐
  │                  │
  Start ←───────────┘
```

### Characteristics

- **Simplest spatial structure**
- **Highly controlled pacing** - designer determines sequence
- **Easy to understand** - minimal navigation decisions
- **Forward momentum** - natural sense of progress
- **May loop** - creating circular paths

### When to Use

- **Tutorial levels** - guide players through learning sequence
- **Racing games** - literal forward motion
- **Action games** - maintain momentum and pacing
- **Narrative-focused games** - control story sequence
- **Board games** - simple, accessible gameplay

### Examples

**Board Games:**
- *Candyland* - Pure linear progression with setbacks
- *Monopoly* - Linear loop around the board

**Video Games:**
- *Super Mario Bros* - Left-to-right linear progression (mostly)
- *Jetpack Joyride* - Endless runner, pure linear
- *Guitar Hero* - Notes scroll linearly

**Strengths:**
- Clear direction and goal
- Excellent pacing control
- Easy for players to understand
- Low cognitive load for navigation

**Weaknesses:**
- Limited exploration
- Predictable
- Less player agency in path choice
- Can feel restrictive

### Design Tips

1. **Vary the pace** - Don't make linear mean monotonous
2. **Add secrets off the path** - Optional branches create interest
3. **Use landmarks** - Help players measure progress
4. **Consider loops** - Circular paths can feel less constrained
5. **Layer vertically** - Linear horizontal path with vertical exploration

## Pattern 2: Grid

### Description

Game space arranged on a grid of squares, rectangles, hexagons, or triangles.

### Visual Pattern

```
┌─┬─┬─┬─┐
├─┼─┼─┼─┤
├─┼─┼─┼─┤
└─┴─┴─┴─┘
```

### Grid Types

- **Square Grid** - Most common (Chess, many video games)
- **Rectangular Grid** - Different movement costs for X/Y
- **Hexagonal Grid** - Popular in war games (equal distance to all neighbors)
- **Triangular Grid** - Unusual but creates interesting movement

### Characteristics

- **Easy to understand** - Clear cell boundaries
- **Ensures alignment** - Things line up naturally
- **Maintains proportion** - Spatial relationships preserved
- **Computer-friendly** - Easy to represent in code
- **Tactical gameplay** - Position and adjacency matter

### When to Use

- **Strategy games** - Tactical positioning important
- **Puzzle games** - Spatial relationships key to gameplay
- **Turn-based games** - Discrete movement fits discrete space
- **Building games** - Alignment and snapping helpful
- **War games** - Hexagons excellent for combat simulation

### Examples

**Board Games:**
- *Chess* - 8×8 square grid, classic example
- *Settlers of Catan* - Hexagonal grid for resource tiles
- *Advance Wars* - Square grid for tactical combat

**Video Games:**
- *Legend of Zelda (NES)* - Screen-based grid navigation
- *Minecraft* - 3D grid of blocks
- *XCOM* - Square grid for tactical positioning

**Strengths:**
- Precise spatial control
- Clear movement rules
- Tactical depth from positioning
- Easy to communicate to players
- Good for multiplayer balance

**Weaknesses:**
- Can feel restrictive or artificial
- May not suit organic movement
- Aesthetic challenges (visible grid lines)
- Diagonal movement complications (squares)

### Design Tips

1. **Hide or embrace the grid** - Either make it invisible or make it beautiful
2. **Choose grid type carefully** - Hexagons for equal adjacency, squares for simplicity
3. **Consider diagonal movement** - How does it work with your grid?
4. **Use odd numbers** - 7×7 has a center; 8×8 doesn't
5. **Layer grids** - Different systems can use different grid granularities

## Pattern 3: Web

### Description

Several points connected by paths, giving players multiple routes to destinations.

### Visual Pattern

```
    A
   /│\
  / │ \
 B──C──D
  \ │ /
   \│/
    E
```

### Characteristics

- **Multiple paths** - Player choice in navigation
- **Network structure** - Nodes and connections
- **Strategic movement** - Route choice matters
- **Variable connectivity** - Some nodes more connected than others
- **Travel can be meaningful or instantaneous**

### When to Use

- **Adventure games** - Multiple locations to visit
- **Story-heavy games** - Non-linear narrative paths
- **Social spaces** - Virtual worlds with interconnected areas
- **Strategic movement** - Path choice creates gameplay
- **Abstract spaces** - Represent conceptual rather than physical space

### Examples

**Board Games:**
- *Fox and Geese* - Abstract web of positions
- *Trivial Pursuit* - Hub-and-spoke web structure

**Video Games:**
- *Zork* - Text adventure with room connections
- *Club Penguin* - Social space with interconnected rooms
- *Puzzle Quest* - Map of connected challenge nodes
- *FTL: Faster Than Light* - Sector map with multiple paths

**Strengths:**
- Player agency in navigation
- Can represent abstract spaces
- Supports exploration and discovery
- Strategic depth in path choice
- Scalable (can add more nodes)

**Weaknesses:**
- Can be confusing without good map
- Harder to ensure players see all content
- Connectivity requires careful balancing
- May need minimap or navigation aids

### Design Tips

1. **Vary node importance** - Create hubs and dead ends
2. **Make paths meaningful** - Different routes offer different experiences
3. **Provide navigation aids** - Map, markers, or clear landmarks
4. **Control critical path** - Ensure players can reach necessary locations
5. **Use bottlenecks** - Single-path sections for pacing control

## Pattern 4: Points in Space

### Description

Discrete points in continuous or semi-continuous space, like oases in a desert.

### Visual Pattern

```
      *
         *
  *         *
      *
         *
```

### Characteristics

- **Wandering gameplay** - Exploration-focused
- **Sparse important locations** - Much empty space between
- **Player-defined paths** - Not prescribed connections
- **Emergence** - Players create their own routes
- **Discovery-oriented** - Finding the points is part of gameplay

### When to Use

- **Exploration games** - Reward for finding locations
- **Open-world RPGs** - Towns and dungeons in landscape
- **Physics-based games** - Positions matter but paths don't
- **Player-created content** - Players define the space
- **Abstract strategy** - Bocce, billiards, etc.

### Examples

**Physical Games:**
- *Bocce* - Throwing balls to establish positions
- *Thin Ice* - Wet marbles on napkin (emergent positions)
- *Polarity* - Magnetic pieces defining space

**Video Games:**
- *Animal Crossing* - Buildings and features scattered in town
- *Final Fantasy* - Towns and dungeons in world map
- *No Man's Sky* - Points of interest scattered across planets

**Strengths:**
- Feels open and free
- Strong exploration incentive
- Player creates own navigation
- Supports emergent gameplay
- Flexible structure

**Weaknesses:**
- Can feel empty or aimless
- Hard to control pacing
- Navigation can be tedious
- May need fast travel systems
- Risk of players missing content

### Design Tips

1. **Vary point density** - Clusters and empty areas create rhythm
2. **Make points worth finding** - Rewards for exploration
3. **Provide distant landmarks** - Help players navigate
4. **Consider fast travel** - For revisiting discovered points
5. **Use the journey** - Random encounters, scenery between points

## Pattern 5: Divided Space

### Description

Space carved into irregular sections, like a real map with territories.

### Visual Pattern

```
┌──────┬──────────┐
│  A   │    B     │
├──┬───┴────┬─────┤
│C │   D    │  E  │
└──┴────────┴─────┘
```

### Characteristics

- **Irregular boundaries** - Natural, organic divisions
- **Territory-based** - Areas have meaning and identity
- **Realistic mapping** - Matches real-world geography
- **Strategic control** - Owning regions matters
- **Asymmetric areas** - Different sizes and shapes

### When to Use

- **Strategy games** - Territory control and warfare
- **Geographic games** - Modeling real-world spaces
- **Political games** - Representing nations or factions
- **Resource games** - Different regions provide different resources
- **Adventure games** - Distinct themed areas

### Examples

**Board Games:**
- *Risk* - World map divided into territories
- *Axis and Allies* - WWII map with strategic regions
- *Dark Tower* - Fantasy kingdom divided into territories

**Video Games:**
- *Zelda: Ocarina of Time* - Hyrule Field divided into regions
- *Civilization* - World map with meaningful territories
- *Total War series* - Campaign map of divided territories

**Strengths:**
- Natural, realistic feel
- Strategic territorial gameplay
- Each area can have unique identity
- Supports multiple factions/players
- Thematic richness

**Weaknesses:**
- Complex to balance
- Navigation can be unclear
- Hard to ensure area equality
- May need detailed map
- Connections can confuse

### Design Tips

1. **Make borders clear** - Rivers, mountains, color coding
2. **Balance strategically** - Not all areas equal size, but equal value
3. **Create chokepoints** - Bottlenecks for strategic importance
4. **Vary terrain types** - Each region has character
5. **Use geographic logic** - Even if abstract, follow intuitive patterns

## Combining Patterns

Many successful games combine multiple patterns:

### Hybrid Examples

**Clue (Grid + Divided Space):**
- Movement is on a grid
- Board divided into rooms
- Rooms are divided spaces within grid

**Baseball (Linear + Points in Space):**
- Base-running is linear (base to base)
- Fielding is points in space (where ball lands)

**Metroidvania Games (Grid + Web + Divided):**
- Movement often grid-based or snap-to-grid
- Room connections form a web
- Areas divided by theme and difficulty

**Open World RPGs (Points in Space + Divided):**
- Points of interest scattered
- World divided into regions/biomes

### Combining Strategy

1. **Identify primary pattern** - What's the main structure?
2. **Add secondary pattern** - Where does it enhance gameplay?
3. **Make combinations meaningful** - Don't just mash patterns together
4. **Test navigation clarity** - Can players understand the hybrid?
5. **Use for variety** - Different gameplay modes in different patterns

## Choosing Your Pattern

### Decision Framework

Ask yourself:

1. **What does my gameplay need?**
   - Heavy pacing control → Linear
   - Tactical positioning → Grid
   - Player exploration → Web or Points in Space
   - Territory control → Divided Space

2. **How much player navigation freedom?**
   - Minimal → Linear or Grid
   - Moderate → Web
   - Maximum → Points in Space or Divided Space

3. **What's my aesthetic?**
   - Abstract → Grid or Web
   - Realistic → Divided Space
   - Open/Free → Points in Space
   - Controlled → Linear

4. **What's my platform?**
   - Board game → Any pattern works
   - Touch screen → Grid or Points in Space
   - 3D navigation → Points in Space or Divided
   - Text-based → Web

5. **What's my genre?**
   - Platformer → Linear
   - Strategy → Grid or Divided Space
   - RPG → Web or Points in Space
   - Racing → Linear
   - Puzzle → Grid

## Landmarks Within Any Pattern

**Critical for all patterns:** Players need landmarks to:
- Know where they are
- Remember locations
- Navigate effectively
- Have things to talk about

### Landmark Design

1. **Visually distinctive** - Easy to recognize and remember
2. **Strategically placed** - At decision points and destinations
3. **Named clearly** - Players can refer to them
4. **Functionally significant** - More than just decoration
5. **Appropriately scaled** - Big enough to notice

### Anti-Pattern: Sameness

- "All alike" - Too much order is monotonous
- "All different" - Too much chaos is also monotonous
- **Solution:** Organized variety with memorable landmarks

## Iteration Process

1. **Start with functional space** - Lens #26: Functional Space
2. **Choose organizing pattern** - Based on gameplay needs
3. **Block out structure** - Rough layout
4. **Add landmarks** - Memorable points of reference
5. **Test navigation** - Can players find their way?
6. **Refine and detail** - Polish the experience
7. **Apply aesthetics** - Make it beautiful

**Remember:** These patterns are tools, not rules. Use them to think clearly about your space, then create what your game needs.
