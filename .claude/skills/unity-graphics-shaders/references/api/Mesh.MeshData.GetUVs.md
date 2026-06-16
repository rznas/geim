<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetUVs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| channel | The UV channel, in [0..7] range. |
| outUVs | The destination texture coordinates array. |

### Description

Populates an array with the UVs from the `MeshData`.

The destination array must have at least vertexCount elements. The UV at each index corresponds to the vertex with the same index. Texture coordinate data will be converted into Vector2, Vector3 or Vector4 format as needed. Additional resources: Mesh.GetUVs, HasVertexAttribute, Mesh.AcquireReadOnlyMeshData.
