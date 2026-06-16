<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshDeformation.GPU.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables Unity using compute shaders to process mesh deformations on the GPU.

Unity creates one dispatch call for each mesh and active blendshape. If you build for a graphics API that supports compute shaders and you render many skinned meshes, use MeshDeformation.GPUBatched for better performance.

 `MeshDeformation.GPU` works on all graphics APIs that support compute shaders, except OpenGL.
