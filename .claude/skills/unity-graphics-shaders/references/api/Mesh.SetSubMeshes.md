<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetSubMeshes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| desc | An array or list of sub-mesh data descriptors. |
| start | Index of the first element to take from the array or list in `desc`. |
| count | Number of elements to take from the array or list in `desc`. |
| flags | (Optional) Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Sets information defining all sub-meshes in this Mesh, replacing any existing sub-meshes.

Note that SetSubMeshes, SetSubMesh, SubMeshDescriptor, and SetIndexBufferData are designed for maximum performance. These functions operate on the underlying mesh data structures involving raw index buffers, vertex buffers and mesh subset data. When you use these methods, Unity performs very little data validation, so you must ensure your data is valid.

 In particular, you must ensure that the SubMeshDescriptor index ranges and SubMeshDescriptor.topology values are set to correct values. SubMesh indices, both indexStart and indexCount, must not overlap with any other SubMesh indices.

 You must also ensure that for each of the SubMesh's meshLod the lodrange is contained within the newly set index range. You may be required to invoke Mesh.SetLods prior to setting the SubMesh. You can disable validation by setting `flags` to MeshUpdateFlags.DontValidateLodRanges. If using Mesh LODs, you must also ensure that the provided index range for each of the sub-meshes is large enough to contain all levels of detail used within that sub-mesh. You may be required to invoke Mesh.SetLods prior to setting the subMesh. You can disable validation by setting `flags` to MeshUpdateFlags.DontValidateLodRanges.

 For information about the difference between the simpler and more advanced methods of assigning data to a Mesh from script, see Mesh.

The SubMeshDescriptor-bounds, SubMeshDescriptor-firstVertex and SubMeshDescriptor-vertexCount values of SubMeshDescriptor are calculated automatically by `SetSubMeshes`, unless MeshUpdateFlags.DontRecalculateBounds flag is passed. Note that this only applies to the bounds of the SubMesh. You must call Mesh.RecalculateBounds to recalculate the bounds of the Mesh itself.

 General usage pattern is:

```csharp
var mesh = new Mesh();// setup vertex buffer data
mesh.vertices = ...;// set index buffer
mesh.SetIndexBufferParams(...);
mesh.SetIndexBufferData(...);// setup information about mesh subsets
SubMeshDescriptor[] sm = new SubMeshDescriptor[] {...}
mesh.SetSubMeshes(sm);// update bounds of the mesh
mesh.RecalculateBounds();
```

For details on what data to set up for each sub-mesh, see SubMeshDescriptor.

Additional resources: subMeshCount, GetSubMesh, SetSubMesh, SetIndexBufferParams, SetIndexBufferData, MeshUpdateFlags.
