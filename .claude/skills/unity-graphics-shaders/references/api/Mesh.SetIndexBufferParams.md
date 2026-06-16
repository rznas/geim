<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetIndexBufferParams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| indexCount | Size of index buffer. |
| format | Format of the indices. |

### Description

Sets the index buffer size and format.

Note: This method is designed for advanced users aiming for maximum performance because it operates on the underlying mesh data structures that primarily work on raw index buffers, vertex buffers and mesh subset data. Using this method, Unity performs very little data validation, so you must ensure your data is valid.

In particular, you must ensure that the index buffer does not contain out-of-bounds indices, and that the sub-mesh index range and bounds are updated via SetSubMesh.

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

When you change the index buffer size or format, the subMeshCount reverts to one, and the index buffer data is uninitialized. To set values, use SetIndexBufferData.

Note that changing subMeshCount to a smaller value than it was previously resizes the index buffer to be smaller. The new index buffer size is set to SubMeshDescriptor.indexStart of the first removed sub-mesh.

If the index buffer size exceeds the maximum buffer size that the device supports, the method raises an exception. For more information, see SystemInfo.maxGraphicsBufferSize.

Additional resources: SetIndexBufferData, subMeshCount, SetSubMesh, SetSubMeshes.
