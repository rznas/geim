<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingMultiGeometryInstanceConfig-subGeometriesValidation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether to validate the entries in the `subGeometries` array relative to `vertexBuffer` and `indexBuffer` buffers.

Unity validates the ranges specified in the `RayTracingSubGeometryDesc` entries in the `subGeometries` array if the value is true. If the ranges are not valid, Unity throws an exception. You can disable this option before the release of your project for improved CPU performance.

Additional resources: RayTracingSubGeometryDesc.
