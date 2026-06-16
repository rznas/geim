<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingAccelerationStructure.AddVFXInstances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| targetRenderer | The Renderer to add to the RayTracingAccelerationStructure. |
| vfxSystemMasks | An array of 8-bit masks you can use to selectively intersect ray-traced VFX systems associated with the target Renderer with rays that only pass the mask. All rays are enabled (0xff) by default. |

### Description

Adds the ray tracing instances associated with a VFXRenderer to the RayTracingAccelerationStructure.

Ray tracing instances in the acceleration structure contain an 8-bit user defined instance mask. The `TraceRay()` HLSL function has an 8-bit input parameter, `InstanceInclusionMask` which gets ANDed with the instance mask from any ray tracing instance that is a candidate for intersection during acceleration structure traversal on the GPU. If the result of the AND operation is zero, the intersection is ignored.

One VFXRenderer can have more than one ray tracing instance if it contains multiple output contexts. This method adds all the instances of outputs which enable ray tracing, with the masks specified in vfxSystemMasks.
