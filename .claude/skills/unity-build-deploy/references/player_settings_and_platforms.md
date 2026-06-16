# PlayerSettings, scripting backends, and per-platform notes

Grounded in the embedded Unity 6 (6000.x) pages under `references/api/`.
Not compile-tested here (no Editor installed).

## PlayerSettings essentials

`PlayerSettings` (`references/api/PlayerSettings.md`) "define how Unity builds
and displays your final application." These are project-wide settings normally
edited in **Project Settings > Player**, but every one is scriptable — useful
in a build script to stamp version/identity before `BuildPlayer`.

The identity/branding ones you almost always set:

| Setting | Page | Notes |
| --- | --- | --- |
| `PlayerSettings.companyName` | `PlayerSettings.md` | Your studio name; feeds save/prefs paths. |
| `PlayerSettings.productName` | `PlayerSettings-productName.md` | App title; also names the built Player and the prefs file. |
| `PlayerSettings.bundleVersion` | `PlayerSettings-bundleVersion.md` | The global version string. |
| `PlayerSettings.applicationIdentifier` | `PlayerSettings-applicationIdentifier.md` / `PlayerSettings.SetApplicationIdentifier.md` | Reverse-DNS app id for the active target (e.g. `com.studio.game`). |
| Icons | `PlayerSettings.SetIconsForTargetGroup.md` / `PlayerSettings.GetIconsForTargetGroup.md` | Per-target-group icon sets. |
| Window size | `PlayerSettings.md` (`defaultScreenWidth`/`Height`, `fullScreenMode`) | Standalone window defaults. |

Example (from `references/api/PlayerSettings-productName.md`):

```csharp
using UnityEditor;

[InitializeOnLoad]
public static class SetProductNameAutomatically
{
    static SetProductNameAutomatically()
    {
        PlayerSettings.productName = "My New Game";
    }
}
```

> Heads-up from `BuildPipeline.BuildPlayer.md`: scripting-symbol changes (e.g.
> via `SetDefineSymbolsForGroup`) only take effect after a **domain reload**, so
> setting defines in the same script that then builds may not apply. Prefer
> `BuildPlayerOptions.extraScriptingDefines` for per-build defines.

## Scripting backend: Mono vs IL2CPP

Set the backend per target with `PlayerSettings.SetScriptingBackend(NamedBuildTarget, ScriptingImplementation)`
(`references/api/PlayerSettings.SetScriptingBackend.md`) — values are **Mono**,
**IL2CPP**, or **.NET**. Read it with `GetScriptingBackend`.

**Mono** — JIT, fast iteration, simple desktop builds. The default for quick
desktop/CI builds.

