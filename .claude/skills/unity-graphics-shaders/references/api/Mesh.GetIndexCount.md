<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetIndexCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| submesh | The index of the sub-mesh to get the indices for. See subMeshCount. |

### Returns

**uint** The index count.

### Description

Gets the index count of the given `sub-mesh`. If the mesh contains Mesh LODs, the index count of LOD0.

Additional resources: SetIndices, GetIndexStart.

### Parameters

| Parameter | Description |
| --- | --- |
| submesh | The index of the sub-mesh to get the indices for. See subMeshCount. |
| meshLod | The Mesh LOD index. A value of -1 gets the count for the sub-mesh. |

### Returns

**uint** The index count.

### Description

Gets the index count of the given `sub-mesh` and level of detail. When meshlod has a value of -1, this returns the index count for the specified sub-mesh (which can include multiple LODs).
