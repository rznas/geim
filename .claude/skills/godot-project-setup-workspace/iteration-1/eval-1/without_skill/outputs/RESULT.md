# RESULT — Fixing the offline Godot C# build (without_skill)

## What was wrong

The build died with `Unable to find package Godot.NET.Sdk`. Two distinct problems were
blocking an offline build:

1. **Bad NuGet source.** `nuget.config` did `<clear />` (removing nuget.org and every
   other default source) and then pointed the only remaining source at a path that does
   not exist:

   ```
   /wrong/path/that/does/not/exist/nupkgs
   ```

   With nuget.org cleared and the bundled path bogus, there was nowhere to resolve
   `Godot.NET.Sdk/4.6.3` from — hence the error. The Godot mono distribution actually
   ships these packages locally at:

   ```
   /home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/GodotSharp/Tools/nupkgs
   ```

   (contains `Godot.NET.Sdk.4.6.3.nupkg`, `GodotSharp.4.6.3.nupkg`,
   `GodotSharpEditor.4.6.3.nupkg`, `Godot.SourceGenerators.4.6.3.nupkg`).

2. **Target framework not available offline.** After fixing the source, restore failed on
   `Microsoft.NETCore.App.Ref` / `Microsoft.AspNetCore.App.Ref`. The project targeted
   `net8.0`, but this machine only has the **.NET 10** SDK installed
   (`dotnet --list-sdks` → `10.0.109`, no .NET 8 SDK or .NET 8 reference packs). The .NET 8
   reference packs only exist on nuget.org, so a `net8.0` build cannot be satisfied offline
   here. The .NET 10 reference packs *are* present locally
   (`/usr/lib/dotnet/packs/Microsoft.NETCore.App.Ref/10.0.9`), so retargeting to `net10.0`
   makes the build fully offline-resolvable with the SDK that is actually installed.

## What I changed

### 1. `nuget.config` — pointed the source at the real bundled package folder

Final contents:

```xml
<?xml version="1.0" encoding="utf-8"?>
<configuration>
  <packageSources>
    <clear />
    <add key="GodotBundled" value="/home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/GodotSharp/Tools/nupkgs" />
  </packageSources>
</configuration>
```

`<clear />` is kept on purpose: it guarantees nuget.org is never consulted, so the build
is provably offline — it can only resolve packages from the local Godot bundle (plus the
SDK's own local `library-packs`/`packs`, which ship with the dotnet install).

### 2. `BrokenGame.csproj` — retargeted `net8.0` → `net10.0`

Final contents:

```xml
<Project Sdk="Godot.NET.Sdk/4.6.3">
  <PropertyGroup>
    <TargetFramework>net10.0</TargetFramework>
    <EnableDynamicLoading>true</EnableDynamicLoading>
  </PropertyGroup>
</Project>
```

This matches the only .NET SDK/runtime installed on the machine (10.0.x), whose reference
packs are already present locally — no internet needed.

## Exact build command

```bash
cd /tmp/eval-broken-baseline && \
  DOTNET_CLI_HOME=/tmp/iso1b NUGET_PACKAGES=/tmp/iso1b/pkgs dotnet build *.csproj --no-incremental
```

The isolated `NUGET_PACKAGES=/tmp/iso1b/pkgs` cache ensures a pre-warmed global cache
cannot mask the fix. After the build, that fresh isolated cache contained only:

```
godot.net.sdk
godotsharp
godotsharpeditor
godot.sourcegenerators
```

i.e. everything was restored from the local Godot bundle — no nuget.org hit. The build was
also re-run from two additional fresh isolated caches (one with `--disable-build-servers`)
and succeeded identically each time, confirming reproducible offline behavior.

## Did it succeed?

**Yes.** Final output:

```
  Restored /tmp/eval-broken-baseline/BrokenGame.csproj (in 787 ms).
  BrokenGame -> /tmp/eval-broken-baseline/.godot/mono/temp/bin/Debug/BrokenGame.dll

Build succeeded.
    0 Warning(s)
    0 Error(s)
```

**Build succeeded** — fully offline, resolving only from the bundled Godot NuGet source and
the locally installed .NET 10 reference packs.
