---
name: unreal-project-setup
description: >
  Scaffold, structure, and build an Unreal Engine 5.6/5.7 C++ game project from
  the command line — the project layout (.uproject, Source/, Content/, Config/,
  Plugins/), C++ modules + their .Build.cs, the .Target.cs target files, Unreal
  Build Tool (UBT) + GenerateProjectFiles, what to commit vs ignore, and the
  C++-vs-Blueprint project distinction. Use this whenever you are starting a new
  Unreal C++ game, laying out Source/ Content/ Config/, writing or fixing a
  .uproject / .Build.cs / .Target.cs, adding a C++ module or plugin, deciding
  what to commit vs gitignore (commit Content/ and .uasset; ignore Saved/
  Intermediate/ Binaries/ DerivedDataCache/), writing an Unreal .gitignore,
  generating IDE project files, building a target headless/CI, or fixing "UBT
  doesn't see my module", "no .Build.cs", "no rules object", "crash with cooked
  data", "module name mismatch", "no .sln generated", "I committed Intermediate/
  / Binaries/", "I gitignored Content/ and lost my assets", "black screen in the
  packaged build", or "is this a C++ or Blueprint project". Always reach for this
  skill before hand-writing a .uproject, .Build.cs, .Target.cs, the module
  IMPLEMENT_* macro, or an Unreal .gitignore — getting the module/target naming
  rules, the IMPLEMENT_PRIMARY_GAME_MODULE macro, and the commit/ignore split
  right by hand is fiddly and this skill has the doc-grounded scaffold. Covers
  Engine Programmer and Tools Programmer work. This is the FOUNDATION every other
  unreal-* skill builds on; if there is no buildable project yet, start here.
---

# Unreal Project Setup (C++ / Unreal Engine 5.6/5.7)

This skill gets you from nothing to an **Unreal Engine 5.6/5.7** C++ project that
is correctly laid out, builds with Unreal Build Tool, and is correctly committed
to version control — driven from the command line. This suite is
**C++-primary, Blueprints-secondary**: lead with C++ and expose to Blueprint.

Everything here is **doc-sourced from the embedded UE 5.6/5.7 documentation
(`references/api/`); it is not compile-tested in this environment because no
Unreal Engine is installed** — `scripts/unreal.sh` exits **127** with install
guidance until you `export UE_ROOT=/path/to/UnrealEngine`. The scaffold
(`new_unreal_project.sh`) is file-only and runs fine without an engine. Where the
docs print a format or command verbatim, this skill copies it rather than
inventing it.

## The one thing that trips everyone up

**Every C++ module needs a `.Build.cs` or UBT silently won't build it — and the
module name must match in three places.** Unreal Build Tool discovers modules by
their `.build.cs` file (a `ModuleRules` subclass), *not* by the folder existing or
by the `.sln`. From the *Module Properties* page:

> Modules are declared through C# source files with a `.build.cs` extension, and
> are stored under your project's `Source` directory… Each `.build.cs` file
> declares a class deriving from the `ModuleRules` base class.

The class name must equal the file base name must equal the folder name
(`Source/MyGame/MyGame.Build.cs` → `public class MyGame : ModuleRules`). And the
module-name string in the implement macro must match too — from *Editor Modules*:

> The name you provide in the second field for `IMPLEMENT_GAME_MODULE` must be
> valid, otherwise your project will crash at runtime with cooked data, which is
> difficult to debug. Make sure the name matches the module's folder name.

**The commit/ignore corollary (gets people just as often):** `Saved/`,
`Intermediate/`, `Binaries/`, and `DerivedDataCache/` are all *regenerated* (UE
*Directory Structure*: "These files can be deleted and rebuilt") and **must be
gitignored** — but `Content/` holds **binary `.uasset`/`.umap`** files that ARE
your art, levels, and Blueprints and **MUST be committed**. New users do the exact
opposite: commit the gigabyte `Intermediate/`/`Binaries/` and accidentally
gitignore `Content/`, losing all assets on a fresh clone.

## Creating a new project

```bash
scripts/new_unreal_project.sh <project_dir> <ProjectName>
```

Runs **without an engine** — it only writes files. It produces a minimal C++
project:

| Path | Why it must be this |
|------|---------------------|
| `<Name>.uproject` | Project descriptor (JSON). Its `"Modules"` array lists the C++ modules UBT must build. A *Blueprint-only* project would have no `Source/` and no `"Modules"`. `FileVersion: 3`. |
| `Source/<Name>.Target.cs` | The **Game** target (`TargetType.Game`). Class name == file base name + `Target`. |
| `Source/<Name>Editor.Target.cs` | The **Editor** target (`TargetType.Editor`) — required to open the project with your C++ compiled in. |
| `Source/<Name>/<Name>.Build.cs` | The module rules. **Without this UBT won't discover the module.** Deps: `Core`, `CoreUObject`, `Engine`, `InputCore`, `EnhancedInput`. |
| `Source/<Name>/Public/<Name>.h` | Module header (`#include "CoreMinimal.h"`). |
| `Source/<Name>/Private/<Name>.cpp` | The module impl file — `IMPLEMENT_PRIMARY_GAME_MODULE(FDefaultGameModuleImpl, <Name>, "<Name>")`. |
| `Config/Default{Engine,Game,Input}.ini` | Project settings that override `Engine/Config` defaults; `GameDefaultMap` lives here. |
| `Content/` (+ `.gitkeep`) | Tracked — your `.uasset`/`.umap` binaries go here and get **committed**. |
| `.gitignore` | Ignores `Saved/ Intermediate/ Binaries/ DerivedDataCache/ Build/` + generated `*.sln`/IDE files; keeps `Content/ Config/ Source/` + the `.uproject`. |

