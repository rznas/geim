<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.ApplyAndDisposeWritableMeshData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | The mesh data array, see MeshDataArray. |
| mesh | The destination Mesh. Mesh data array must be of size 1. |
| meshes | The destination Meshes. Must match the size of mesh data array. |
| flags | The mesh data update flags, see MeshUpdateFlags. |

### Description

Applies data defined in `MeshData` structs to Mesh objects.

`ApplyAndDisposeWritableMeshData` takes a MeshDataArray containing writeable `MeshData` structs, and applies the vertex buffer, index buffer, and sub-mesh data to Mesh objects. Use this to create new Meshes using the C# Job System and Burst.

After `ApplyAndDisposeWritableMeshData` is called, the `MeshDataArray` struct is disposed and can no longer be used.

 Using this method, Unity performs very little data validation, so you must ensure your data is valid. In particular, you must ensure that the sub-mesh index range and topology are set to correct values. Sub-mesh indices, both indexStart and indexCount from SubMeshDescriptor, must not overlap with any other sub-mesh indices.

 When using Mesh LODs, you must also ensure that the provided index range for each of the sub-meshes is large enough to contain all levels of detail used within that sub-mesh. You can disable validation by setting `flags` to MeshUpdateFlags.DontValidateLodRanges.

 Additional resources: AllocateWritableMeshData, MeshDataArray, MeshData.
