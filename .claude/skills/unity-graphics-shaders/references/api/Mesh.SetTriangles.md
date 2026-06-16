<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetTriangles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| triangles | The list of indices that define the triangles. |
| submesh | The sub-mesh to modify. |
| calculateBounds | Calculate the bounding box of the Mesh after setting the triangles. This is done by default. Use false when you want to use the existing bounding box and reduce the CPU cost of setting the triangles. |
| baseVertex | Optional vertex offset that is added to all triangle vertex indices. |
| meshLod | The Mesh LOD to modify. Use -1 to modify the entire sub-mesh. If not provided, LOD0 is modified. |

### Description

Sets the triangle list for the sub-mesh.

A sub-mesh represents a list of triangles that are rendered using a single Material. When the Mesh is used with a Renderer that has multiple materials, you should ensure that there is one sub-mesh per Material.

It is recommended to assign the triangle array after assigning the vertex array, in order to avoid out-of-bounds errors.

The `baseVertex` argument can be used to achieve meshes that are larger than 65535 vertices while using 16 bit index buffers, as long as each sub-mesh fits within its own 65535 vertex area. For example, if the index buffer that is passed to SetTriangles contains indices 10,11,12 and `baseVertex` is set to 100000, then effectively vertices 100010, 100011 and 100012 will be used for rendering.

Note that meshes use 16-bit indexFormat by default, i.e. maximum value supported in the index buffer is 65535 (even when using @int[]@ input data). In order to use larger index buffer values, you should first set the indexFormat to IndexFormat.UInt32.

Additional resources: subMeshCount, SetIndices, indexFormat.

### Parameters

| Parameter | Description |
| --- | --- |
| triangles | The list of indices that define the triangles. |
| trianglesStart | Index of the first element to take from the input array. |
| trianglesLength | Number of elements to take from the input array. |
| submesh | The sub-mesh to modify. |
| calculateBounds | Calculate the bounding box of the Mesh after setting the triangles. This is done by default. Use false when you want to use the existing bounding box and reduce the CPU cost of setting the triangles. |
| baseVertex | Optional vertex offset that is added to all triangle vertex indices. |

### Description

Sets the triangle list of the Mesh, using a part of the input array.

This method behaves as if you called SetTriangles with an array that is a slice of the whole array, starting at `trianglesStart` index and being of a given `trianglesLength` length. The resulting Mesh has `trianglesLength` amount of vertices. Resulting sub-mesh will have `trianglesLength/3` amount of triangles.
