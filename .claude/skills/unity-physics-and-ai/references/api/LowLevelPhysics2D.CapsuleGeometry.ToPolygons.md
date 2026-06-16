<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.CapsuleGeometry.ToPolygons.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transform | The transform used to specify where the geometry is positioned. |
| curveStride | The curve stride used when creating curves, in radians. Valid range is PhysicsComposer.MinCurveStride, 1.0]. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PolygonGeometry>** The created polygon geometries. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Creates multiple PolygonGeometry from the geometry. A limit is imposed on small vertex distances so it is recommended that the geometry is scaled appropriately rather than on the returned geometry so geometry is not discarded due to it being invalid.
