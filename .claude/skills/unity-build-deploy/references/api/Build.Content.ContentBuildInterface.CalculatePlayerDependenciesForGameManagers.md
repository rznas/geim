<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ContentBuildInterface.CalculatePlayerDependenciesForGameManagers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settings | Settings for dependency calculation. |
| globalUsage | Global usage tag for lighting and fog modes in use in the project. |
| usageSet | Output usage tags generated from dependency calculation. |
| usageCache | Optional cache object to use for improving performance with multiple calls to this api. |
| mode | Specifies how to calculate dependencies between internal Unity game managers and game assets. |

### Returns

**GameManagerDependencyInfo** The calculated dependencies for internal Unity game manager classes.

### Description

Calculates dependency information for various internal Unity game manager classes.

Internal use only. See note on ContentBuildInterface.
