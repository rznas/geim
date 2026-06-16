<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData.SetIndexBufferParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| indexCount | The size of the index buffer. |
| format | The format of the indices. |

### Description

Sets the index buffer size and format of the Mesh that Unity creates from the `MeshData`.

Use this method to set the index buffer size and format for the Mesh that Unity creates from the `MeshData` struct. For details, see Mesh.SetIndexBufferParams.

After you have set the index buffer parameters, you can write the indices into the array returned by Mesh.MeshData.GetIndexData. If you call this method on a read-only `MeshData`, Unity throws an exception.

Additional resources: Mesh.AllocateWritableMeshData, Mesh.AcquireReadOnlyMeshData.
