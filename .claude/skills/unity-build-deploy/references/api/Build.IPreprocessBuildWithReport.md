<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IPreprocessBuildWithReport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement this interface to execute code at the start of the Player build process.

This interface is replaced by IPreprocessBuildWithContext, which works for AssetBundle builds as well.

At the start of a Player build, Unity uses the IOrderedCallback.callbackOrder property on each implementation to determine the order in which to invoke the callbacks.

This callback can be useful for automated tasks and ensuring your build environment is correctly configured.

Example usages include:

- For validation checks, e.g. confirming required build settings, environmental variables, content or other project-specific conditions. When possible you can automatically fix problems by changing settings. Or you can fail the build, by throwing a BuildFailedException along with a clear error message.
- To make sure required Assets are included in the build. See PlayerSettings.SetPreloadedAssets.
- To generate version numbers, change logs, link.xml files or other content that should be regenerated prior to each Player build.
- For logging, reporting or sending analytics.

Note: Build callbacks are a powerful feature, but it is strongly recommended that their implementations maintain deterministic build outputs. The result of a build should be predictable and reproducible, based on the project’s content, the Unity version, and installed packages. Introducing environment-specific behavior, external dependencies, randomness, or other non-deterministic elements can lead to outcomes that are challenging to debug or reproduce. This unpredictability may also compromise the efficiency and accuracy of incremental builds or incremental upgrades.

Additional resources: BuildPlayerProcessor.PrepareForBuild, IPostprocessBuildWithReport, BuildPlayerProcessor, BuildPipeline.BuildPlayer.

```csharp
using System;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;class BuildScheduleEnforcer : IPreprocessBuildWithReport
{
    public int callbackOrder { get { return 100; } }
    public void OnPreprocessBuild(BuildReport report)
    {
        if (DateTime.Now.DayOfWeek == DayOfWeek.Thursday)
            // Force the build to fail. This message will appear in the console and Editor log.
            throw new BuildFailedException("No builds are allowed on Thursdays");
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| OnPreprocessBuild | Implement this method to receive a callback before the build is started. |
