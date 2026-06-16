<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.Settings-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sceneManagementMode | Whether Unity or the user manages a RayTracingAccelerationStructure. |
| rayTracingModeMask | The mask that determines which ray tracing instances are added to the RayTracingAccelerationStructure based on their `RayTracingMode`. |
| layerMask | The mask that determines which ray tracing instances are added to the RayTracingAccelerationStructure based on their layer. |
| buildFlagsStaticGeometries | The flags Unity uses when it builds acceleration structures associated with static geometries. |
| buildFlagsDynamicGeometries | The flags Unity uses when it builds acceleration structures associated with dynamic geometries. |

### Description

Initializes and returns an instance of RayTracingAccelerationStructure.Settings from the given configuration.
