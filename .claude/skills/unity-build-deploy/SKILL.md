---
name: unity-build-deploy
description: >
  Build, package, and ship a Unity 6 (6000.x) C# game from the command line —
  no Editor GUI needed. Use this whenever you need to make a release/standalone
  build, run a headless batch-mode build, set up CI to build the game, write or
  fix an editor build script (BuildPipeline.BuildPlayer / -executeMethod),
  configure PlayerSettings (company/product name, version, icons, application
  id), choose a build target (StandaloneWindows64, StandaloneLinux64,
  StandaloneOSX, Android, iOS, Switch/Switch 2, Xbox, PS5), pick a scripting
  backend (Mono vs IL2CPP), set the dedicated-server subtarget, or package the
  output for Steam/console. Reach for it any time the task is "build a release",
  "build for Windows/Linux", "make a headless/CI build", "BuildPlayer does
  nothing", "the build is empty/black", "switch to IL2CPP", "build a dedicated
  server", "build for Switch 2", or "ship it". It has the verified
  BuildPipeline.BuildPlayer API, the -batchmode -executeMethod -buildTarget CLI,
  the explicit-scene-list gotcha, the Mono-vs-IL2CPP rules, and the Steam-first
  platform order from the project benchmark. Covers Producer and Compliance
  Tester work. For netcode / Relay / the gameplay side of dedicated servers, use
  unity-multiplayer. Assumes a buildable project (unity-project-setup).
---

# Unity Build & Deploy (C#)

Turn a Unity 6 project into shippable binaries from the command line. Builds are
driven by an **editor C# build script** that calls `BuildPipeline.BuildPlayer`,
launched headless with `-batchmode -executeMethod -buildTarget`. No GUI needed.

Snippets are doc-sourced from the embedded Unity 6 ScriptReference
(`references/api/`), **not compile-tested in this environment** (no Editor
installed). Unity 6 / 6000.x.

## The one thing that trips everyone up

**There is no pure-CLI "build" flag that bundles your game.** You don't run
"unity --build" and get a player. You must:

1. Write a `public static void` method (in an **Editor** assembly,
   `Assets/Editor/BuildScript.cs`) that fills a `BuildPlayerOptions` and calls
   `BuildPipeline.BuildPlayer(...)`.
2. Give it an **explicit scene list** — `BuildPlayerOptions.scenes` is an array
   of scene paths. **If it's empty, Unity builds only "the currently open
   scene," which in batch mode is an empty/black build.** (`BuildPlayerOptions-scenes.md`)
