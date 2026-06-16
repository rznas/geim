# Project structure & modules (UE 5.6/5.7)

Doc-sourced from `references/api/` — not compile-tested here (no engine installed).
Key source pages: `Understanding_the_Basics_Foundational_Knowledge_Directory_Structure.md`,
`...UnrealBuildTool_Module_Properties.md`, `...UnrealBuildTool_Targets.md`,
`...Slate_Tools_Programming_Editor_Modules.md`, `...Foundational_Knowledge_Working_with_Plugins.md`,
`Setting_Up_Your_Production_Pipeline_Plugins.md`,
`Get_Started_..._Set_Up_and_Compile_Your_Project.md`.

## Anatomy of a C++ project

A UE C++ project on disk:

```
MyGame/
├── MyGame.uproject              # project descriptor (JSON) — lists C++ Modules + Plugins
├── Config/                      # Default*.ini (override Engine/Config defaults) — COMMIT
│   ├── DefaultEngine.ini
│   ├── DefaultGame.ini
│   └── DefaultInput.ini
├── Content/                     # binary .uasset / .umap (art, levels, Blueprints) — COMMIT
├── Source/                      # all C++ — COMMIT
│   ├── MyGame.Target.cs         # Game target rules
│   ├── MyGameEditor.Target.cs   # Editor target rules
│   └── MyGame/                  # the primary game MODULE (folder name == module name)
│       ├── MyGame.Build.cs      # module rules — REQUIRED or UBT skips the module
│       ├── Public/              # headers other modules may include
│       │   └── MyGame.h
│       └── Private/             # .cpp incl. the module impl file
│           └── MyGame.cpp       # IMPLEMENT_PRIMARY_GAME_MODULE(...)
├── Plugins/                     # optional; each plugin has its own Source/Content/.uplugin
├── Binaries/                    # GENERATED — gitignore
├── Intermediate/                # GENERATED (incl. IDE project files, UHT output) — gitignore
├── DerivedDataCache/            # GENERATED cache — gitignore
└── Saved/                       # GENERATED (logs, autosaves, generated ini) — gitignore
```

Per the Directory Structure page, in a game project `Source/` is organized **one
directory per module**, and each module folder contains `Public` (the module's
exposed headers), `Private` (all `.cpp`, including the module implementation
file), and optionally `Internal` (cross-module includes within the same plugin
without exposing them widely). The legacy `Classes/` folder "should not be added
to in the future."

## The C++ vs Blueprint project distinction

> "you can make an Unreal Engine (UE) project using only Blueprint or C++, but
> most projects benefit from using a mix" — *Coding in UE: Blueprint vs. C++*.

The on-disk tell is simple:

- **C++ project** = has a `Source/` directory with at least one `.Build.cs` and
  the `.Target.cs` files, and lists its modules in the `.uproject`'s `"Modules"`.
- **Blueprint-only project** = **no `Source/` directory** and **no `"Modules"`**
  in the `.uproject`. All logic lives in `.uasset` Blueprint assets under
  `Content/`.

You can start Blueprint-only and add C++ later: the *Set Up and Compile* tutorial
shows that creating your first C++ class (e.g. a `GameModeBase` subclass) is what
"tells Unreal Engine to generate the Visual Studio project and files you need."
This suite is **C++-primary** — lead with C++, expose to Blueprint via
`UPROPERTY(BlueprintReadWrite)` / `UFUNCTION(BlueprintCallable)` (see
**unreal-gameplay-cpp** and **unreal-blueprints**).

## Modules — the building blocks

> "Modules are the building blocks of Unreal Engine. The engine is implemented as
> a large collection of modules, and games supply their own modules to augment
> them." — *Module Properties*.

Each module is declared by a `.build.cs` C# file deriving from `ModuleRules`,
stored under `Source/`, with the module's C++ next to it. UBT compiles the
`.build.cs` to determine the compile environment. **The class name must match the
module name must match the folder name.** Minimal form (from the docs):

```csharp
using UnrealBuildTool;

public class MyModule : ModuleRules
{
    public MyModule(ReadOnlyTargetRules Target) : base(Target)
    {
        // Properties and settings go here
    }
}
```

### The dependency properties you'll actually set (from *Module Properties*)

| Property | Meaning |
|----------|---------|
| `PublicDependencyModuleNames` | Modules required by this module's **public** headers (auto private+public include). |
| `PrivateDependencyModuleNames` | Modules this module's **private** code depends on, nothing public exposes. |
| `PublicIncludePathModuleNames` | Modules whose headers your public headers need, but you don't link against. |
| `PrivateIncludePathModuleNames` | Same, for private code. |
| `DynamicallyLoadedModuleNames` | Modules loaded at runtime (not link-time). |

Baseline gameplay deps are `"Core"`, `"CoreUObject"`, `"Engine"` (and usually
`"InputCore"`); the *Editor Modules* page uses exactly that set. Add
`"EnhancedInput"` for the current input system, `"UMG"`/`"Slate"`/`"SlateCore"`
for UI, etc.

### The module implementation macro

Every module needs an implementation file (a `.cpp` in `Private/`) that calls one
of the `IMPLEMENT_*` macros from `Modules/ModuleManager.h`:

