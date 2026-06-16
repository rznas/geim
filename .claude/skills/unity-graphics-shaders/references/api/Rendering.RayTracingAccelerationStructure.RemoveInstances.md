<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.RemoveInstances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerMask | A 32-bit mask that specifies which layers to remove ray tracing instances from. |
| rayTracingModeMask | A mask that speficies which RayTracingModes ray tracing instances must have in order to be removed. |

### Description

Removes ray tracing instances from the RayTracingAccelerationStructure using filtering based on layer and RayTracingMode.

Additional resources: RayTracingModeMask, AddInstance, AddInstances, RemoveInstance, ClearInstances.

```csharp
using UnityEngine.Rendering;
using static UnityEngine.Rendering.RayTracingAccelerationStructure;RayTracingAccelerationStructure rtas  = new RayTracingAccelerationStructure();// Add ray tracing instances using AddInstance, AddInstances or CullInstances methods.// Remove all ray tracing instances using dynamic geometries that are on Layer 1 or Layer 2.
rtas.RemoveInstances((1 << 1) | (1 << 2), RayTracingModeMask.DynamicGeometry | RayTracingModeMask.DynamicGeometryManualUpdate);// Remove all ray tracing instances.
rtas.RemoveInstances(-1, RayTracingModeMask.Everything);
```
