<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-meshDeformation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies which method Unity uses to process mesh deformations for skinning.

If set to MeshDeformation.CPU, Unity uses the CPU to process mesh deformations.

 If set to MeshDeformation.GPU, Unity uses compute shaders to process mesh deformations on the GPU, and creates one dispatch call for each mesh and active blendshape. If you build for a graphics API that supports compute shaders and you render many skinned meshes, use MeshDeformation.GPUBatched for better performance.

 If set to MeshDeformation.GPUBatched, Unity uses compute shaders to process mesh deformations on the GPU, and combines multiple meshes and blendshapes into batches. See MeshDeformation.GPUBatched for more information.

 The default value is MeshDeformation.GPUBatched.
