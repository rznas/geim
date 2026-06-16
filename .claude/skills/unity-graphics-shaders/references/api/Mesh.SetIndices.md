<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| indices | The array of indices that define the mesh faces. |
| topology | The topology of the Mesh, e.g: Triangles, Lines, Quads, Points, etc. See MeshTopology. |
| submesh | The sub-mesh to modify. |
| calculateBounds | Calculate the bounding box of the sub-mesh after setting the indices. Unity does this by default. Use false when you want to use the existing bounding box and reduce the CPU cost of setting the indices. |
| baseVertex | Optional vertex offset that is added to all vertex indices. |
| meshLod | The Mesh LOD to modify. Use -1 to modify the entire sub-mesh. If not provided, LOD0 is modified. |

### Description

Sets the index buffer for the sub-mesh.

A sub-mesh represents a list of triangles (or indices with a different MeshTopology) that are rendered using a single Material. When the Mesh is used with a Renderer that has multiple materials, you should ensure that there is one sub-mesh per Material.

SetTriangles and triangles always set the Mesh to be composed of triangle faces. Use SetIndices to create a Mesh composed of lines or points.

The `baseVertex` argument can be used to achieve meshes that are larger than 65536 vertices while using 16 bit index buffers, as long as each sub-mesh index fits within its own 65535 value range. For example, if the index buffer that is passed to SetIndices contains indices 10,11,12 and `baseVertex` is set to 100000, then effectively vertices 100010, 100011 and 100012 will be used for rendering.

Note that meshes use 16-bit indexFormat by default, i.e. the maximum value supported in the index buffer is 65535 (even when using int[] input data). In order to use larger index buffer values, you should first set the indexFormat to IndexFormat.UInt32.

Call Mesh.RecalculateBounds after updating all sub-meshes if you want to update the Mesh's bounding box.

Additional resources: subMeshCount, MeshTopology, indexFormat.

### Parameters

| Parameter | Description |
| --- | --- |
| indices | The array of indices that define the mesh faces. |
| indicesStart | Index of the first element to take from the input array. |
| indicesLength | Number of elements to take from the input array. |
| topology | The topology of the Mesh, e.g: Triangles, Lines, Quads, Points, etc. See MeshTopology. |
| submesh | The sub-mesh to modify. |
| calculateBounds | Calculate the bounding box of the sub-mesh after setting the indices. Unity does this by default. Use false when you want to use the existing bounding box and reduce the CPU cost of setting the indices. |
| baseVertex | Optional vertex offset that is added to all vertex indices. |
| meshLod | Mesh level of detail to modify. |

### Description

Sets the index buffer of a sub-mesh, using a part of the input array.

This method behaves as if you called SetIndices with an array that is a slice of the whole array, starting at `indicesStart` index and being of a given `indicesLength` length. The resulting sub-mesh will have `indicesLength` amount of vertex indices.
