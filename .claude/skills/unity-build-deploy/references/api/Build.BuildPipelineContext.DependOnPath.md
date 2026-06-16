<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.BuildPipelineContext.DependOnPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path of the dependency. |

### Description

Allows you to specify that a Scene depends on contents of a source asset at the provided path.

Scene rebuild will be triggered if either of the conditions are true: * The asset at the path changes * The asset at the path moves.
