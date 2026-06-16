# The build system: UBT, GenerateProjectFiles, packaging (UE 5.6/5.7)

Doc-sourced from `references/api/` — not compile-tested here (no engine installed).
Key source pages: `...Unreal_Build_Pipeline_UnrealBuildTool.md`,
`...UnrealBuildTool_Targets.md`, `...UnrealBuildTool_Project_Files_for_IDEs.md`,
`...UnrealBuildTool_Build_Configuration.md`,
`Get_Started_..._Packaging_Unreal_Engine_Projects.md`.

All commands below go through `scripts/unreal.sh`, which resolves the engine
toolchain from `$UE_ROOT` and routes subcommands. **In this environment it exits
127 with install guidance — no engine is installed**, so these are doc-sourced,
not run here. Install UE 5.7 and `export UE_ROOT=/path/to/UnrealEngine` to use them.

## What UBT is

> "UnrealBuildTool (UBT) is a custom tool that manages the process of building
> Unreal Engine source code across a variety of build configurations." — *UBT*.

UE is split into many modules; each has a `.build.cs` controlling how it's built.
By default modules compile into DLLs loaded by one executable (modular build); you
can choose a monolithic build via target `LinkType`/`BuildConfiguration.cs`.

Crucially:

> "the build process executes independently of any project files for the
> development environment, such as `.sln` or `.vcproj` files… These files are
> useful to have for editing purposes though." — *UBT*.

So the `.sln` is for your IDE; **UBT builds from `.Build.cs`/`.Target.cs`, not from
the `.sln`.** Add a new `.cpp` and a compile picks it up even if the IDE project
hasn't been refreshed.

## GenerateProjectFiles — make IDE projects

`GenerateProjectFiles` analyzes the module and target build files and emits IDE
project files. The wrapper routes it:

```bash
scripts/unreal.sh gencproj -project="<dir>/MyGame.uproject" -game
```

Notes from *Project Files for IDEs*:

- It is "a simple wrapper around Unreal Build Tool, which is launched in a special
  mode… It invokes Unreal Build Tool with the `-ProjectFiles` command-line option."
- **Re-run it whenever you add/remove source files, plugins, modules, or change
  build settings** — the IDE project may not auto-update.
- Generated project files are **pure intermediates** and are **not checked in to
  source control** (they go under `Intermediate/ProjectFiles/`; the `.sln` goes
  to the project/engine root). Safe to delete and regenerate anytime.
- Useful flags: `-CurrentPlatform` (only the host desktop platform, lighter),
  `-2022` (VS 2022 format), `-Game <Name>.uproject` (only this project),
  `-NoShippingConfigs`, `-Platforms=Win64+Linux`.

> Note: the doc names the Windows wrapper `GenerateProjectFiles.bat`; on Linux the
> equivalent is `GenerateProjectFiles.sh` (what `unreal.sh gencproj` routes to).

## Building a target

```bash
# scripts/unreal.sh build <TargetName> <Platform> <Configuration> -project=<path>
scripts/unreal.sh build MyGameEditor Linux Development -project="<dir>/MyGame.uproject"
scripts/unreal.sh build MyGame       Linux Shipping    -project="<dir>/MyGame.uproject"
```

`<TargetName>` is the class base name (`MyGame`, `MyGameEditor`), **not** the
module. The wrapper routes to `Engine/Build/BatchFiles/Linux/Build.sh`.

### Build configurations (from *Packaging*)

| Configuration | Builds engine+project? | Optimizations | Use |
|---------------|------------------------|---------------|-----|
| **Debug** | both | off | deepest debugging; slow |
| **DebugGame** | project only | off | project debugging (not for Blueprint-only projects) |
| **Development** (default) | — | most | day-to-day; reflects code changes in editor |
| **Test** | — | all | internal QA, no full debug overhead |
| **Shipping** | — | all | distribution; no console/stats/profiling |

## Packaging (build → cook → stage → package)

> "Packaging is a process that converts an Unreal Engine project into a standalone
> executable (`.exe`) or application." — *Packaging*.

The four operations: **Build** (compile code/plugins/binaries for the platform),
**Cook** (convert assets to a runtime, platform-specific format → `.pak` files),
**Stage** (copy compiled code + cooked content to a staging dir), **Package**
(bundle into a distributable set). Optional **Deploy** / **Run** push and launch on
a device.

The CLI underneath the editor's "Package Project" is the **Unreal Automation Tool
(UAT)** command `BuildCookRun`:

> "when you package a project, the Automation Tool executes the command
> `BuildCookRun` — the underlying script for all build operations." — *Packaging*.

Routed via the wrapper (illustrative; see **unreal-build-deploy-multiplayer** for
the full owned workflow and platform matrix):

```bash
scripts/unreal.sh uat BuildCookRun \
  -project="<dir>/MyGame.uproject" \
  -noP4 -platform=Linux -clientconfig=Development \
  -cook -stage -pak -build
```

`Config/DefaultEngine.ini`'s `GameDefaultMap` must be set or a packaged build
shows a black screen ("without it, there's nothing for the project to load at
runtime").

## CI / headless note

UAT/`BuildCookRun` is "useful for scripting unattended processes in C#, such as
cooking and running automation tests for Continuous Integration (CI) pipelines."
Packaging/automation/CI is owned by **unreal-build-deploy-multiplayer**; this
foundation skill only gets you to a buildable, openable project. For the broader
build pipeline (BuildGraph, Horde, Turnkey, installed builds) see the
`Setting_Up_Your_Production_Pipeline_*` pages in `references/api/`.
