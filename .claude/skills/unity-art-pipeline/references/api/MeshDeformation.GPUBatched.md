<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshDeformation.GPUBatched.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables Unity using compute shaders to process mesh deformations on the GPU, and combining multiple meshes and blendshapes into batches.

If you enable this property, Unity uses batching and reordering to combine meshes and blendshapes into fewer dispatch calls to the GPU. 

 Batching provides better performance on high-end platforms. Unity can process multiple meshes more quickly and reduce synchronisation issues. On other platforms, you might need to use MeshDeformation.GPU instead, because batching uses dynamic branching which has a high resource intensity.

 Unity uses batching if the following applies:

- The Graphics API supports batching.
- You process 3 or more batchable meshes in one frame - this is the number of meshes where batching usually becomes faster than non-batched GPU skinning.

To make sure a mesh is batchable, check the mesh is compatible with standard non-batched GPU skinning, and that its vertex data layout exactly matches one of the following:

- position
- position, normal
- position, normal, tangent

If Unity can't use batching, it reverts to non-batched GPU skinning.