- **`IMPLEMENT_PRIMARY_GAME_MODULE(FDefaultGameModuleImpl, ModuleName, "ModuleName")`**
  — exactly **one** per game; the project's primary module.
- **`IMPLEMENT_MODULE(FDefaultModuleImpl, ModuleName)`** — a plain secondary
  module (the *Editor Modules* page uses this verbatim for a runtime module:
  `IMPLEMENT_MODULE(FDefaultModuleImpl, CustomGameplay);`).
- **`IMPLEMENT_GAME_MODULE(FMyModule, ModuleName)`** — a secondary game module
  with a custom module class (overriding `StartupModule`/`ShutdownModule`).

> "The name you provide in the second field for `IMPLEMENT_GAME_MODULE` must be
> valid, otherwise your project will crash at runtime with cooked data, which is
> difficult to debug. Make sure the name matches the module's folder name." —
> *Editor Modules*.

> **Doc gap:** the embedded pages show `IMPLEMENT_MODULE` and
> `IMPLEMENT_GAME_MODULE` verbatim but not `IMPLEMENT_PRIMARY_GAME_MODULE`. The
> primary-game-module macro is standard UE (every editor-generated C++ project's
> main `.cpp` uses it); the scaffold uses it for the primary module and falls
> back to the documented macros for secondary modules.

### A module class with Startup/Shutdown (from *Editor Modules*, verbatim shape)

```cpp
// MyModule.h
#pragma once
#include "Modules/ModuleInterface.h"
#include "Modules/ModuleManager.h"

class FMyModule : public IModuleInterface
{
public:
    virtual void StartupModule() override;
    virtual void ShutdownModule() override;
};
```

```cpp
// MyModule.cpp
#include "MyModule.h"
IMPLEMENT_GAME_MODULE(FMyModule, MyModule);
void FMyModule::StartupModule() { }
void FMyModule::ShutdownModule() { }
```

### Editor vs runtime modules

Editor modules compile **only for editor builds** — keep editor-only code out of
shipping builds. The docs strongly recommend parallel runtime/editor modules
(`CustomGameplay` + `CustomGameplayEditor`), each with `Private`/`Public` folders.
Register a module in three places:

1. The `.uproject` `"Modules"` array with a `"Type"` (`Runtime` / `Editor` / …).
2. The relevant `.Target.cs` via `ExtraModuleNames.Add("...")` (the Editor module
   goes only in `*Editor.Target.cs`).
3. Any dependent module's `.Build.cs` `*DependencyModuleNames`.

Then regenerate project files and build.

## Targets — what gets built

> "UBT supports building several target types: Game, Client, Server, Editor,
> Program." — *Targets*. Each is a `.target.cs` deriving from `TargetRules`; the
> class name must be `<FileName>Target`.

| Target type | What it is |
|-------------|------------|
| `TargetType.Game` | Standalone game; needs cooked data to run. |
| `TargetType.Client` | Game minus server code (networked games). |
| `TargetType.Server` | Game minus client code (dedicated servers). |
| `TargetType.Editor` | Extends the Unreal Editor. |
| `TargetType.Program` | Standalone utility built on UE. |

A code project ships at least a Game target and an Editor target; add
Client/Server targets for dedicated-server multiplayer (see
**unreal-build-deploy-multiplayer**). Useful `TargetRules` properties:
`Type`, `ExtraModuleNames`, `DefaultBuildSettings` (pin compatible defaults, e.g.
`BuildSettingsVersion.V5`), `IncludeOrderVersion`, `bUsesSteam`, `LinkType`
(modular vs monolithic), `GlobalDefinitions`.

## Plugins — code + data you can redistribute

A plugin differs from a module: a **module is code only**; a **plugin** has its
own `Source/`, `Binaries/`, a `.uplugin` descriptor, and *can contain Content*
(set `"CanContainContent": true`), so it is redistributable across projects.

Search paths: engine plugins live at `<EngineRoot>/Engine/Plugins/<Name>/`, game
plugins at `<ProjectRoot>/Plugins/<Name>/`. UBT discovers a plugin by finding its
`.uplugin` file. A plugin with a `Source/` folder (containing `.Build.cs`) is
auto-added to generated IDE project files and compiled as a dependency of the game.

`.uplugin` descriptor (from the *Plugins* page, the engine's `UObjectPlugin`):

```json
{
    "FileVersion": 3,
    "Version": 1,
    "VersionName": "1.0",
    "FriendlyName": "UObject Example Plugin",
    "Description": "An example of a plugin which declares its own UObject type.",
    "Category": "Examples",
    "CreatedBy": "Epic Games, Inc.",
    "EnabledByDefault": true,
    "CanContainContent": false,
    "Modules": [
        { "Name": "UObjectPlugin", "Type": "Developer", "LoadingPhase": "Default" }
    ]
}
```

`FileVersion` is the only required field (use `3`, the current version). Module
`"Type"` options: `Runtime`, `RuntimeNoCommandlet`, `Developer`, `Editor`,
`EditorNoCommandlet`, `Program` — controls which build/app loads the module.
**Dependency hierarchy rule:** plugins/modules are in hierarchical levels and can
only depend on others at the same level or **higher** — a project module may
depend on an engine module, but never the reverse. Enable a plugin per-project in
the `.uproject` `"Plugins"` array; enable third-party/Fab plugins through the
editor's **Edit > Plugins** window.
