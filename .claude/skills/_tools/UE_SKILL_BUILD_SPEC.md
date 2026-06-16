# Shared spec for building one `unreal-*` skill

You are building ONE Unreal Engine 5.7 skill (the embedded docs are the UE 5.6
Markdown export — UE 5.7's API is effectively identical; write for 5.7 and note
"UE 5.6/5.7"). A sibling set of nine other `unreal-*` skills is being built in
parallel — stay in YOUR skill's directory only. This suite is **C++-primary,
Blueprints-secondary** (match the Unity/Godot C# suites' code-first intent).

Mirror the proven Godot/Unity skill suites in shape and tone. Look at
`/home/reza/projects/game/.claude/skills/godot-gameplay-csharp/SKILL.md` and a
`unity-*/SKILL.md` for the voice (pushy, opinionated, "the one gotcha", verified
idioms, reference handoffs).

## Environment facts (verified — do not re-litigate)

- **No Unreal Engine is installed.** You CANNOT compile-test. Every snippet is
  doc-sourced. Each SKILL.md MUST say so honestly (one sentence).
- Your skill's domain pages are ALREADY embedded at
  `<your-skill>/references/api/*.md` — these are real UE doc pages converted to
  Markdown (each starts with a `**Source:**` URL + `**Processed:**` date). That is
  your source of truth. Read/grep them; do NOT invent UE API from memory.
- Shared tool: `.claude/skills/_tools/unreal.sh` — resolves the UE toolchain
  (`editor`/`build`/`uat`/`gencproj` subcommands) and exits 127 with install
  guidance here (no engine). Copy it into your `scripts/`.

## Non-negotiable rules

1. **Ground every API claim in an embedded `references/api/*.md` page.** UE C++ is
   its own world — `UCLASS`/`UPROPERTY`/`UFUNCTION` reflection macros, `AActor`/
   `UObject`/`UActorComponent`, `TArray`/`FString`/`TObjectPtr`, the
   GameplayAbilitySystem, `Cast<>()`, `GetWorld()`, `UPROPERTY(EditAnywhere)`,
   modules + `.Build.cs`. Grep your `api/` dir for the exact class/macro and copy
   the real usage before writing it. Prefer copying UE's own example code.
2. **State verification honestly:** "Snippets are doc-sourced from the embedded UE
   5.6/5.7 documentation (`references/api/`), not compile-tested in this
   environment (no engine installed)."
3. **C++ primary, Blueprints where the docs show it.** When a doc page gives both a
   C++ and a Blueprint path, lead with C++; mention the Blueprint equivalent.
4. Stay in your skill dir. One commit happens later, suite-wide — do NOT commit.

## What to produce in YOUR skill dir

```
<skill>/
├── SKILL.md              # pushy trigger-rich frontmatter + the shape below
├── scripts/              # scaffold scripts (bash), file-only (runnable without an engine), smoke-tested
│   └── unreal.sh         # COPY from _tools/unreal.sh, chmod +x
├── references/
│   ├── api/              # ALREADY POPULATED — embedded UE doc pages (DON'T delete)
│   ├── <topic>.md        # 2–4 hand-written synthesis guides grounding claims in api/
│   └── troubleshooting.md
└── assets/               # optional templates (.Build.cs, .h/.cpp skeletons, etc.)
```

## SKILL.md shape

- YAML frontmatter: `name:` (= dir name) + a PUSHY, trigger-rich `description:`
  ("Use this whenever you are…", "Reach for it any time the task is…"), naming the
  concrete tasks/phrases that should invoke it, the `_main.md` roles it serves, and
  that it assumes a buildable project (`unreal-project-setup`).
- Title + 1–2 sentence framing. "UE 5.6/5.7" stated.
- **"The one thing that trips everyone up"** — the single biggest UE gotcha in this
  domain, grounded in the docs.
- Verified-idiom sections with ```cpp fences copied from `api/`.
- Handoffs to `references/<topic>.md` + `references/api/`, and to sibling
  `unreal-*` skills by their real names (see list below).
- "Doc-sourced, not compile-tested (no engine installed)" stated.

## The 10 sibling skills (use exact names in handoffs)

unreal-project-setup, unreal-gameplay-cpp, unreal-blueprints,
unreal-physics-and-ai, unreal-rendering-materials, unreal-niagara-vfx,
unreal-animation, unreal-audio, unreal-ui-umg, unreal-build-deploy-multiplayer

## Map to roles (`docs/team_roles/_main.md`)

State which implementation roles your skill serves (Gameplay/Engine/Graphics/AI/
Tools/Network Programmer, 3D Modeler, Animator, Tech Artist, VFX Artist, UI/UX
Artist, Composer, Sound Designer, QA, Compliance, Producer).

Keep prose tight and accurate; exhaustive coverage lives in `references/api/`.
