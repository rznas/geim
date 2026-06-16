<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingSubGeometryDesc-id.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An optional identifier for the ray tracing geometry.

You can use a non-zero value for id to uniquely identify the geometry used for ray tracing, no matter the location of the geometry data inside a vertex and index buffer. This can be used in scenarios where the geometry can be streamed in and out in different locations into a vertex and index buffer pool in GPU-driven rendering pipelines. If the value is 0 then Unity uses all the fields in RayTracingSubGeometryDesc to generate a geometry identifier.