Then, on a machine with UE 5.7 installed (`$UE_ROOT` set), generate IDE files,
build the editor target, and open it:

```bash
scripts/unreal.sh gencproj -project="<dir>/<Name>.uproject" -game
scripts/unreal.sh build <Name>Editor Linux Development -project="<dir>/<Name>.uproject"
scripts/unreal.sh editor "<dir>/<Name>.uproject"
```

## Modules, `.Build.cs`, and `.Target.cs`

A **module** is the unit of C++ in UE ("the building blocks of Unreal Engine").
A `.Build.cs` is a `ModuleRules` subclass; the dependency arrays you actually set
are `PublicDependencyModuleNames` (modules your public headers need) and
`PrivateDependencyModuleNames` (modules only your `.cpp` needs). The *Editor
Modules* page's verbatim runtime-module rules:

```csharp
using UnrealBuildTool;
public class CustomGameplay : ModuleRules
{
    public CustomGameplay(ReadOnlyTargetRules Target) : base(Target)
    {
        PrivateDependencyModuleNames.AddRange(new string[] {"Core", "CoreUObject", "Engine"});
    }
}
```

A **target** (`.target.cs`, a `TargetRules` subclass; class name ==
`<FileName>Target`) is what UBT builds. Types: `Game`, `Client`, `Server`,
`Editor`, `Program` (*Targets* page). A code project ships at least a Game and an
Editor target; `ExtraModuleNames.Add("MyModule")` wires a module into a target.
Module-implementation macros (from `Modules/ModuleManager.h`):

```cpp
// the project's ONE primary game module:
IMPLEMENT_PRIMARY_GAME_MODULE(FDefaultGameModuleImpl, MyGame, "MyGame");
// a secondary / plugin module (doc-verbatim):
IMPLEMENT_MODULE(FDefaultModuleImpl, CustomGameplay);
// a secondary game module with Startup/Shutdown:
IMPLEMENT_GAME_MODULE(FMyModule, MyModule);
```

Full property tables, runtime/editor module split, and registration steps:
`references/project_structure_and_modules.md`.

## UBT, GenerateProjectFiles, and building

UBT builds from `.Build.cs`/`.Target.cs`, **not** from the `.sln` — "the build
process executes independently of any project files." The `.sln` is for your IDE
and is a pure intermediate (gitignored). **Re-run GenerateProjectFiles whenever
you add/remove source files, modules, or plugins.** Run everything through
`scripts/unreal.sh` (resolves `$UE_ROOT`; routes `gencproj`/`build`/`uat`/`editor`;
**exits 127 here — no engine installed**). Packaging via UAT `BuildCookRun` is
owned by **unreal-build-deploy-multiplayer**; the build/configuration/packaging
basics are in `references/build_system_ubt.md`.

## C++ vs Blueprint project

On disk: a **C++ project** has a `Source/` with `.Build.cs`/`.Target.cs` and lists
`"Modules"` in the `.uproject`; a **Blueprint-only project** has neither and keeps
all logic in `Content/` assets. Adding the first C++ class to a BP project is what
makes UE generate the IDE solution. This suite is C++-primary — see
`references/project_structure_and_modules.md` and **unreal-gameplay-cpp**.

## Plugins

A module is code only; a **plugin** has its own `Source/`, a `.uplugin`
descriptor, and *can contain Content* (so it is redistributable). Game plugins
live at `<ProjectRoot>/Plugins/<Name>/`; UBT finds them by their `.uplugin`. A
plugin with a `Source/` (containing `.Build.cs`) is auto-compiled as a project
dependency. Enable per-project in the `.uproject` `"Plugins"` array. Dependency
rule: a plugin/module can only depend on others at its level or higher. The
`.uplugin` format and the descriptor fields: `references/project_structure_and_modules.md`.

## What to commit (and what never to)

Commit `<Name>.uproject`, `Source/`, `Config/`, and **`Content/`** (binary
`.uasset`/`.umap` — Git LFS for large files). **Never** commit `Saved/`,
`Intermediate/`, `Binaries/`, `DerivedDataCache/`, or generated IDE files
(`*.sln`, `.vs/`, `*.xcodeproj`). Copy-paste ignore file:
`assets/unreal.gitignore`. Why each is regenerated: UE *Directory Structure* page,
summarized in `references/project_structure_and_modules.md`.

## When setup breaks

`references/troubleshooting.md` covers the failures behind almost every setup
problem: `unreal.sh` exit 127 (no engine here), "UBT doesn't see my module" /
missing `.Build.cs` / name mismatch, runtime crash with cooked data from a bad
module name, accidentally-committed `Intermediate/`/`Binaries/`, accidentally
gitignored `Content/`, IDE vs UBT disagreeing, no `.sln` generated, black screen
in a packaged build (no `GameDefaultMap`), and "is this C++ or Blueprint".

## What this skill covers / hands off to

Covers: project layout, `.uproject`, modules + `.Build.cs`, targets + `.Target.cs`,
the `IMPLEMENT_*` macros, UBT + GenerateProjectFiles, plugins, and the commit/ignore
rules — the foundation for **Engine Programmer** and **Tools Programmer** work.
Every other `unreal-*` skill assumes a project this one produced. Hand off to:
**unreal-gameplay-cpp** (UObject/AActor, reflection macros, gameplay framework),
**unreal-blueprints**, **unreal-physics-and-ai**, **unreal-rendering-materials**,
**unreal-niagara-vfx**, **unreal-animation**, **unreal-audio**, **unreal-ui-umg**,
and **unreal-build-deploy-multiplayer** (which owns UAT `BuildCookRun` packaging,
platform targets, and dedicated-server/netcode).
