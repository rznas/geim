<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceMaterialCRC.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Material instance id and CRC hash value pair. This information is returned by a RayTracingAccelerationStructure.CullInstances call.

Additional resources: RayTracingInstanceCullingFlags, Material.ComputeCRC, RayTracingInstanceCullingResults.

### Properties

| Property | Description |
| --- | --- |
| crc | The CRC hash value of a Material that was computed during a RayTracingAccelerationStructure.CullInstances call. |
| entityId | The Material entity id whose Material CRC was computed during the RayTracingAccelerationStructure.CullInstances call. |
