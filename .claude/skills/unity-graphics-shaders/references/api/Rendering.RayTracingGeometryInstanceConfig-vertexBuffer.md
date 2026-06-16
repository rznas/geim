<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingGeometryInstanceConfig-vertexBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The vertex buffer that Unity uses to define the ray tracing geometry instance.

Define the vertex buffer format by specifiying a list of vertex attributes in vertexAttributes array. 

You can use a common vertex buffer and index buffer to define multiple geometry instances with different properties (for example different materials).

Use `GraphicsBuffer.Target.Vertex | GraphicsBuffer.Target.Raw` for the Target parameter when creating the vertex buffer from scripts.
