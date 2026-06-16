<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.ContentBuildInterface.CalculatePlayerDependenciesForScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| usageCache | Optional cache object to use for improving performance with multiple calls to this api. |
| scenePath | Input path of the Scene for dependency calculation. |
| settings | Settings for dependency calculation. |
| usageSet | Output usage tags generated from dependency calculation. |

### Returns

**SceneDependencyInfo** Dependency information for the Scene.

### Description

Calculates the Scene dependency information.

Internal use only. See note on ContentBuildInterface.
