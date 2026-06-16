<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Editor.AdaptivePerformanceSupportedBuildTargetAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Build attribute to identify which platforms a loader supports.

### Properties

| Property | Description |
| --- | --- |
| buildTargetGroup | String representation of UnityEditor.Build.BuildTargetGroup. |
| buildTargets | Array of BuildTargets, each of which is the representation of UnityEditor.Build.BuildTarget aligned with buildTargetGroup. Currently only advisory. |

### Constructors

| Constructor | Description |
| --- | --- |
| AdaptivePerformanceSupportedBuildTargetAttribute | Constructor for attribute. We assume that all build targets for this group will be supported. |
