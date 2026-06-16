<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.UpdateInstancePropertyBlock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The handle associated with a AABB or Mesh ray tracing instance. |
| properties | The additional material properties to apply onto the Material used by the ray tracing instance. |

### Description

Updates per ray tracing instance Material properties.

A ray tracing instance associated with an axis-aligned bounding box (AABBs) GraphicsBuffer or a Mesh can use a Material shared with other similar ray tracing instances.

Additional per ray tracing instance Material properties can be specified using the MaterialPropertyBlock argument. The properties are copied into the ray tracing instance when this function is called.

Additional resources: RayTracingAccelerationStructure.AddInstance, RayTracingAccelerationStructure.RemoveInstance.
