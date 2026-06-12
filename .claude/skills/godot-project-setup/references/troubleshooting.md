# Godot C# setup troubleshooting

The errors below cover almost every C# setup failure. Each is a quick fix.

## `Unable to find package Godot.NET.Sdk` / NuGet restore fails

The SDK isn't being found. Cause is usually a missing or wrong `nuget.config`.

- Confirm the bundled feed exists:
  `ls "$(dirname "$GODOT4")/GodotSharp/Tools/nupkgs/"` should list
  `Godot.NET.Sdk.<ver>.nupkg`.
- Ensure the project's `nuget.config` lists that dir as a `packageSource`.
  `scripts/new_project.sh` writes this; copy `assets/nuget.config` and fix the
  path if you're retrofitting.
- The SDK version in `<Name>.csproj` (`Sdk="Godot.NET.Sdk/X.Y.Z"`) must match a
  nupkg that actually exists. Read the real version:
  `ls .../nupkgs/Godot.NET.Sdk.*.nupkg`.

## `Cannot find class X for script res://.../X.cs`

The class name doesn't match the file name. Godot binds a `.cs` file to the
class whose name equals the file's basename. `Player.cs` must contain
`public partial class Player`. Rename one to match the other.

Also check the class is `partial` and inherits a Godot type (`Node`, `Node2D`,
`Resource`, …). Non-partial classes won't get the generated half and won't bind.

## `CS1612: Cannot modify the return value of '...Position'`

Godot structs (`Vector2`, `Vector3`, `Transform3D`, …) are value types — C#
hands you a copy. `Position.X = 5f` mutates a throwaway. Reassign the whole
struct:

```csharp
var p = Position; p.X = 5f; Position = p;
// or, C# 10+:
Position = Position with { X = 5f };
```

## Exported `[Export]` vars or signals don't show up in the editor

C# changes only take effect after a rebuild. The editor reads compiled
assemblies, not source. Run `dotnet build` (or click Build in the GUI). Same for
`[Tool]` scripts.

## Build is clean but `--import` errors, or behavior is stale

Delete the regenerated cache and reimport:

```bash
rm -rf <dir>/.godot/mono
scripts/godot.sh --headless --path <dir> --import
```

Everything under `.godot/` is disposable — never commit it, and deleting it
forces a clean regenerate. This fixes most "it worked yesterday" issues.

## `dotnet` not found / wrong version

Need the .NET 8 SDK or newer (`dotnet --version`). Godot 4.6 bundles the
*runtime* to play compiled games but not the SDK to build them — install the SDK
separately from https://dotnet.microsoft.com/download.

## Headless run prints nothing

`--quit` exits before the first frame, so `_Ready` may not run. Use
`--quit-after 2` (run 2 frames, then exit). Confirm `run/main_scene` is set in
`project.godot` and the scene's script actually prints. Add `--verbose` to see
load errors.

## Web export fails for a C# project

Known limitation: **Godot 4 cannot export C# to web.** Desktop (Linux/Win/macOS)
works; Android/iOS are experimental. There is no fix — choose a desktop target
or use GDScript for web. See the export skill for platform support details.