**IL2CPP** (`references/api/il2cpp-introduction.md`,
`scripting-backends-il2cpp.md`) — Unity's ahead-of-time backend: it converts IL
→ C++ → native code. **Required for many ship targets** (iOS and consoles can't
use Mono; it's the recommended/secure choice for shipping desktop too). Benefits:
better runtime perf and faster startup. Costs: longer build times and larger
binaries.

Two gotchas that ground in the docs:

1. **The IL2CPP module must be installed** with your Unity install (select it in
   Unity Hub, or add it later via *Add modules*). Without it, an IL2CPP build
   fails. (`il2cpp-introduction.md`, "Building a project with IL2CPP".)
2. **IL2CPP generally can't cross-compile** — to build an IL2CPP player for a
   platform you must build *on* that platform (build a macOS player on macOS,
   etc.). **The exception is Linux**: the Linux IL2CPP cross-compiler builds
   Linux players from Windows/macOS/Linux desktops, and Unity auto-installs the
   sysroot + toolchain when you pick the Linux target with IL2CPP set.
   (`il2cpp-introduction.md`; `linux-il2cpp-crosscompiler.md`.)

Tune IL2CPP build time/size with `PlayerSettings.SetIl2CppCodeGeneration`
(`Optimize for runtime speed` vs `Optimize for code size and build time` —
`Build.Il2CppCodeGeneration.*`) and `SetIl2CppCompilerConfiguration`
(`Debug`/`Release`/`Master` — `Il2CppCompilerConfiguration.*`).

## Build targets

`BuildTarget` (`references/api/BuildTarget.md`) is the platform enum. The ones
that matter for this project's roadmap:

| `BuildTarget` | Platform |
| --- | --- |
| `StandaloneWindows64` | Windows 64-bit (use this for Windows — see the page's note). |
| `StandaloneLinux64` | Linux 64-bit. |
| `StandaloneOSX` | macOS (set Intel/ARM/Universal via `PlayerSettings.SetArchitecture`). |
| `Android` | Android `.apk`/AAB. |
| `iOS` | iOS (builds an Xcode project). |
| `Switch` | Nintendo Switch. |
| `GameCoreXboxSeries` / `GameCoreXboxOne` | Xbox Series / One. |
| `PS5` / `PS4` | PlayStation. |
| `WebGL` | Web. |

For APIs that take a *named* target (e.g. `SetScriptingBackend`), use
`NamedBuildTarget` (`references/api/Build.NamedBuildTarget.md`): `Standalone`,
`Android`, `iOS`, `NintendoSwitch`, **`NintendoSwitch2`**, `PS4`, `PS5`,
`XboxOne`, `Server`, `WebGL`, etc. Convert with
`NamedBuildTarget.FromBuildTargetGroup` / `ToBuildTargetGroup`.

> A platform target only builds if its **Editor module is installed**
> (Windows/Mac/Linux Build Support, Android, iOS, …). Check at runtime with
> `BuildPipeline.IsBuildTargetSupported`
> (`references/api/BuildPipeline.IsBuildTargetSupported.md`). Console targets
> (Switch/Xbox/PS) require platform SDKs and licensing outside Unity's CLI.

### Dedicated server subtarget

Desktop standalone has two subtargets via `StandaloneBuildSubtarget`
(`references/api/StandaloneBuildSubtarget.md`): `Player` (default) and `Server`
("a player build optimized to run as a headless server"). Set
`BuildPlayerOptions.subtarget` to `StandaloneBuildSubtarget.Server` for a
dedicated-server build. The *networking* code that runs in that server build is
the Network Programmer's slice — see **`unity-multiplayer`**.

## Platform order (from the benchmark)

From `docs/benchmarks/main.md`, ship in this order — don't over-invest in later
platforms before the earlier ones are solid:

1. **Steam first (Windows + Linux desktop)** — non-negotiable; ~75% PC share,
   best discoverability. Build and test `StandaloneWindows64` and
   `StandaloneLinux64` first. Mono is fine to start; switch shipping builds to
   IL2CPP for perf/protection (Linux IL2CPP cross-compiles, so you can produce
   the Linux player from your Windows/macOS CI).
2. **Nintendo Switch 2** (`NamedBuildTarget.NintendoSwitch2`) — historically the
   best console for indies; needs the Switch SDK + dev kit + certification.
   Budget ~$15k-$40k per console platform for porting and cert.
3. **Xbox / PlayStation** — `GameCoreXboxSeries`/`GameCoreXboxOne`, `PS5`/`PS4`;
   each needs its own SDK and cert pass.

The benchmark's standing advice: **abstract platform-specific code (input,
save, achievements, store APIs) behind your own layers from day one** to
minimize porting friction. Localize for **Simplified Chinese** and **Brazilian
Portuguese** (each ~30% revenue uplift).

## See also

- `references/build_pipeline.md` — the build method, CLI invocation, scene list.
- `references/troubleshooting.md` — the failures that actually happen.
- `unity-multiplayer` — netcode, Relay/Lobby, and the *gameplay* side of
  dedicated servers (this skill only produces the server *build*).
