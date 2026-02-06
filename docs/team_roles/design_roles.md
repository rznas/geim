# The Art of Game Design - Role-Based Skills Architecture

**Purpose:** Reorganize the 32 granular skills into role-based skill clusters to support agent orchestration where different roles (agents) collaborate on game design projects.

**Book:** The Art of Game Design, 3rd Edition  
**Author:** Jesse Schell  
**Core Framework:** 113+ design lenses

---

## Executive Summary

The original 32 skills have been reorganized into **7 role-based agents**, each with consolidated skills that match their domain responsibilities. This structure enables:

- Clear boundaries between agent roles
- Coordinated collaboration on game design tasks
- Specialized expertise per role
- Practical orchestration workflows

---

## Role-Based Agent Architecture

### Agent 1: **Core Design Lead**

**Role Description:** The primary game designer who owns the overall experience, mechanics, and design vision  
**Game Dev Role Mapping:** Game Designer, Systems Designer  
**When to Invoke:** Starting new game concepts, defining core gameplay, making high-level design decisions

#### Consolidated Skills:

**Skill 1.1:** `establishing-design-foundations`

- **Merges:** developing-game-designer-mindset + applying-design-lenses + defining-game-concepts
- **Chapters to read:**
    - 09-Hello.md (lens framework)
    - 10-Chapter-01-In-the-Beginning-There-Is-the-Designer.md
    - 07-Table-of-Lenses.md (reference)
    - 13-Chapter-04-The-Experience-Rises-Out-of-a-Game.md
    - 14-Chapter-05-The-Game-Consists-of-Elements.md
- **Key capabilities:**
    - Five kinds of listening (team, audience, game, client, self)
    - Using the 113 design lenses as analytical tools
    - Understanding the Elemental Tetrad (mechanics, story, aesthetics, technology)
    - Defining what makes something a "game"
    - Building confidence and design intuition
- **Dependencies:** None (foundational)

**Skill 1.2:** `designing-core-gameplay-experience`

- **Merges:** designing-player-experiences + designing-with-themes + iterating-through-prototyping
- **Chapters to read:**
    - 11-Chapter-02-The-Designer-Creates-an-Experience.md
    - 15-Chapter-06-The-Elements-Support-a-Theme.md
    - 16-Chapter-07-The-Game-Begins-with-an-Idea.md
    - 17-Chapter-08-The-Game-Improves-through-Iteration.md
    - 25-Chapter-16-Experiences-Can-Be-Judged-by-Their-Interest-Curves.md
- **Key capabilities:**
    - Identifying essential experience goals
    - Creating unified themes with resonance
    - The Rule of the Loop and eight filters
    - Rapid prototyping techniques (paper, digital, lo-fi, hi-fi)
    - Interest curves and pacing
    - Risk assessment and iteration
- **Dependencies:** establishing-design-foundations

**Skill 1.3:** `designing-game-systems-and-mechanics`

- **Merges:** designing-game-mechanics + balancing-game-systems + choosing-game-venues
- **Chapters to read:**
    - 21-Chapter-12-Some-Elements-Are-Game-Mechanics.md (complete - very dense)
    - 22-Chapter-13-Game-Mechanics-Must-Be-in-Balance.md (complete - very dense)
    - 12-Chapter-03-The-Experience-Takes-Place-in-a-Venue.md
- **Key capabilities:**
    - Seven core mechanics: Space, Time, Objects, Actions, Rules, Skill, Chance
    - 12 types of game balance (fairness, challenge, meaningful choices, etc.)
    - Game economies and dynamic balancing
    - Platform/venue considerations (private, public, half-private)
    - How venue shapes experience
- **Dependencies:** establishing-design-foundations, designing-core-gameplay-experience

**Skill 1.4:** `understanding-and-engaging-players`

- **Merges:** understanding-players + motivating-players
- **Chapters to read:**
    - 18-Chapter-09-The-Game-Is-Made-for-a-Player.md
    - 19-Chapter-10-The-Experience-Is-in-the-Players-Mind.md
    - 20-Chapter-11-The-Players-Mind-Is-Driven-by-the-Players-Motivation.md
- **Key capabilities:**
    - Demographics vs psychographics
    - LeBlanc's taxonomy of game pleasures
    - Bartle's player types
    - Maslow's hierarchy applied to games
    - Intrinsic vs extrinsic motivation
    - "Wanna vs hafta" design principle
- **Dependencies:** establishing-design-foundations

**Agent Output:** High-level design documents, core mechanics specifications, experience goals, player personas

