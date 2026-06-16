<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetSubMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Sub-mesh index. See subMeshCount. Out of range indices throw an exception. |
| desc | Sub-mesh data. |
| flags | Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Sets the information about a sub-mesh of the Mesh.

Note that `SetSubMesh`, SubMeshDescriptor, and SetIndexBufferData are designed for advanced users aiming for maximum performance, because they operate on the underlying mesh data structures that primarily work on raw index buffers, vertex buffers and mesh subset data. Using these methods, Unity performs very little data validation, so you must ensure your data is valid.

 In particular, you must ensure that the SubMesh index range and topology are set to correct values. SubMesh indices, both indexStart and indexCount, must not overlap with any other SubMesh indices.

 If using Mesh LODs, you must also ensure that the provided index range for each of the sub-meshes is large enough to contain all levels of detail used within that sub-mesh. You may be required to invoke Mesh.SetLods prior to setting the subMesh. You can disable validation by setting `flags` to MeshUpdateFlags.DontValidateLodRanges.

 For information about the difference between the simpler and more advanced methods of assigning data to a Mesh from script, see the notes on the Mesh page.

 The SubMeshDescriptor-bounds, SubMeshDescriptor-firstVertex and SubMeshDescriptor-vertexCount values of SubMeshDescriptor are calculated automatically by `SetSubMesh`, unless MeshUpdateFlags.DontRecalculateBounds flag is passed. Note that this only applies to the bounds of the SubMesh. You must call Mesh.RecalculateBounds to recalculate the bounds of the Mesh itself.

 General usage pattern is:

```csharp
var mesh = new Mesh();// setup vertex buffer data
mesh.vertices = ...;// set index buffer
mesh.SetIndexBufferParams(...);
mesh.SetIndexBufferData(...);// setup information about mesh subsets
mesh.subMeshCount = ...;
mesh.SetSubMesh(index, ...);// update bounds of the mesh
mesh.RecalculateBounds();
```

For details on what data to set up for each sub-mesh, see SubMeshDescriptor.

Additional resources: subMeshCount, GetSubMesh, SetIndexBufferParams, SetIndexBufferData, MeshUpdateFlags.
