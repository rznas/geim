<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingGeometryInstanceConfig-indexBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The index buffer that Unity uses to define the ray tracing geometry instance.

You can use a common index buffer and vertex buffer to define multiple geometry instances with different properties (for example different materials).

Use `GraphicsBuffer.Target.Index | GraphicsBuffer.Target.Raw` for the Target parameter when creating the index buffer from scripts.
