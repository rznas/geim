<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingShader.SetAccelerationStructure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the RayTracingAccelerationStructure being set. |
| nameID | The ID of the RayTracingAccelerationStructure as given by Shader.PropertyToID. |
| accelerationStructure | The value to set the RayTracingAccelerationStructure to. |

### Description

Sets the value for RayTracingAccelerationStructure property of this RayTracingShader.

The RayTracingAccelerationStructure you specify as an argument is globally visible in all ray tracing shader types (e.g. closest hit, any hit, miss, etc.).
