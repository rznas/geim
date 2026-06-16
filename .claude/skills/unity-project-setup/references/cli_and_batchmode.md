# Unity Editor CLI & batchmode

Grounded in the embedded Unity 6 manual pages
`references/api/CommandLineArguments.md`, `command-line-run-unity.md`, and
`EditorCommandLineArguments.md`. Doc-sourced; not compile-tested here (no Editor
installed — `scripts/unity.sh` exits 127 until you set `$UNITY_PATH`).

## The canonical headless invocation

Always run automation in batch mode. The manual's own CI example
(`command-line-run-unity.md`) is:

```bash
# Windows form from the docs:
# Unity.exe -quit -batchmode -projectPath "<proj>" -executeMethod MyEditorScript.PerformBuild
scripts/unity.sh -batchmode -nographics -quit \
  -projectPath /abs/path/to/Project \
  -executeMethod MyEditorScript.PerformBuild \
  -logFile -
```

What each flag does (verbatim from `EditorCommandLineArguments.md`):

| Flag | Meaning |
|------|---------|
| `-batchmode` | "Run Unity in batch mode … without the need for human interaction." Suppresses dialogs. On any exception/asset failure Unity exits with return code **1**. "Always run Unity in batch mode when using command line arguments." |
| `-nographics` | "Unity doesn't initialize the graphics device." For machines with no GPU. **Output logs are turned off in this mode** unless you also pass `-logFile`. Cannot bake GI. |
| `-quit` | "Quit the Unity Editor after other commands have finished." Note: with `-runTests`, `-quit` "causes the Editor to quit immediately, before in-progress tests have chance to complete" — do **not** combine `-quit` with `-runTests`. |
| `-projectPath <path>` | "Open the project at the given path, which can be absolute or relative to the current working directory." Quote paths with spaces. |
| `-executeMethod <Class.Method>` | "Execute the static method as soon as Unity opens the project … for tasks such as continuous integration … making builds." See gotchas below. |
| `-logFile <path>` | Write the Editor log here. **Use `-logFile -` to send it to stdout** — essential under `-nographics`, which otherwise produces no console output. |
| `-buildTarget <name>` | Select the active build target: `win64`, `linux64`, `osxuniversal`, `android`, `ios`, `webgl`, `tvos`, … Forces the platform when the project hasn't been imported yet. |
| `-version` | Prints the Editor version without launching. Cheapest "is the binary alive?" check. |

## The `-executeMethod` contract (this trips people up)

From `EditorCommandLineArguments.md`:

- The method **must be `static`**.
- The script **must live in an `Editor` folder** (or an Editor assembly) —
  because it calls `UnityEditor` APIs, which don't exist in Player builds.
  `SpecialFolders.md`: scripts under a reserved `Editor` folder "add
  functionality to the Unity Editor at authoring time but aren't available in
  Player builds at runtime."
- **To signal failure to CI:** either throw an exception (Unity exits **1**), or
  call `EditorApplication.Exit(<non-zero>)`. A silently failing method that
  returns normally exits **0** and your CI thinks the build passed.
- **To pass parameters:** add them to the command line and read them inside the
  method via `System.Environment.GetCommandLineArgs()`.

The doc's verbatim build script (from `command-line-run-unity.md`):

```csharp
using UnityEditor;
class MyEditorScript
{
     static void PerformBuild ()
     {
        BuildPlayerOptions buildPlayerOptions = new BuildPlayerOptions();
        buildPlayerOptions.scenes = new[] { "Assets/Scene1.unity", "Assets/Scene2.unity" };
        BuildPipeline.BuildPlayer(buildPlayerOptions);
     }
}
```

(Packaging/exporting full builds is the `unity-build-deploy` skill's job — this
skill only proves the project opens and compiles.)

## Creating a project from the CLI

`EditorCommandLineArguments.md` documents two creation flags — **both require an
installed Editor**:

- `-createProject <pathname>` — "Create an empty project at the given path."
- `-cloneFromTemplate <template-path>` — used *with* `-createProject` to create
  from a template archive (e.g. `com.unity.template.urp-blank-17.1.0.tgz`).
  Example (Linux): `-createProject "/home/u/Projects/MyProject" -cloneFromTemplate "/home/u/.config/UnityHub/Templates/...tgz"`.

There is **no offline / editor-less way** to generate the full project (Library
cache, .csproj, .sln). That's why `scripts/new_unity_project.sh` writes only the
portable on-disk skeleton (Assets/, Packages/manifest.json, ProjectSettings/,
.meta files, a sample asmdef) and you finish by opening once in the Editor — see
`project_layout_and_meta.md`.

## Other useful flags

- `-rebuildLibrary` — "deletes the `Library` project subdirectory, which triggers
  a full reimport of all assets." The supported fix for a corrupted asset DB.
- `-noUpm` — disables the Package Manager.
- `-disable-assembly-updater` — skip the API Updater when importing prebuilt DLLs.
- `-accept-apiupdate` — required to let the API Updater run *in batch mode*;
  omit it and you may hit compiler errors after a version bump.
- `-quitTimeout <s>` — `-quit` waits for async tasks (default 300s); override here.

Running PlayMode/EditMode tests headless is the `unity-qa-testing` skill's domain;
the relevant flags (`-runTests`, `-testPlatform`, `-testResults`) live there.

## Exit codes

- `0` — success.
- `1` — batch-mode exception, asset-server failure, or any operation failure
  (`-batchmode` "immediately exits with return code 1").
- Your own `EditorApplication.Exit(n)` value, when you call it.

So a CI gate is simply: run the command, check `$?`, grep the `-logFile -` output
for `error CS` (compiler errors) or your own success marker.
