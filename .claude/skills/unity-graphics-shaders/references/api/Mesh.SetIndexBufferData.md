<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetIndexBufferData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | Index buffer data array. |
| dataStart | The first element in the data to copy from. |
| meshBufferStart | The first element in the mesh index buffer to receive the data. |
| count | Count of indices to copy. |
| flags | Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Sets the data of the index buffer of the Mesh.

Note: This method is designed for advanced users aiming for maximum performance because it operates on the underlying mesh data structures that primarily work on raw index buffers, vertex buffers and mesh subset data. Using this method, Unity performs very little data validation, so you must ensure your data is valid.

 In particular, you must ensure that the sub-mesh index range and topology are updated via SetSubMesh.

By default, the index buffer `data` array is checked for out-of-bounds indices. `flags` parameter can be set to MeshUpdateFlags.DontValidateIndices to turn the validation off for performance reasons.

For information about the difference between the simpler and more advanced methods of assigning data to a Mesh from script, see the notes on the Mesh page.

General usage pattern is:

```csharp
var mesh = new Mesh();// setup vertex buffer data
mesh.vertices = ...;// set index buffer
mesh.SetIndexBufferParams(...);
mesh.SetIndexBufferData(...);// setup information about mesh subsets
mesh.subMeshCount = ...;
mesh.SetSubMesh(index, ...);
```

Additional resources: SetIndexBufferParams, subMeshCount, SetSubMesh, SetVertexBufferData, MeshUpdateFlags, AcquireReadOnlyMeshData.
