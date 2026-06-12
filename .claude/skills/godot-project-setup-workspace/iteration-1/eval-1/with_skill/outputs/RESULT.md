# Eval Result: Fix offline Godot C# build (`Godot.NET.Sdk` not found)

## What was wrong

`dotnet build` failed with `Unable to find package Godot.NET.Sdk` because the
project's `nuget.config` pointed its only package source at a path that does not
exist:

```xml
<add key="GodotBundled" value="/wrong/path/that/does/not/exist/nupkgs" />
```

Because that source `<clear />`-ed all defaults and listed only a bogus directory,
NuGet had nowhere to find `Godot.NET.Sdk` — and with no network it could not fall
back to nuget.org either. The `Godot.NET.Sdk/4.6.3` reference in `BrokenGame.csproj`
was actually correct; the problem was purely the feed path.

The real, SDK-bearing feed is the one bundled inside the Godot mono install:

```
/home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/GodotSharp/Tools/nupkgs/
  Godot.NET.Sdk.4.6.3.nupkg   <-- the package the build needs
  GodotSharp.4.6.3.nupkg
  GodotSharpEditor.4.6.3.nupkg
  Godot.SourceGenerators.4.6.3.nupkg
```

`Godot.NET.Sdk.4.6.3.nupkg` matches the `4.6.3` SDK version already in the csproj,
so no csproj change was needed.

## What I changed

Only `nuget.config` was edited. The `GodotBundled` source now points at the real
bundled nupkgs directory (listed first so it is preferred and works with no
network), with nuget.org kept second so external packages can still restore when
online. This is the skill's offline-safe pattern (`assets/nuget.config`).

Final `nuget.config`:

```xml
<?xml version="1.0" encoding="utf-8"?>
<!--
  Bundled SDK feed first so `dotnet build` restores Godot.NET.Sdk offline and
  pinned to this editor install. nuget.org is kept second so external packages
  still restore when a network is available.
-->
<configuration>
  <packageSources>
    <clear />
    <add key="GodotBundled" value="/home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/GodotSharp/Tools/nupkgs" />
    <add key="nuget.org" value="https://api.nuget.org/v3/index.json" />
  </packageSources>
</configuration>
```

## Exact build command (isolated cache to prove the fix is offline-robust)

```bash
cd /tmp/eval-broken && DOTNET_CLI_HOME=/tmp/iso1 NUGET_PACKAGES=/tmp/iso1/pkgs dotnet build *.csproj --no-incremental
```

Using a throwaway `NUGET_PACKAGES=/tmp/iso1/pkgs` guarantees no pre-warmed global
NuGet cache could mask a still-broken config — restore has to come from the
configured sources. The bundled feed alone satisfied `Godot.NET.Sdk`, so no
network was required.

## Result: SUCCEEDED

```
  Determining projects to restore...
  Restored /tmp/eval-broken/BrokenGame.csproj (in 6.53 sec).
  BrokenGame -> /tmp/eval-broken/.godot/mono/temp/bin/Debug/BrokenGame.dll

Build succeeded.
    0 Warning(s)
    0 Error(s)
```

Verified reproducible in a second, fresh isolated cache (`/tmp/iso2`) — also
`Build succeeded`, 0 warnings / 0 errors, producing
`.godot/mono/temp/bin/Debug/BrokenGame.dll`.
