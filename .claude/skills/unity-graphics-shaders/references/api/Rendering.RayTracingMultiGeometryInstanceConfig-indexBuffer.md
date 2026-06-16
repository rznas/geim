<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingMultiGeometryInstanceConfig-indexBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The index buffer that Unity uses to define geometries used by ray tracing instances.

You can use a common index buffer as a pool to define multiple geometries used by ray tracing instances that have different properties (for example different materials). Use subGeometries array to configure index ranges for each geometry.

Specify `GraphicsBuffer.Target.Raw` for the Target parameter when you create the index buffer from scripts. If the buffer is also used in rasterization, then add the `GraphicsBuffer.Target.Index` flag.
