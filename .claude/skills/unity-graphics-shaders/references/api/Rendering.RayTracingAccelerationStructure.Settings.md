<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.Settings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines whether Unity or the user updates a RayTracingAccelerationStructure. Also provides additional filtering and acceleration structure build options.

### Properties

| Property | Description |
| --- | --- |
| buildFlagsDynamicGeometries | The flags Unity uses when it builds acceleration structures associated with dynamic geometries. |
| buildFlagsStaticGeometries | The flags Unity uses when it builds acceleration structures associated with static geometries. |
| enableCompaction | Set to true to enable acceleration structure compaction for static geometries. |
| layerMask | A 32-bit mask that specifies which layers a ray tracing instance must be on in order to be added to the RayTracingAccelerationStructure. |
| managementMode | An enum that determines whether Unity or the user updates a RayTracingAccelerationStructure. |
| rayTracingModeMask | Flags that determine which RayTracingModes ray tracing instances must use to be added to a RayTracingAccelerationStructure. |

### Constructors

| Constructor | Description |
| --- | --- |
| RayTracingAccelerationStructure.Settings | Initializes and returns an instance of RayTracingAccelerationStructure.Settings from the given configuration. |
