# The Three Core Disciplines (Minimum Needed)

1.  **Programming** - Makes it work
2.  **Art** - Makes it look good
3.  **Design** - Makes it fun

## Major Teams & Their Primary Roles

### Programming/Engineering

- **Gameplay Programmer** - Player controls, mechanics, game rules
  - [x] Skills: `unity-gameplay-csharp` + `unity-physics-and-ai` (Godot: `godot-gameplay-csharp`, `godot-physics-and-ai`)
- **Engine Programmer** - Core systems and architecture
  - [x] Skill: `unity-project-setup` (Godot: `godot-project-setup`)
- **Graphics Engineer** - Rendering, shaders, visual effects
  - [x] Skill: `unity-graphics-shaders` (Godot: `godot-graphics-shaders`)
- **AI Programmer** - Enemy/NPC behavior
  - [x] Skill: `unity-physics-and-ai` (Godot: `godot-physics-and-ai`)
- **Tools Programmer** - Internal development software
  - [x] Skill: `unity-project-setup` (CLI/batchmode/asmdef; Godot: `godot-project-setup`)
- **Network Programmer** - Multiplayer and online features
  - [x] Skill: `unity-multiplayer` (Godot: `godot-export-build` multiplayer section)

### Art

- **Concept Artist** - Initial visual designs and direction
  - [x] Agent 5: Art & Aesthetics Director
- **3D Modeler** - Creates game assets (characters, props, environments)
  - [x] Skill: `unity-art-pipeline` (FBX/glTF/texture import, .meta/GUID)
- **Animator** - Movement and character animation
  - [x] Skill: `unity-art-pipeline` (Mecanim Animator, blend trees, C# driving)
- **Technical Artist** - Bridges art and programming
  - [x] Skills: `unity-art-pipeline` + `unity-graphics-shaders` (import pipeline + materials/shaders)
- **VFX Artist** - Explosions, particles, special effects
  - [x] Skill: `unity-graphics-shaders` (ParticleSystem / VFX Graph, post-fx)
- **UI/UX Artist** - Menus and interface design
  - [x] Skill: `unity-ui-csharp` (UI Toolkit UXML/USS, uGUI)
- **Art Director** - Visual and audio aesthetic direction
  - [x] Agent 5: Art & Aesthetics Director

### Design

- **Game Designer** - Core mechanics and gameplay systems
  - [x] Agent 1: Core Design Lead
- **Level Designer** - Individual levels and playable spaces
  - [x] Agent 2: Level & Puzzle Designer
- **Systems Designer** - Progression, economy, interconnected systems
  - [x] Agent 1: Core Design Lead
- **Narrative Designer** - Story integration and dialogue
  - [x] Agent 4: Narrative & World Designer
- **Technical Designer** - UI/UX, interfaces, technical feasibility
  - [x] Agent 3: Technical Design Specialist
- **Multiplayer Designer** - Multiplayer and social systems
  - [x] Agent 6: Social & Community Designer

### Production

- **Producer** - Manages schedules, budgets, coordinates teams
  - [x] Agent 7: Production & Business Lead (ship/build via `unity-build-deploy`)
- **Project Manager** - Day-to-day task management
  - [x] Agent 7: Production & Business Lead

### Quality Assurance (QA)

- **QA Tester** - Finds bugs and issues
  - [x] Skill: `unity-qa-testing` (Unity Test Framework, PlayMode `[UnityTest]`, headless CI)
- **Compliance Tester** - Ensures platform requirements are met
  - [x] Skills: `unity-qa-testing` + `unity-build-deploy` (per-platform builds, PlayerSettings)

### Audio

- **Composer** - Music and soundtracks
  - [x] Skill: `unity-audio` (AudioMixer, dynamic music, snapshots)
- **Sound Designer** - Sound effects
  - [x] Skill: `unity-audio` (AudioSource, spatial audio, SFX randomization)
- **Audio Director** - Audio design direction and principles
  - [x] Agent 5: Art & Aesthetics Director

### Other Essential Teams

- **Writing** - Story, dialogue, world-building
  - [x] Agent 4: Narrative & World Designer
- **Live Operations** - Post-launch content and community management
  - [x] Agent 6: Social & Community Designer
- **Marketing/Business** - Promotion and partnerships
  - [x] Agent 7: Production & Business Lead
- **Support** - IT, HR, Legal, Finance
  - [ ] Not covered (support roles)

## How It Scales

**Indie (5 people):** Everyone wears multiple hats across disciplines

**Mid-size (30-50 people):** Clear specialization with small teams per discipline

**AAA (200-500 people):** Deep specialization with entire departments and sub-teams

---

## Agent-Based Design Roles (From Skills Architecture)

The following 7 agents cover **design decision-making** roles:

1. **Agent 1: Core Design Lead** - Game Designer, Systems Designer
2. **Agent 2: Level & Puzzle Designer** - Level Designer, Puzzle Designer
3. **Agent 3: Technical Design Specialist** - Technical Designer
4. **Agent 4: Narrative & World Designer** - Narrative Designer, World Builder, Writer
5. **Agent 5: Art & Aesthetics Director** - Art Director, Audio Director
6. **Agent 6: Social & Community Designer** - Multiplayer Designer, Live Operations
7. **Agent 7: Production & Business Lead** - Producer, Project Manager, Business Development

**Note:** The 7 agents cover **design decision-making**. The **implementation
roles** (Programming, Art Production, Audio Production, QA, build/ship) are
covered by the engine skill suites in `.claude/skills/` — see below.

## Implementation Skills (Engine Suites)

Implementation roles are covered by 10 per-engine agent skills. The **Unity 6
(6000.x) C#** suite is the primary target (matches the benchmark's Unity-6 engine
choice) and is compile-verified against Unity 6000.4.10f1; a parallel **Godot
4.6.3-mono C#** suite (`godot-*`) exists for the same roles.

| Implementation role | Unity skill |
|---------------------|-------------|
| Engine Programmer, Tools Programmer | `unity-project-setup` |
| Gameplay Programmer, Systems Designer (impl) | `unity-gameplay-csharp` |
| Gameplay Programmer, AI Programmer | `unity-physics-and-ai` |
| Graphics Engineer, VFX Artist, Technical Artist | `unity-graphics-shaders` |
| 3D Modeler, Animator, Technical Artist | `unity-art-pipeline` |
| Composer, Sound Designer | `unity-audio` |
| UI/UX Artist, Technical Designer | `unity-ui-csharp` |
| QA Tester, Compliance Tester | `unity-qa-testing` |
| Producer, Compliance Tester | `unity-build-deploy` |
| Network Programmer | `unity-multiplayer` |

`unity-project-setup` is the foundation every other unity-* skill assumes.
Snippets/scaffolds are doc-grounded in the embedded Unity 6 ScriptReference and
compile-verified against 6000.4.10f1 (exception: Netcode-for-GameObjects API in
`unity-multiplayer` is doc-sourced only — package download is account-gated).

**See:** `/the_art_of_game_design/planning/01-ROLE-BASED-SKILLS-ARCHITECTURE.md` for complete orchestration details.