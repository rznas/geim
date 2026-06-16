<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.RayTracingMultiGeometryInstanceConfig.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Parameters you can use to configure ray tracing instances that are part of a RayTracingAccelerationStructure.

The geometries used by the ray tracing instances are specified using shared GraphicsBuffers containing vertex and index data and additional parameters.

Refer to the RayTracingAccelerationStructure.AddInstancesIndirect method for additional information regarding how to specify ray tracing instances that reference geometries and materials from this configuration structure.

Additional resources: RayTracingAccelerationStructure.AddInstancesIndirect, RayTracingSubGeometryDesc.

### Properties

| Property | Description |
| --- | --- |
| accelerationStructureBuildFlags | The flags Unity uses when it builds the acceleration structures for the geometries referenced by this ray tracing instance configuration. |
| accelerationStructureBuildFlagsOverride | Whether to override the build flags specified when creating a RayTracingAccelerationStructure. |
| enableTriangleCulling | Whether front/back face culling for the ray tracing instances is enabled. |
| frontTriangleCounterClockwise | Whether to flip the way triangles face in the geometries reference by ray tracing instances. |
| indexBuffer | The index buffer that Unity uses to define geometries used by ray tracing instances. |
| layer | The layer used by the ray tracing instances. |
| mask | The mask used by ray tracing instances. |
| materialProperties | Additional material properties to apply onto materials. |
| materials | The materials the ray tracing instances use. |
| motionVectorMode | Motion vector mode. |
| rayTracingMode | The RayTracingMode that you can use to control how the geometries used by ray tracing instances are updated. |
| renderingLayerMask | A mask that you can access in HLSL with unity_RenderingLayer built-in shader uniform. |
| subGeometries | The geometry configurations the ray tracing instances use. |
| subGeometriesValidation | Whether to validate the entries in the subGeometries array relative to vertexBuffer and indexBuffer buffers. |
| vertexAttributes | An array of vertex attributes that define the vertex format of vertexBuffer. |
| vertexBuffer | The vertex buffer that Unity uses to define geometries used by ray tracing instances. |
