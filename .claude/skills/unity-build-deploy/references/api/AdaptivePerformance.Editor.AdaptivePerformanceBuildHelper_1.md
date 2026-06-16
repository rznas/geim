<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Editor.AdaptivePerformanceBuildHelper_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base abstract class that provides some common functionality for providers seeking to integrate with management assisted build.

### Properties

| Property | Description |
| --- | --- |
| BuildSettingsKey | Override of base IPreprocessBuildWithReport. |
| callbackOrder | Override of base IPreprocessBuildWithReport. |

### Public Methods

| Method | Description |
| --- | --- |
| OnPostprocessBuild | Override of base IPostprocessBuildWithReport. |
| OnPreprocessBuild | Override of base IPreprocessBuildWithReport. |
| SettingsForBuildTargetGroup | Helper function to return current settings for a specific build target. |
