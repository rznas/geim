<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.SetVertexBufferParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertexCount | The number of vertices in the Mesh. |
| attributes | Layout of the vertex data: which attributes are present, their data types and so on. |

### Description

Sets the vertex buffer size and layout of the Mesh that Unity creates from the `MeshData`.

Use this function to set vertex buffer size and layout for newly created Mesh data (see Mesh.AllocateWritableMeshData). For details, see Mesh.SetVertexBufferParams.

After you have set the vertex buffer parameters, you can write the vertices into the array returned by Mesh.MeshData.GetVertexData. If you call this method on a read-only `MeshData`, Unity throws an exception.

For details on how to specify a mesh attribute layout, refer to VertexAttributeDescriptor.
