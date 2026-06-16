<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingGeometryInstanceConfig-motionVectorMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Motion vector mode.

Unity configures the following built-in shader uniforms to calculate motion vectors in HLSL code: `unity_MotionVectorsParams`, `unity_MatrixPreviousM` and `unity_MatrixPreviousMI`.

For ray tracing instances, `unity_MotionVectorsParams` is a vector uniform. Its component values are as follows:

- the x and z components are 0
- the y component is 0 if the motion vector mode is MotionVectorGenerationMode.ForceNoMotion. Otherwise it is 1.
- the w component is 0 if the motion vector mode is MotionVectorGenerationMode.Camera. Otherwise it is 1.

`unity_MatrixPreviousM` and `unity_MatrixPreviousMI` are the instance matrix and its inverse respectively used in the previous frame. Note that Unity only updates these matrices only when there's a Camera in the Scene that's using the DepthTextureMode.MotionVectors flag in Camera.depthTextureMode.

To access the ray tracing instance matrix in closest hit, any hit, and intersection shaders, use the `ObjectToWorld` or `WorldToObject` HLSL functions.

Additional resources: MotionVectorGenerationMode.
