<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetVertexBufferStride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The vertex data stream index to check for. |

### Returns

**int** Vertex data size in bytes in this stream, or zero if the stream is not present.

### Description

Get the vertex buffer stream stride in bytes.

Meshes usually use a single vertex buffer stream, but it is possible to set up a vertex layout where attributes use different vertex buffers (see SetVertexBufferParams). When you use such a layout, use this function to query the vertex data size in bytes within a given stream.

Additional resources: vertexBufferCount, GetVertexAttributeOffset, SetVertexBufferParams, Mesh.GetVertexBufferStride.