---

### Agent 2: **Level & Puzzle Designer**

**Role Description:** Designs individual levels, puzzles, and spatial gameplay challenges  
**Game Dev Role Mapping:** Level Designer, Puzzle Designer  
**When to Invoke:** Creating levels, designing puzzles, structuring game progression

#### Consolidated Skills:

**Skill 2.1:** `designing-puzzles-and-challenges`

- **Original skill:** designing-puzzles (no merge needed - focused enough)
- **Chapters to read:**
    - 23-Chapter-14-Game-Mechanics-Support-Puzzles.md
- **Key capabilities:**
    - Ten puzzle design principles
    - Making goals clear with progress indicators
    - Parallelism and pyramid structure
    - Hint systems that don't break immersion
    - Perceptual shift techniques
- **Dependencies:** Agent 1's designing-game-systems-and-mechanics

**Skill 2.2:** `designing-game-spaces-and-levels`

- **Merges:** designing-game-spaces + creating-presence-and-immersion
- **Chapters to read:**
    - 30-Chapter-21-Worlds-Contain-Spaces.md
    - 21-Chapter-12-Some-Elements-Are-Game-Mechanics.md (Space mechanic section)
    - 31-Chapter-22-Some-Interfaces-Create-a-Feeling-of-Presence.md
- **Key capabilities:**
    - Architecture's purpose in games
    - Organizing game space with landmarks
    - Christopher Alexander's fifteen properties of living structures
    - Level design principles
    - Presence breakers and builders (especially for VR/AR)
    - Brownboxing technique
- **Dependencies:** Agent 1's designing-game-systems-and-mechanics, Agent 4's creating-game-worlds-and-characters

**Agent Output:** Level layouts, puzzle designs, spatial flow diagrams, environment specifications

---

### Agent 3: **Technical Design Specialist**

**Role Description:** Bridges design and programming, handles interfaces, technical systems  
**Game Dev Role Mapping:** Technical Designer, Technical Artist (design aspects)  
**When to Invoke:** UI/UX design, technical constraints, technology choices, interface systems

#### Consolidated Skills:

**Skill 3.1:** `designing-game-interfaces-and-feedback`

- **Original skill:** designing-game-interfaces (no merge needed)
- **Chapters to read:**
    - 24-Chapter-15-Players-Play-Games-through-an-Interface.md
- **Key capabilities:**
    - Physical vs virtual interfaces
    - Loop of interaction
    - Juiciness and feedback systems
    - Primality (interface matches mental model)
    - Channels and dimensions of information
    - Mode design
    - Ten interface tips
- **Dependencies:** Agent 1's designing-game-systems-and-mechanics

**Skill 3.2:** `choosing-game-technology`

- **Original skill:** choosing-game-technology (no merge needed)
- **Chapters to read:**
    - 38-Chapter-29-The-Team-Builds-a-Game-with-Technology.md
- **Key capabilities:**
    - Foundational vs decorational technology
    - The hype cycle
    - Innovator's dilemma
    - Law of divergence
    - Predicting technology trends
    - When to adopt new tech vs stick with proven tools
- **Dependencies:** Agent 1's establishing-design-foundations

**Agent Output:** UI/UX mockups, technical specifications, technology stack recommendations, interface flow diagrams

---

### Agent 4: **Narrative & World Designer**

**Role Description:** Creates story, narrative structure, worlds, and characters  
**Game Dev Role Mapping:** Narrative Designer, World Builder, Writer  
**When to Invoke:** Story integration, world building, character design, narrative systems

#### Consolidated Skills:

**Skill 4.1:** `integrating-story-and-gameplay`

- **Merges:** integrating-story-in-games + using-indirect-control
- **Chapters to read:**
    - 26-Chapter-17-One-Kind-of-Experience-Is-the-Story.md
    - 27-Chapter-18-Story-and-Game-Structures-Can-Be-Artfully-Merged-with-Indirect-Control.md
- **Key capabilities:**
    - Story/game duality and tension
    - String of pearls vs story machine approaches
    - Problems with interactive narrative
    - Ten story tips for game designers
    - Hero's journey structure
    - Six methods of indirect control (constraints, goals, interface, visual design, characters, music)
    - Creating feeling of freedom while maintaining story structure
- **Dependencies:** Agent 1's designing-core-gameplay-experience

**Skill 4.2:** `creating-game-worlds-and-characters`

