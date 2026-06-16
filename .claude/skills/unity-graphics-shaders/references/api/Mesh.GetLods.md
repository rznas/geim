<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetLods.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| subMeshIndex | Sub-mesh index to get LOD ranges from. |

### Returns

**MeshLodRange[]** Index ranges for all LODs in this sub-mesh.

### Description

Gets an array containing the Mesh LOD ranges (index start and index count) for a given Mesh LOD.

Note that the Mesh LOD range is relative to the sub-mesh holding the LOD. See MeshLodRange for more information.

### Parameters

| Parameter | Description |
| --- | --- |
| levelRanges | List to store LOD ranges for all LODs in this sub-mesh. |
| submesh | Sub-mesh to get LODs from. |

### Description

Gets all index ranges for a given sub-mesh.

Note that the Mesh LOD range is relative to the sub-mesh holding the LOD. See MeshLodRange for more information.
