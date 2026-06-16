<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.ProjectAuditor.OnPostprocessBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| report | A report containing information about the build, such as its target platform and output path. |

### Description

Callback function which is called after a build is completed. If UserPreferences.AnalyzeAfterBuild is true, performs a full audit and logs the number of issues found.