- **Merges:** creating-game-worlds + designing-game-characters
- **Chapters to read:**
    - 28-Chapter-19-Stories-and-Games-Take-Place-in-Worlds.md
    - 29-Chapter-20-Worlds-Contain-Characters.md
- **Key capabilities:**
    - Transmedia world properties
    - What makes worlds successful and long-lasting
    - Novel vs movie vs game character design
    - Avatar design (ideal form vs blank slate)
    - Ten character tips
    - Interpersonal circumplex for character relationships
    - Character transformation arcs
    - Uncanny valley considerations
- **Dependencies:** Agent 1's designing-core-gameplay-experience

**Agent Output:** Story outlines, world bibles, character descriptions, narrative flow documents, dialogue frameworks

---

### Agent 5: **Art & Aesthetics Director**

**Role Description:** Guides visual and audio aesthetic decisions  
**Game Dev Role Mapping:** Art Director, Audio Director, UX Designer (visual aspects)  
**When to Invoke:** Visual style decisions, aesthetic direction, audio design, overall look and feel

#### Consolidated Skills:

**Skill 5.1:** `applying-game-aesthetics`

- **Original skill:** applying-game-aesthetics (no merge needed - already focused)
- **Chapters to read:**
    - 32-Chapter-23-The-Look-and-Feel-of-a-World-Is-Defined-by-Its-Aesthetics.md
- **Key capabilities:**
    - Value of aesthetics in game design
    - Learning to see (visual observation skills)
    - Using aesthetics to guide design decisions
    - "How much is enough?" - scope management
    - Audio importance and integration
    - Balancing art ambition with technical constraints
    - Consistent aesthetic vision
- **Dependencies:** Agent 1's designing-core-gameplay-experience, Agent 4's creating-game-worlds-and-characters

**Agent Output:** Art style guides, visual references, mood boards, audio design briefs, aesthetic principles document

---

### Agent 6: **Social & Community Designer**

**Role Description:** Designs multiplayer systems and community features  
**Game Dev Role Mapping:** Multiplayer Designer, Live Operations Designer, Community Designer  
**When to Invoke:** Multiplayer features, social systems, community building, live service design

#### Consolidated Skills:

**Skill 6.1:** `designing-multiplayer-and-communities`

- **Merges:** designing-multiplayer-games + building-game-communities
- **Chapters to read:**
    - 33-Chapter-24-Some-Games-Are-Played-with-Other-Players.md
    - 34-Chapter-25-Other-Players-Sometimes-Form-Communities.md
- **Key capabilities:**
    - Why people play with others (social motivations)
    - Player interaction types (competitive, cooperative, parallel)
    - Ten tips for strong communities
    - Fostering friendships in-game
    - Conflict at the heart of social gameplay
    - Architecture shaping community behavior
    - Community property and player expression
    - Three levels of engagement
    - Managing griefing and toxicity
    - Community events and ceremonies
- **Dependencies:** Agent 1's understanding-and-engaging-players, Agent 1's designing-game-systems-and-mechanics

**Agent Output:** Multiplayer design documents, community feature specs, social system flows, moderation guidelines

---

### Agent 7: **Production & Business Lead**

**Role Description:** Manages team, process, business aspects, and external relationships  
**Game Dev Role Mapping:** Producer, Project Manager, Business Development  
**When to Invoke:** Team coordination, documentation, playtesting, pitching, business decisions

#### Consolidated Skills:

**Skill 7.1:** `managing-game-development-teams`

- **Merges:** working-with-game-teams + creating-game-design-documents + playtesting-games
- **Chapters to read:**
    - 35-Chapter-26-The-Designer-Usually-Works-with-a-Team.md
    - 36-Chapter-27-The-Team-Sometimes-Communicates-through-Documents.md
    - 37-Chapter-28-Good-Games-Are-Created-through-Playtesting.md
- **Key capabilities:**
    - Secret of successful teamwork
    - Love for the game and audience
    - Designing together (collaborative design)
    - Myth of the GDD (when documentation helps vs hurts)
    - Types of documents (design, engineering, art, production, writing, player-facing)
    - Playtesting vs QA vs usability vs focus groups
    - Six playtesting questions: Why, Who, Where, When, What, How
    - Types of testers and what to observe
    - Data collection methods (surveys, interviews, FFWWDD)
- **Dependencies:** Agent 1's establishing-design-foundations, Agent 1's designing-core-gameplay-experience

**Skill 7.2:** `managing-business-and-stakeholders`

