<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRMeshSubsystem.GetUpdatedMeshTransforms.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The allocator to use for the returned NativeArray. |

### Returns

**NativeArray<MeshTransform>** A new NativeArray of MeshTransforms.

### Description

Gets the updated mesh transforms.

Use this to get updated transforms for each mesh tracked by the subsystem. The number of transforms returned may be less than the total number of tracked meshes. The results may be affected by previous calls to this method. That is, only transforms that have changed since the last call to this method may be returned.

 Typically, you should call this at regular intervals, for example, once per frame, in order to update the transform of each mesh. When a mesh is generated using XRMeshSubsystem.GenerateMeshAsync, the MeshGenerationResult also contains a transform and timestamp. Because generation is asynchronous, you can compare timestamps to ensure you are using the most recent transform. Larger values indicate newer transforms.

 This method always returns a new NativeArray, even when there are no updated transforms. The caller is responsible for disposing the returned NativeArray.

 Additional resources: MeshTransform, XRMeshSubsystem.GenerateMeshAsync, MeshGenerationResult
