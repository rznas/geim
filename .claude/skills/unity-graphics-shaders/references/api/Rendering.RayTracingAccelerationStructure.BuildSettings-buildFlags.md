<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.BuildSettings-buildFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The build flags Unity uses to build a RayTracingAccelerationStructure.

For acceleration structure implementations that use a two-level hierarchy, for example DirectX Raytracing (DXR), Unity uses these flags to build the top-level acceleration structure (TLAS).

To customize the flags Unity uses to build the bottom-level acceleration structures (BLAS), use Renderer settings or the parameters in the RayTracingAccelerationStructure.AddInstance method.