- **Merges:** managing-client-relationships + pitching-game-ideas + understanding-game-business-models
- **Chapters to read:**
    - 39-Chapter-30-Your-Game-Will-Probably-Have-a-Client.md
    - 40-Chapter-31-The-Designer-Gives-the-Client-a-Pitch.md
    - 41-Chapter-32-The-Designer-and-Client-Want-the-Game-to-Make-a-Profit.md
- **Key capabilities:**
    - Why client feedback matters
    - Coping with bad suggestions (three layers of desire)
    - Michelangelo method (finding the core desire)
    - Negotiation of power in pitches
    - Hierarchy of ideas
    - Twelve pitch tips (preparation, passion, flexibility, rehearsal)
    - Business models (retail, digital, free-to-play)
    - Knowing competition and audience
    - Business terminology (general and F2P-specific)
    - Importance of barriers to entry
- **Dependencies:** Agent 1's establishing-design-foundations, Agent 1's designing-core-gameplay-experience

**Skill 7.3:** `designing-for-impact-and-ethics`

- **Merges:** designing-transformational-games + practicing-ethical-game-design + defining-designer-purpose
- **Chapters to read:**
    - 42-Chapter-33-Games-Transform-Their-Players.md
    - 43-Chapter-34-Designers-Have-Certain-Responsibilities.md
    - 44-Chapter-35-Each-Designer-Has-a-Purpose.md
- **Key capabilities:**
    - How games change players
    - Games for good (emotional maintenance, connecting, exercise, education)
    - Giving the brain what it wants
    - Seven transformational tips
    - Games and violence/addiction concerns
    - Danger of obscurity and being accountable
    - Designer's hidden agenda
    - Power and responsibility (The Ring metaphor)
    - Finding your purpose as a designer
    - Personal design philosophy development
- **Dependencies:** Agent 1's understanding-and-engaging-players

**Agent Output:** Project plans, team coordination documents, playtest reports, pitch decks, business analyses, ethical frameworks

---

## Agent Orchestration Patterns

### Pattern 1: New Game Concept Development

**Flow:**

1.  **Agent 7 (Production)** → Gather requirements, scope, constraints
2.  **Agent 1 (Core Design)** → Establish foundations, define core experience, identify target players
3.  **Agent 4 (Narrative)** → Develop world/story concept (if narrative-driven)
4.  **Agent 5 (Art)** → Create aesthetic direction
5.  **Agent 1 (Core Design)** → Design core mechanics and systems
6.  **Agent 3 (Technical)** → Evaluate technical feasibility, choose tech stack
7.  **Agent 7 (Production)** → Create project plan, pitch deck

### Pattern 2: Level/Content Creation

**Flow:**

1.  **Agent 1 (Core Design)** → Provide mechanics and systems documentation
2.  **Agent 4 (Narrative)** → Provide world/story context for level
3.  **Agent 2 (Level Design)** → Design level layout, puzzles, spatial flow
4.  **Agent 3 (Technical)** → Design UI/interfaces for level
5.  **Agent 5 (Art)** → Provide aesthetic guidance for level
6.  **Agent 7 (Production)** → Coordinate playtesting

### Pattern 3: Multiplayer/Social Feature

**Flow:**

1.  **Agent 1 (Core Design)** → Define player motivations and target experience
2.  **Agent 6 (Social)** → Design multiplayer systems and community features
3.  **Agent 3 (Technical)** → Design interfaces and technical implementation approach
4.  **Agent 7 (Production)** → Plan testing and community rollout

### Pattern 4: Full Production Pipeline

**Flow:**

1.  **Agent 7 (Production)** → Project initiation, team assembly
2.  **Agent 1 (Core Design)** → Core vision and mechanics
3.  **Agents 2-6** → Parallel specialized design work
4.  **Agent 7 (Production)** → Integration, playtesting, iteration
5.  **Agent 7 (Production)** → Polish, business strategy, launch

---

## Role Boundaries & Interfaces

### Agent 1 (Core Design Lead)

- **Produces:** Core design documents, mechanics specs, player personas, experience goals
- **Consumes:** Playtest feedback (Agent 7), technical constraints (Agent 3), business requirements (Agent 7)
- **Decision Authority:** Core gameplay mechanics, target audience, fundamental game identity

### Agent 2 (Level & Puzzle Designer)

- **Produces:** Level layouts, puzzle designs, spatial flows
- **Consumes:** Core mechanics (Agent 1), world/story context (Agent 4), aesthetic guidelines (Agent 5)
- **Decision Authority:** Individual level design, puzzle difficulty curves, spatial gameplay