3. Run Unity headless pointing `-executeMethod` at that method and selecting the
   platform with `-buildTarget` (**not** by switching target inside the script —
   that doesn't work in batch mode; see below).

```bash
unity.sh -batchmode -nographics -quit \
         -projectPath /abs/Project \
         -executeMethod BuildScript.Build \
         -buildTarget StandaloneLinux64 \
         -logFile /abs/build.log
```

(`references/api/build-command-line.md`,
`references/api/BuildPipeline.BuildPlayer.md`.)

> Unity 6 added a no-script `-build` flag (with `-buildTarget` or
> `-activeBuildProfile`) for the simplest case. For CI you still want the
> `-executeMethod` + custom-script path: it gives you the scene list, output
> path, version stamping, and post-build hooks.

## The build method (verified shape)

Unity's own `BuildPipeline.BuildPlayer` example, adapted for batch mode in
`assets/scripts/BuildScript.cs.template` (drop it at
`Assets/Editor/BuildScript.cs`):

```csharp
using System.Linq;
using UnityEditor;
using UnityEngine;
using UnityEditor.Build.Reporting;

public static class BuildScript
{
    public static void Build()
    {
        var opts = new BuildPlayerOptions();
        // Explicit scenes from the enabled Build Settings entries:
        opts.scenes = EditorBuildSettings.scenes
            .Where(s => s.enabled).Select(s => s.path).ToArray();
        // Platform comes from -buildTarget (do NOT switch it here):
        opts.target = EditorUserBuildSettings.activeBuildTarget;
        opts.locationPathName = "Builds/Linux/Game.x86_64";
        opts.options = BuildOptions.None;

        BuildReport report = BuildPipeline.BuildPlayer(opts);
        if (report.summary.result != BuildResult.Succeeded)
            throw new System.Exception(report.SummarizeErrors()); // non-zero exit for CI
    }
}
```

`BuildPlayerOptions` fields, scene-list rules, and the `BuildReport` result API
are detailed in `references/build_pipeline.md`.

### Don't switch the target inside the script

`build-command-line.md` is explicit: `BuildPlayerOptions.target`,
`SwitchActiveBuildTargetAsync`, and `SetActiveBuildProfile` do **not** work as
expected in batch mode (switching the target needs a domain reload that can't
happen mid-script, so wrong platform defines leak in). **Select the platform
with `-buildTarget` on the CLI** and read it back via
`EditorUserBuildSettings.activeBuildTarget`. You build **one target per
invocation** — run Unity once per platform.

## Running a build here

`scripts/build.sh <projectPath> <buildTarget> [outPath]` wraps the canonical
invocation through `_tools/unity.sh`, makes the output/log dirs, and reports the
exit code:

```bash
./scripts/build.sh /abs/Project StandaloneLinux64 /abs/out/Game.x86_64
```

In **this** environment no Unity Editor is installed, so `unity.sh` (and thus
`build.sh`) **exits 127** with install instructions — expected, not a bug.
`build.sh` detects 127 and explains it. Install Unity 6 + the platform module,
`export UNITY_PATH=…`, and re-run for a real build.

## PlayerSettings essentials

Set project identity before building (all scriptable —
`references/api/PlayerSettings.md`): `companyName`, `productName`,
`bundleVersion`, `applicationIdentifier` (reverse-DNS app id), and icons via
`SetIconsForTargetGroup`. `productName` also names the built player and prefs
file. Per-build `#define`s go in `BuildPlayerOptions.extraScriptingDefines`
(setting defines via `SetDefineSymbolsForGroup` in the same script won't apply —
it needs a domain reload). Details in
`references/player_settings_and_platforms.md`.

## Build targets

`BuildTarget` (`references/api/BuildTarget.md`): `StandaloneWindows64`,
`StandaloneLinux64`, `StandaloneOSX`, `Android`, `iOS`, `Switch`,
`GameCoreXboxSeries`/`GameCoreXboxOne`, `PS5`/`PS4`, `WebGL`. For named-target
APIs use `NamedBuildTarget` (adds `NintendoSwitch2`). A target only builds if its
**Editor module is installed** — verify with `BuildPipeline.IsBuildTargetSupported`.

**Dedicated server build:** set `BuildPlayerOptions.subtarget` to
`StandaloneBuildSubtarget.Server` (`references/api/StandaloneBuildSubtarget.md`).
That produces the headless server *binary*; the netcode running inside it is
`unity-multiplayer`'s job.

## Mono vs IL2CPP

`PlayerSettings.SetScriptingBackend(NamedBuildTarget, ScriptingImplementation)` —
**Mono**, **IL2CPP**, or **.NET**.

- **Mono** — JIT, fast iteration, simple desktop/CI builds. Fine to start.
- **IL2CPP** — AOT (IL → C++ → native). **Required for iOS and consoles**, and
  the recommended shipping backend on desktop (perf, startup, protection). Two
  rules from `il2cpp-introduction.md`: (1) the **IL2CPP module must be
  installed** via Unity Hub; (2) IL2CPP generally **can't cross-compile** — build
  on the target OS, **except Linux**, which cross-compiles from any desktop
  (Unity auto-installs the sysroot/toolchain — `linux-il2cpp-crosscompiler.md`).

Full table + code-gen/compiler-config tuning in
`references/player_settings_and_platforms.md`.

## Platform order (from the benchmark)

From `docs/benchmarks/main.md`, ship in this order and don't over-invest in
later platforms first:

1. **Steam first — Windows + Linux desktop** (`StandaloneWindows64`,
   `StandaloneLinux64`). Non-negotiable; best discoverability.
2. **Nintendo Switch 2** (`NamedBuildTarget.NintendoSwitch2`) — needs the Switch
   SDK + dev kit + certification; budget ~$15k-$40k/platform.
3. **Xbox / PlayStation** — each needs its own SDK + cert pass.

Abstract platform-specific code (input, save, achievements, store) from day one.
Localize for **Simplified Chinese** + **Brazilian Portuguese** (~30% uplift each).

## What this covers / hands off to

- **Covers:** Producer (release/CI builds, platform roadmap) and Compliance
  Tester (platform/module requirements, dedicated-server + console build setup).
- **Hands off to:**
  - `unity-multiplayer` — Netcode for GameObjects, Relay/Lobby, RPCs, and the
    *gameplay* side of dedicated servers (this skill only produces the server
    *build*).
  - `unity-project-setup` — scaffolding/restoring a buildable project (assumed).
  - QA/headless-verification sibling — smoke-running the built player.

## Deep references

- `references/build_pipeline.md` — `BuildPipeline.BuildPlayer`,
  `BuildPlayerOptions`, the CLI args, the scene list, reading `BuildReport`.
- `references/player_settings_and_platforms.md` — PlayerSettings, Mono/IL2CPP,
  per-platform notes, the benchmark order.
- `references/troubleshooting.md` — build does nothing, empty/black build,
  IL2CPP fails, wrong target, output-path errors, the 127 "no Editor here" case.
- `references/api/` — the exhaustive embedded Unity 6 doc pages (grep it; it's
  the source of truth).
