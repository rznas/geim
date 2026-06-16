# The build pipeline: `BuildPipeline.BuildPlayer` + `-executeMethod`

Everything here is grounded in the embedded Unity 6 (6000.x) pages under
`references/api/`. Not compile-tested in this environment (no Editor installed).

## The shape of a command-line build

There is **no pure-CLI flag that bundles your scenes into a player**. A robust
command-line build has two halves:

1. **An editor C# build script** — a `public static` method that builds a
   `BuildPlayerOptions` and calls `BuildPipeline.BuildPlayer(...)`. It must live
   in an **Editor assembly** (`Assets/Editor/…`) because it uses the
   `UnityEditor` namespace.
2. **A command line** that launches Unity headless and runs that method:

   ```bash
   unity.sh -batchmode -nographics -quit \
            -projectPath /abs/Project \
            -executeMethod BuildScript.Build \
            -buildTarget StandaloneLinux64 \
            -logFile /abs/build.log
   ```

Source: `references/api/build-command-line.md`,
`references/api/BuildPipeline.BuildPlayer.md`.

> Unity 6 also added a no-script `-build` flag that builds from a build target
> or a saved **build profile** (`-activeBuildProfile`). It is fine for the
> simplest case, but the `-executeMethod` + custom script path is what you want
> for CI: you control the scene list, output path, defines, and post-build
> steps. (`build-command-line.md`, "Build type" table.)

## The required and recommended CLI arguments

From `references/api/build-command-line.md`:

| Arg | Role |
| --- | --- |
| `-projectPath <path>` | **Required.** Path to the Unity project. |
| `-quit` | **Required.** Exit the Editor when the method returns. |
| `-batchmode` | Recommended. No GUI. |
| `-nographics` | Recommended on headless/CI machines (no GPU/display). |
| `-logFile <path>` | Recommended. The Editor log — your only window into a failed build. |
| `-executeMethod <Class.Method>` | The static build method to run. |
| `-buildTarget <target>` | Start Unity with the correct platform configuration. |

## `BuildPipeline.BuildPlayer(BuildPlayerOptions)`

The current API takes a single `BuildPlayerOptions` struct and returns a
`BuildReport`. From `references/api/BuildPipeline.BuildPlayer.md` (Unity's own
example, verbatim shape):

```csharp
using UnityEditor;
using UnityEngine;
using UnityEditor.Build.Reporting;

public class BuildPlayerExample
{
    [MenuItem("Build/Build iOS")]
    public static void MyBuild()
    {
        BuildPlayerOptions buildPlayerOptions = new BuildPlayerOptions();
        buildPlayerOptions.scenes = new[] { "Assets/Scene1.unity", "Assets/Scene2.unity" };
        buildPlayerOptions.locationPathName = "iOSBuild";
        buildPlayerOptions.target = BuildTarget.iOS;
        buildPlayerOptions.options = BuildOptions.None;

        BuildReport report = BuildPipeline.BuildPlayer(buildPlayerOptions);
        BuildSummary summary = report.summary;

        if (summary.result == BuildResult.Succeeded)
            Debug.Log("Build succeeded: " + summary.totalSize + " bytes");
        if (summary.result == BuildResult.Failed)
            Debug.Log("Build failed");
    }
}
```

Two older/alternate overloads exist (from the same page): a legacy
`BuildPlayer(string[] levels, string locationPathName, BuildTarget, BuildOptions)`
(still supported but being replaced), and a profile-based
`BuildPlayer(BuildPlayerWithProfileOptions)`. Prefer the `BuildPlayerOptions`
form.

### `BuildPlayerOptions` fields

From `references/api/BuildPlayerOptions.md`:

| Field | Meaning |
| --- | --- |
| `scenes` | The scenes to include (string paths). **If empty, only the currently open scene builds** — in batch mode that means a near-empty build. (`BuildPlayerOptions-scenes.md`) |
| `locationPathName` | Output path for the built application (include the platform extension). |
| `target` | The `BuildTarget`. |
| `targetGroup` | The `BuildTargetGroup` (optional alongside `target`). |
| `subtarget` | The subtarget — e.g. desktop **Player vs Server** (`StandaloneBuildSubtarget`). |
| `options` | `BuildOptions` flags (e.g. `Development`, `AutoRunPlayer`). |
| `extraScriptingDefines` | Extra `#define` symbols appended to Player settings. |

## The explicit scene list

`scenes` is an **explicit array of paths relative to the project folder**
(e.g. `"Assets/MyLevels/MyScene.unity"`). Source the list from the Build
Profiles / Build Settings scene list via `EditorBuildSettings.scenes`, which
returns `EditorBuildSettingsScene[]` — each entry has `.path` and `.enabled`
(`references/api/EditorBuildSettings.md`,
`references/api/EditorBuildSettingsScene.md`).

The `BuildScript.cs.template` does exactly this:

```csharp
buildPlayerOptions.scenes = EditorBuildSettings.scenes
    .Where(scene => scene.enabled)
    .Select(scene => scene.path)
    .ToArray();
```

If the list is empty you get an empty build, so the template throws rather than
ship one. (`references/api/EditorBuildSettings-scenes.md`,
`references/api/BuildPlayerOptions-scenes.md`.)

## Don't switch the build target inside the script

`build-command-line.md` is explicit: setting `BuildPlayerOptions.target` (and
`EditorUserBuildSettings.SwitchActiveBuildTargetAsync`,
`BuildProfile.SetActiveBuildProfile`, …) to **change** platforms does NOT work
as expected in batch mode, because switching the target forces a domain reload
and recompile that can't happen while your script is running. The wrong defines
(`UNITY_STANDALONE_WIN`, `UNITY_ANDROID`, …) can leak into the wrong build.

The fix: **pass `-buildTarget <T>` on the command line** so Unity starts on the
right platform, then read it back with `EditorUserBuildSettings.activeBuildTarget`
(`references/api/EditorUserBuildSettings-activeBuildTarget.md`). You **cannot
build multiple targets in one invocation** — run Unity once per target.

## Reading the result: `BuildReport`

`BuildPipeline.BuildPlayer` returns a `BuildReport`
(`references/api/Build.Reporting.BuildReport.md`). Check `report.summary`
(`BuildSummary`) for:

- `result` — `BuildResult.Succeeded` / `Failed` / `Cancelled` / `Unknown`
  (`Build.Reporting.BuildResult.*`)
- `outputPath`, `totalSize`, `totalTime`, `totalErrors`, `totalWarnings`
  (`Build.Reporting.BuildSummary-*`)
- `report.SummarizeErrors()` for a one-string error digest
  (`Build.Reporting.BuildReport.SummarizeErrors.md`)

In batch mode, **throw** on a failed result — Unity then exits non-zero so CI
catches it. (The template does this.)

## See also

- `references/api/BuildPipeline.md` — full method list (also `BuildAssetBundles`,
  `IsBuildTargetSupported`, `GetBuildTargetName`).
- `references/api/BuildOptions.md` — every build flag (`Development`,
  `AllowDebugging`, `AutoRunPlayer`, `CleanBuildCache`, `StrictMode`, …).
- `references/player_settings_and_platforms.md` — PlayerSettings, scripting
  backends, per-platform notes, the benchmark platform order.
