<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildMarkup-ignoreFromBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this to specify whether the GameObject and its children should be ignored.

If you set this to `true`, the GameObject and its children will not be included as part of the NavMesh.

 Set overrideIgnore to `true` in order for this property to have the intended effect. When `overrideIgnore` is `false` this property inherits the value from the markup of a parent object, if that exists, otherwise it is set to `false`.
