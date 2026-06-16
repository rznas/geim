<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsComposer.CreatePolygonGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PolygonGeometry>** A NativeArray containing the Polygon Geometry created from the composer. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create PolygonGeometry from the composition by iterating all the layers added to the composition in the layer order specified, applying each operation specified. A limit is imposed on small vertex distances so be aware that this overload uses a vertex scale of Vector2.one so consider using the overload which allows you to increase this if required.

### Parameters

| Parameter | Description |
| --- | --- |
| vertexScale | The scaling to be applied to the composer vertices. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PolygonGeometry>** A NativeArray containing the Polygon Geometry created from the composer. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create PolygonGeometry from the composition by iterating all the layers added to the composition in the layer order specified, applying each operation specified. A limit is imposed on small vertex distances so it is recommended that scaling is applied here rather than on the returned geometry so geometry is not discarded due to it being invalid.

### Parameters

| Parameter | Description |
| --- | --- |
| vertexScale | The scaling to be applied to the composer vertices. |
| radius | The radius to apply to all generated polygons. Note that this will likely mean that the same polygon region defined by the vertices will not match. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PolygonGeometry>** A NativeArray containing the Polygon Geometry created from the composer. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create PolygonGeometry from the composition by iterating all the layers added to the composition in the layer order specified, applying each operation specified. A limit is imposed on small vertex distances so it is recommended that scaling is applied here rather than on the returned geometry so geometry is not discarded due to it being invalid.
