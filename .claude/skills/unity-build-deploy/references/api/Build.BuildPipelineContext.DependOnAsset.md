<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.BuildPipelineContext.DependOnAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| asset | The Unity Object from an asset. |

### Description

Allows you to specify that a Scene depends on contents of an asset directly provided.

Scene rebuild will be triggered if the condition is true: * if the asset or any of its dependencies changes.
