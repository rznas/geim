<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingInstanceCullingFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags used by RayTracingAccelerationStructure.CullInstances.

### Properties

| Property | Description |
| --- | --- |
| None | No flags are specified in RayTracingAccelerationStructure.CullInstances. |
| EnableSphereCulling | Causes RayTracingAccelerationStructure.CullInstances to perform sphere culling. |
| EnablePlaneCulling | Causes RayTracingAccelerationStructure.CullInstances to perform plane culling. |
| EnableLODCulling | Causes RayTracingAccelerationStructure.CullInstances to perform LOD culling. |
| ComputeMaterialsCRC | Causes RayTracingAccelerationStructure.CullInstances to compute the CRC hash values of all unique Materials used by ray tracing instances that were added to the acceleration structure. |
| IgnoreReflectionProbes | Causes RayTracingAccelerationStructure.CullInstances to ignore Renderers that have a ReflectionProbe as a sibling Component. |
| EnableSolidAngleCulling | Causes RayTracingAccelerationStructure.CullInstances to perform solid-angle culling. |
| EnableMeshLOD | Causes RayTracingAccelerationStructure.CullInstances to perform Mesh LOD selection. |
