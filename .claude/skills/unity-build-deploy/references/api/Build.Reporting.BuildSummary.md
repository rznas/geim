<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Reporting.BuildSummary.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains overall summary information about a build.

### Properties

| Property | Description |
| --- | --- |
| buildEndedAt | The time the build ended. |
| buildStartedAt | The time the build was started. |
| buildType | The type of build. |
| dataPath | The platform-specific path of the Data folder for a player build. For AssetBundle builds, this value of this will be identical to the output path. |
| guid | The Application.buildGUID of the build. |
| multiProcessEnabled | Whether the multi-process option was enabled for the build. |
| options | The BuildOptions used for the build, as passed to BuildPipeline.BuildPlayer. |
| outputPath | The output path for the build, as provided to BuildPipeline.BuildPlayer. |
| platform | The platform that the build was created for. |
| platformGroup | The platform group the build was created for. |
| result | The outcome of the build. |
| totalErrors | The total number of errors and exceptions recorded during the build process. |
| totalSize | The total size of the build output, in bytes. |
| totalTime | The total time taken by the build process. |
| totalWarnings | The total number of warnings recorded during the build process. |

### Public Methods

| Method | Description |
| --- | --- |
| GetSubtarget | The subtarget that the build was created for. |
