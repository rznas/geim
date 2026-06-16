<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetLod.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| subMeshIndex | Sub-mesh to set LOD for. |
| level | Level to set. |
| levelRange | Range for the set LOD. |
| flags | Mesh update flags. If set to DontValidateIndices, then index range validation is skipped. |

### Description

Sets a Mesh LOD range (index start and index count) for a given sub-mesh and level of detail.

Note that the Mesh LOD range should be relative to the sub-mesh holding the LOD. See MeshLodRange for more information.
