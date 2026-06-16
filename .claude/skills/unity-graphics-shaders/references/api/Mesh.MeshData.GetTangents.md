<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetTangents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| outTangents | The destination vertex tangents array. |

### Description

Populates an array with the vertex tangents from the `MeshData`.

The destination array must have at least vertexCount elements. The tangent at each index corresponds to the vertex with the same index. Vertex tangent data will be converted into Vector4 format if needed. Additional resources: Mesh.GetTangents, HasVertexAttribute, Mesh.AcquireReadOnlyMeshData.
