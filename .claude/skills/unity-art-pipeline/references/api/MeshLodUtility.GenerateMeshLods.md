<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshLodUtility.GenerateMeshLods.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | Mesh to generate LODs for. |
| meshLodLimit | The maximum number of LOD levels to generate. If the value is 0, the method does not generate any extra LOD levels in addition to the original mesh. If the value is negative, the generation process stops when the next Mesh LOD level has around 64 indices. |
| flags | Mesh Generation settings. |

### Description

Creates automatic Mesh LOD for a given mesh.
