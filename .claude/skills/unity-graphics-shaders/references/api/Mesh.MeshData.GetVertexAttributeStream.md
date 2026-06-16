<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.GetVertexAttributeStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attr | The vertex data attribute to check for. |

### Returns

**int** Stream index of the data attribute, or -1 if it is not present.

### Description

Get the vertex buffer stream index of a specific vertex data attribute on this `MeshData`.

Meshes usually use a single vertex buffer stream, but it is possible to set up a vertex layout where attributes use different vertex buffers (see SetVertexBufferParams). When you use such a layout, use this function to query which vertex buffer stream a given attribute is part of.

Note that this function returns the index of the stream, without specifying where the attribute is within the stream. To identify the location of a given attribute in the stream, use GetVertexAttributeOffset.

Additional resources: GetVertexAttributeOffset, vertexBufferCount, GetVertexBufferStride, Mesh.GetVertexAttributeStream.
