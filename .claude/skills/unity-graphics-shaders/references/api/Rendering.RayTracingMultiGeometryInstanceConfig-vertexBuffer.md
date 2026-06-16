<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingMultiGeometryInstanceConfig-vertexBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The vertex buffer that Unity uses to define geometries used by ray tracing instances.

Define the vertex buffer format by specifiying a list of vertex attributes in vertexAttributes array. 

You can use a common vertex buffer as a pool to define multiple geometries used by ray tracing instances that have different properties (for example different materials).

Specify `GraphicsBuffer.Target.Raw` for the Target parameter when creating the vertex buffer from scripts. If the buffer is also used in rasterization then add the `GraphicsBuffer.Target.Vertex` flag.
