<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetTriangles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| triangles | A list of vertex indices to populate. Any existing items in the list are replaced. |
| submesh | The sub-mesh index. See subMeshCount. |
| applyBaseVertex | True (default value) will apply base vertex offset to returned indices. |
| meshLod | The Mesh LOD index. Use -1 to get triangles for the entire sub-mesh including all levels of detail. |

### Description

Fetches the triangle list for the specified sub-mesh on this object.

Each integer in the returned triangle list is a vertex index, which is used as an offset into the Mesh's vertex arrays. See vertices and GetVertices. The triangle list contains a multiple of three indices, one for each corner in each triangle.

A sub-mesh represents a list of triangles that are rendered using a single Material. When the Mesh is used with a Renderer that has multiple materials, you should ensure that there is one sub-mesh per Material.

Call the method overload with a `List<int>` parameter if you control the life cycle of the index buffer and wish to avoid allocation of a new array with every access.

Additional resources: subMeshCount.
