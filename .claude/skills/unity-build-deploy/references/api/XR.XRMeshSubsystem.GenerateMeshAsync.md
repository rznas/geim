<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRMeshSubsystem.GenerateMeshAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| meshId | The MeshId of the mesh you wish to generate. |
| mesh | The Mesh to write the results into. |
| meshCollider | (Optional) The MeshCollider to populate with physics data. This may be null. |
| attributes | The vertex attributes you'd like to use. |
| onMeshGenerationComplete | The delegate to invoke when the generation completes. |

### Description

Requests the generation of the Mesh with MeshId `meshId`. Unity calls `onMeshGenerationComplete` when generation finishes.

Use this method to request that a mesh is asynchronously generated. "Generation" includes extracting the mesh data from the subsystem's mesh provider (e.g., an AR device) and baking the MeshCollider (if `meshCollider` is not null).

 This happens in a background thread. For large meshes, this can take several frames to complete. `onMeshGenerationComplete` is invoked when the generation completes.

 The mesh vertices are provided in session space.

 Additional resources: XRMeshSubsystem.TryGetMeshInfos

### Parameters

| Parameter | Description |
| --- | --- |
| meshId | The MeshId of the mesh you wish to generate. |
| mesh | The Mesh to write the results into. |
| meshCollider | (Optional) The MeshCollider to populate with physics data. This may be null. |
| attributes | The vertex attributes you'd like to use. |
| onMeshGenerationComplete | The delegate to invoke when the generation completes. |
| options | The mesh generation options. |

### Description

Requests the generation of the Mesh with MeshId `meshId`. Unity calls `onMeshGenerationComplete` when generation finishes.

This variant allows you to specify additional mesh generation options.

 **Note:** If the MeshGenerationOptions.ConsumeTransform flag is set in the `options` argument, the resulting mesh will be relative to the transform provided by the MeshGenerationResult. If this flag is not set, the vertices are transformed into session space and the MeshGenerationResult will contain an identity transform.

 Additional resources: XRMeshSubsystem.TryGetMeshInfos
