<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingMultiGeometryInstanceConfig-motionVectorMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Motion vector mode.

Unity configures the `unity_MotionVectorsParams` built-in shader uniform to calculate motion vectors in HLSL code.

For ray tracing instances, `unity_MotionVectorsParams` is a vector uniform. Its component values are as follows:

- the x and z components are 0.
- the y component is 0 if the motion vector mode is MotionVectorGenerationMode.ForceNoMotion. Otherwise it is 1.
- the w component is 0 if the motion vector mode is MotionVectorGenerationMode.Camera. Otherwise it is 1.

To access the ray tracing instance matrix in closest hit, any hit, and intersection shaders, use the `ObjectToWorld` or `WorldToObject` HLSL functions.

Additional resources: MotionVectorGenerationMode.
