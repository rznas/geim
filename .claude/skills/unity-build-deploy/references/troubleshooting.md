# Build & deploy troubleshooting

The handful of failures that account for most command-line / CI build problems.
Grounded in the embedded Unity 6 (6000.x) pages under `references/api/`.

## "It runs but produces no build" — bad `-executeMethod`

Symptom: Unity launches, logs, and quits 0, but no artifact appears (or the
method never ran).

Causes & fixes:
- **Method not `public static` / wrong signature.** `-executeMethod` runs a
  `public static` method that takes **no parameters**. A non-static, private, or
  parameterised method is silently skipped. Read CLI extras with
  `Environment.GetCommandLineArgs()`, not method parameters.
- **Wrong fully-qualified name.** `-executeMethod BuildScript.Build` must match
  the class+method exactly (include the namespace if the class has one:
  `MyCo.Build.BuildScript.Build`).
- **Script not in an Editor assembly.** Anything using the `UnityEditor`
  namespace must live under `Assets/Editor/` (or an asmdef marked Editor-only).
  Otherwise it won't be compiled into an editor-runnable method *and* it breaks
  the player build.
- **Compile error in the project.** If C# doesn't compile, the method can't run.
  Read the `-logFile` — the compile error is at the top.

## "Build is empty / black screen" — no scenes in the list

Symptom: the player launches to nothing, or `totalSize` is tiny.

Cause: `BuildPlayerOptions.scenes` was empty, so per
`references/api/BuildPlayerOptions-scenes.md` Unity built **only the currently
open scene** — and in batch mode nothing is "open."

Fix: populate the list explicitly. The template pulls enabled scenes from the
Build Profiles scene list and throws if it's empty:

```csharp
buildPlayerOptions.scenes = EditorBuildSettings.scenes
    .Where(s => s.enabled).Select(s => s.path).ToArray();
```

Add scenes in **File > Build Profiles** (Scene List), or set
`EditorBuildSettings.scenes` from script
(`references/api/EditorBuildSettings-scenes.md`).

## "IL2CPP build fails" — module not installed / wrong host OS

Symptom: build dies during the IL2CPP / native-compile step, or complains the
backend is unavailable.

Causes & fixes (`references/api/il2cpp-introduction.md`):
- **IL2CPP module not installed.** IL2CPP is an optional module per Unity
  install — add it in Unity Hub (*Add modules*). Without it, IL2CPP builds fail.
- **Cross-compiling IL2CPP to the wrong OS.** IL2CPP generally needs to build
  *on* the target's OS (macOS player on macOS, etc.). **Exception: Linux** — the
  Linux IL2CPP cross-compiler builds Linux players from any desktop, and Unity
  auto-installs the sysroot + toolchain when you select the Linux target with
  IL2CPP (`references/api/linux-il2cpp-crosscompiler.md`). For iOS/console
  IL2CPP, build on the right host.
- **Build too slow / too big.** Set `Il2CppCodeGeneration` to *Optimize for code
  size and build time*, exclude the project from anti-malware scans, and use a
  fast disk (`il2cpp-introduction.md`, "Optimizing IL2CPP build times").

## "Wrong target / wrong code in the build"

Symptom: built for the wrong platform, or platform `#if` defines look wrong.

Cause: trying to **switch** the build target inside the batch-mode script.
`references/api/build-command-line.md` lists `BuildPlayerOptions.target`,
`EditorUserBuildSettings.SwitchActiveBuildTargetAsync`, and
`BuildProfile.SetActiveBuildProfile` as **not working as expected** in batch
mode — switching needs a domain reload that can't happen mid-script, so the
previous platform's defines leak in.

Fix: select the platform with **`-buildTarget <T>` on the command line** and
read it back via `EditorUserBuildSettings.activeBuildTarget`. Run Unity **once
per target** — you can't build multiple platforms in one invocation.

## "Target not supported in this Editor"

Cause: the platform's **Build Support module** isn't installed (Windows/Mac/
Linux Build Support, Android, iOS, …). Console targets also need their platform
SDK + license.

Fix: install the module in Unity Hub; verify in script with
`BuildPipeline.IsBuildTargetSupported`
(`references/api/BuildPipeline.IsBuildTargetSupported.md`).

## "Output path error"

- Unity does **not** create missing parent directories for
  `locationPathName` — create the output dir first (`build.sh` does `mkdir -p`).
- Include the correct **platform extension** (`.exe`, `.x86_64`, `.app`,
  `.apk`). The template's `DefaultOutputPath` shows the per-target conventions.

## "No Unity Editor here — exit 127" (THIS environment)

`scripts/unity.sh` (and therefore `build.sh`) exits **127** with install
instructions because no Unity 6 Editor is installed in this environment. **This
is expected**, not a bug in the scripts. `build.sh` detects 127 and explains it.

To run a real build: install Unity 6 (6000.x) + the platform module via Unity
Hub, `export UNITY_PATH=/path/to/Hub/Editor/6000.x.y/Editor/Unity`, and re-run.
Until then this skill is **doc-sourced from the embedded Unity 6 ScriptReference
(`references/api/`), not compile-tested**.

## Reading failures

Always pass `-logFile <path>` and read it. The `BuildReport`
(`references/api/Build.Reporting.BuildReport.md`) also surfaces the cause:
`report.summary.result`, `report.summary.totalErrors`, and
`report.SummarizeErrors()`. The template throws on a non-`Succeeded` result so
the process exits non-zero and CI fails the step.
