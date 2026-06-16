<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetColors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| outColors | The destination vertex colors array. |

### Description

Populates an array with the vertex colors from the `MeshData`.

The destination array must have at least vertexCount elements. The color at each index corresponds to the vertex with the same index. Vertex color data will be converted into Color or Color32 format if needed. Additional resources: Mesh.GetColors, HasVertexAttribute, Mesh.AcquireReadOnlyMeshData.
