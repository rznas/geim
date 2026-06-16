<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingSubGeometryDesc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct describing a single ray tracing geometry using spans of memory in the common vertex and index buffer.

When using index buffers, you can specify the sub-geometry range using indexStart and indexCount with vertexStart being 0 and vertexCount being the total amount of vertices in the vertex buffer.

Additional resources: RayTracingMultiGeometryInstanceConfig.

### Properties

| Property | Description |
| --- | --- |
| flags | Flags that determine the ray-geometry intersection behavior relative to a material used together with this geometry configuration during ray tracing. |
| id | An optional identifier for the ray tracing geometry. |
| indexCount | The amount of indices from an index buffer that defines a ray tracing geometry. |
| indexStart | The first index from an index buffer that defines a ray tracing geometry. |
| vertexCount | The amount of vertices from a vertex buffer that defines a ray tracing geometry. |
| vertexStart | The index of the first vertex from a vertex buffer that defines a ray tracing geometry. |
