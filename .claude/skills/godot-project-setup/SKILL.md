---
name: godot-project-setup
description: >
  Scaffold, build, and run a Godot 4.6 game project with C# (.NET 8) from the
  command line — no GUI needed. Use this whenever you are starting a new Godot
  game, adding C# support to a project, setting up the .csproj/.sln/project.godot
  files, fixing "Godot.NET.Sdk not found" or NuGet restore errors, getting a
  headless build or import working, or wiring Godot into CI. Always reach for this
  skill before hand-writing project.godot or csproj files — getting the SDK
  version, feature flags, and offline NuGet source right by hand is fiddly and
  this skill has the verified-working scaffold. This is the foundation every other
  godot-* skill builds on; if there is no buildable project yet, start here.
---

# Godot Project Setup (C# / .NET 8)

This skill gets you from nothing to a Godot 4.6 project that **compiles C# and
imports clean from the command line**. Everything here is verified against
Godot 4.6.3-mono with the .NET 8 SDK — the file formats are what Godot itself
generates, not approximations.

## The one thing that trips everyone up

Godot ships C# project generation behind the editor's "attach first script"
flow. From the CLI there is no single command that bootstraps the `.csproj` —
`--build-solutions` only builds an *existing* one. So the move is: **write the
project files directly** (they are short and stable), then build with `dotnet`
and import with `godot --headless`. The bundled `new_project.sh` does exactly
this. Don't try to coax the editor into generating them headlessly; it won't.

The second trap is NuGet. `Godot.NET.Sdk` is shipped as a local `.nupkg` inside
the editor install (`GodotSharp/Tools/nupkgs/`), not just on nuget.org. The
scaffold writes a `nuget.config` pointing there so `dotnet build` works even
offline and always matches the editor's version.

## Running Godot

Call Godot through `scripts/godot.sh`, never the raw path. It resolves the
binary from `$GODOT4`, then the known install, then `godot` on PATH — so the
path lives in one place. Pass `--headless` yourself whenever there's no display
(CI, servers, this agent); leave it off only for a human at a GUI.

```bash
scripts/godot.sh --version
scripts/godot.sh --headless --path <proj> --import          # reimport resources
scripts/godot.sh --headless --path <proj> --quit-after 2    # run main scene, 2 frames
```

## Creating a new project

```bash
scripts/new_project.sh <dir> <ProjectName> [forward_plus|mobile|gl_compatibility]
```

This writes, into `<dir>`:

| File | Why it must be exactly this |
|------|------------------------------|
| `project.godot` | Declares the `"C#"` feature and a `[dotnet]` section. Without the C# feature flag Godot treats it as a GDScript project and won't load your assemblies. |
| `<Name>.csproj` | `Sdk="Godot.NET.Sdk/<ver>"`, `net8.0`, `EnableDynamicLoading`. The SDK version is read from the editor's bundled nupkgs so it can't drift. |
| `nuget.config` | Bundled feed first (offline-safe), nuget.org second (external packages still restore). |
| `.gitignore` | Ignores `.godot/`, `bin/`, `obj/`. Everything in `.godot/` is regenerated — never commit it. |
| `scenes/ scripts/ assets/` | Conventional layout. |

Then verify in one shot:

```bash
scripts/build_and_check.sh <dir>
```

Gate 1 is `dotnet build` (C# compiles → `.godot/mono/temp/bin/`), gate 2 is
`--headless --import` (every resource parses). Non-zero on first failure. This
is the canonical "is the project still valid?" check — reuse it in CI and after
any change to scaffolding.

## Adding C# to an existing GDScript project

1. Add `"C#"` to `config/features` in `project.godot` and add a `[dotnet]`
   section with `project/assembly_name="<Name>"`.
2. Drop in a `<Name>.csproj` (copy `assets/project_template.csproj`, set the
   SDK version to match `scripts/godot.sh --version`).
3. Add the `nuget.config` (see `assets/nuget.config`).
4. `scripts/build_and_check.sh <dir>`.

## A minimal runnable scene

The smallest thing that proves C# actually executes at runtime: a Node script
that prints in `_Ready`, wired into a one-node scene set as `run/main_scene`.
The exact, verified format for the `.cs`, `.tscn`, and the `project.godot` entry
is in `references/minimal_runnable.md`. Build, then:

```bash
scripts/godot.sh --headless --path <dir> --quit-after 2
# expect your _Ready print in stdout
```

## When a build fails

Read `references/troubleshooting.md` first — it covers the handful of errors
that account for almost every setup failure: SDK-not-found, NuGet restore
offline, class-name/file-name mismatch (`Cannot find class X for script`), the
`CS1612` struct-copy gotcha, and stale `.godot/mono`. Most are one-line fixes.

## What this skill does and doesn't cover

Covers: project files, headless build/import/run, NuGet, CI gate, source layout.
For writing gameplay logic, scenes, physics, shaders, UI, audio, or exporting a
shippable binary, hand off to the matching `godot-*` skill — they all assume a
project this skill produced.
