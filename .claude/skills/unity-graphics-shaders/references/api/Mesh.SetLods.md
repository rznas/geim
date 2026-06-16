<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetLods.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| flags | Mesh update flags. If set to DontValidateIndices, then index range validation is skipped. |
| start | Starting index in the array. |
| count | Count of elements in array. |
| submesh | The sub-mesh index to set LODS for. |
| levelRanges | Index ranges for the mesh. |

### Description

Sets the Mesh LOD ranges (index start and index count) for a given sub-mesh with an array.

Note that each Mesh LOD range should be relative to the sub-mesh holding the LOD. See MeshLodRange for more information.

### Parameters

| Parameter | Description |
| --- | --- |
| submesh | Sub-mesh index to set LODs for. |
| levelRanges | Index ranges for the mesh. |
| flags | Mesh update flags. If set to DontValidateIndices, then index range validation is skipped. |
| start | Starting index in the array. |
| count | Count of elements in array. |

### Description

Sets the Mesh LOD ranges (index start and index count) for a given sub-mesh and Mesh LOD with a list.

Note that each Mesh LOD range should be relative to the sub-mesh holding the LOD. See MeshLodRange for more information.

### Parameters

| Parameter | Description |
| --- | --- |
| submesh | Sub-mesh index to set LODs for. |
| levelRanges | Index ranges for the mesh. |
| flags | Mesh update flags. If set to DontValidateIndices, then index range validation is skipped. |
| start | Starting index in the array. |
| count | Count of elements in array. |

### Description

Set a LOD ranges for a given submesh with a NativeArray.

Note that each Mesh LOD range should be relative to the sub-mesh holding the LOD. See MeshLodRange for more information.
