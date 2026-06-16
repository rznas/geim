<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetVertices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| outVertices | The destination vertex positions array. |

### Description

Populates an array with the vertex positions from the `MeshData`.

The destination array must have at least vertexCount elements. Unity will convert vertex position data into Vector3 format if needed. Additional resources: Mesh.GetVertices, HasVertexAttribute, Mesh.AcquireReadOnlyMeshData.
