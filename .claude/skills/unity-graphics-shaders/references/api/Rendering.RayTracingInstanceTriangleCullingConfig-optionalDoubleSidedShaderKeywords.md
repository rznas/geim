<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceTriangleCullingConfig-optionalDoubleSidedShaderKeywords.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array of Shader Keywords for defining double-sided geometries.

If a Shader Keyword from the list is enabled at the time when RayTracingAccelerationStructure.CullInstances is called, then the geometry that uses that Shader will be considered double-sided when rays encounter the geometry during acceleration structure traversal on the GPU.

Additional resources: RayTracingAccelerationStructure.
