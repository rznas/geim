<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetNormals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| outNormals | The destination vertex normals array. |

### Description

Populates an array with the vertex normals from the `MeshData`.

The destination array must have at least vertexCount elements. The normal at each index corresponds to the vertex with the same index. Vertex normal data will be converted into Vector3 format if needed. Additional resources: Mesh.GetNormals, HasVertexAttribute, Mesh.AcquireReadOnlyMeshData.
