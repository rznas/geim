<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| submesh | The sub-mesh index. See subMeshCount. |
| applyBaseVertex | True (default value) will apply base vertex offset to returned indices. |
| meshLod | The Mesh LOD index. Use -1 to get the entire sub-mesh. |

### Returns

**int[]** Array with face indices.

### Description

Fetches the index list for the specified sub-mesh.

Each integer in the returned list is a vertex index, which is used as an offset into the Mesh's vertex arrays. See vertices and GetVertices. The layout of the indices depends on the MeshTopology of the sub-mesh. For example, a triangular mesh will return indices in multiples of three.

A sub-mesh represents a list of triangles (or indices with a different MeshTopology) that are rendered using a single Material. When the Mesh is used with a Renderer that has multiple materials, you should ensure that there is one sub-mesh per Material.

Call the method overload with a `List` parameter if you control the life cycle of the index buffer and wish to avoid allocation of a new array with every access.

Additional resources: subMeshCount, GetTopology, MeshTopology enum, AcquireReadOnlyMeshData function.

### Parameters

| Parameter | Description |
| --- | --- |
| indices | A list of indices to populate. |
| submesh | The sub-mesh index. See subMeshCount. |
| applyBaseVertex | True (default value) will apply base vertex offset to returned indices. |
| meshLod | The Mesh LOD index. |

### Description

Use this method overload if you control the life cycle of the list passed in and you want to avoid allocating a new array with every access.