### Agent 3 (Technical Design Specialist)

- **Produces:** UI/UX specs, technical architecture, interface flows, technology recommendations
- **Consumes:** Core mechanics (Agent 1), player needs (Agent 1), business constraints (Agent 7)
- **Decision Authority:** Interface design, technology stack, technical feasibility assessments

### Agent 4 (Narrative & World Designer)

- **Produces:** Story documents, world bibles, character sheets, narrative structures
- **Consumes:** Core experience goals (Agent 1), aesthetic direction (Agent 5)
- **Decision Authority:** Story content, world lore, character design, narrative structure

### Agent 5 (Art & Aesthetics Director)

- **Produces:** Style guides, mood boards, aesthetic principles, audio design briefs
- **Consumes:** World/story context (Agent 4), core experience (Agent 1), technical constraints (Agent 3)
- **Decision Authority:** Visual style, audio direction, aesthetic consistency

### Agent 6 (Social & Community Designer)

- **Produces:** Multiplayer specs, social system designs, community guidelines
- **Consumes:** Player psychology (Agent 1), core mechanics (Agent 1)
- **Decision Authority:** Social features, multiplayer balance, community management approach

### Agent 7 (Production & Business Lead)

- **Produces:** Project plans, playtest reports, business analyses, pitch materials, ethical guidelines
- **Consumes:** All agent outputs for coordination
- **Decision Authority:** Schedule, scope, budget, team coordination, external relationships, ethical standards

---

## Skill Reduction Summary

**Original Plan:** 32 granular skills  
**Revised Plan:** 13 consolidated skills across 7 role-based agents

| Agent | Number of Skills | Original Skills Merged |
| --- | --- | --- |
| Agent 1: Core Design Lead | 4   | 10 skills |
| Agent 2: Level & Puzzle Designer | 2   | 3 skills |
| Agent 3: Technical Design Specialist | 2   | 2 skills |
| Agent 4: Narrative & World Designer | 2   | 4 skills |
| Agent 5: Art & Aesthetics Director | 1   | 1 skill |
| Agent 6: Social & Community Designer | 1   | 2 skills |
| Agent 7: Production & Business Lead | 3   | 10 skills |
| **Total** | **13 skills** | **32 skills** |

---

## Implementation Sequence

### Phase 1: Core Foundation (Highest Priority)

**Agent 1 skills** - Essential for all other work

1.  establishing-design-foundations
2.  designing-core-gameplay-experience
3.  designing-game-systems-and-mechanics
4.  understanding-and-engaging-players

### Phase 2: Production Enablers

**Agent 7 skills** - Enable team collaboration and iteration  
5\. managing-game-development-teams  
6\. designing-for-impact-and-ethics

### Phase 3: Content Creation

**Agents 2, 3, 4 skills** - Build actual game content  
7\. designing-game-spaces-and-levels (Agent 2)  
8\. designing-puzzles-and-challenges (Agent 2)  
9\. designing-game-interfaces-and-feedback (Agent 3)  
10\. integrating-story-and-gameplay (Agent 4)  
11\. creating-game-worlds-and-characters (Agent 4)

### Phase 4: Polish & Special Features

**Agents 3, 5, 6 skills** - Refinement and specialized systems  
12\. choosing-game-technology (Agent 3)  
13\. applying-game-aesthetics (Agent 5)  
14\. designing-multiplayer-and-communities (Agent 6)

### Phase 5: Business & Launch

**Agent 7 skill** - Commercial success  
15\. managing-business-and-stakeholders (Agent 7)

---

## Validation Checklist

- \[✓\] All 35 main chapters covered across consolidated skills
- \[✓\] Clear role boundaries for agent orchestration
- \[✓\] Reduced from 32 to 13 skills (59% reduction)
- \[✓\] Skills grouped by professional game dev roles
- \[✓\] Clear input/output interfaces between agents
- \[✓\] Orchestration patterns defined
- \[✓\] Implementation sequence respects dependencies
- \[✓\] Each agent has 1-4 skills (manageable scope)
- \[✓\] Maintains lens-based methodology from book
- \[✓\] Aligns with real game development workflows

---

## Next Steps

1.  Review this architecture with stakeholders
2.  Validate role boundaries match intended orchestration use cases
3.  Begin implementing Agent 1 skills (Core Design Lead) as foundation
4.  Create agent prompt templates for each role
5.  Develop inter-agent communication protocols
6.  Test orchestration patterns with real game design scenarios