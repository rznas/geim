<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildMarkup-overrideIgnore.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set this to `true` in order to enable the ignoreFromBuild property.

In the case when a `NavMeshBuildMarkup` is used to change only the area type of an object, `overrideIgnore` should be set to `false` so that the `ignoreFromBuild` property will not have any effect.

 If none of the objects in a hierarchy are marked with `ignoreFromBuild` set to `true` then no objects in that hierarchy will be ignored while building the NavMesh.
