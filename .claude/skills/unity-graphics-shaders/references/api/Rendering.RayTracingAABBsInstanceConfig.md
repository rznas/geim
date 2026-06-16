<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAABBsInstanceConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The parameters you use to add an instance of ray tracing axis-aligned bounding boxes (AABBs) to a RayTracingAccelerationStructure.

Use this structure to share parameters across different ray tracing AABBs instances.

Additional resources: RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.RemoveInstance.

### Properties

| Property | Description |
| --- | --- |
| aabbBuffer | The GraphicsBuffer that defines a list of axis-aligned bounding boxes (AABBs). |
| aabbCount | The number of AABBs Unity uses when you build the acceleration structure for this ray tracing instance. |
| aabbOffset | The index of the first AABB Unity uses from RayTracingAABBsInstanceConfig.aabbBuffer. |
| accelerationStructureBuildFlags | The flags Unity uses when it builds the acceleration structure for the geometry referenced by this ray tracing instance configuration. |
| accelerationStructureBuildFlagsOverride | Whether to override the build flags specified when creating a RayTracingAccelerationStructure. |
| dynamicGeometry | Whether the data in RayTracingAABBsInstanceConfig.aabbBuffer is dynamic. |
| layer | The Layer used by the ray tracing instance. |
| mask | The ray tracing instance mask. |
| material | The Material the ray tracing instance uses. |
| materialProperties | Additional MaterialPropertyBlock properties to apply to the Material. |
| opaqueMaterial | Determines whether Unity considers the material opaque. |
