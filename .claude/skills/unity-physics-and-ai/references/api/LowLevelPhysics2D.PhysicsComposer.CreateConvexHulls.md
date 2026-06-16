<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsComposer.CreateConvexHulls.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<ConvexHull>** A NativeArray containing the Polygon Geometry convex hull created from the composer. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create ConvexHull from the composition by iterating all the layers added to the composition in the layer order specified, applying each operation specified. A default vertex scale of Vector2.one is used here.

### Parameters

| Parameter | Description |
| --- | --- |
| vertexScale | The scaling to be applied to the composer vertices. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<ConvexHull>** A NativeArray containing the Polygon Geometry convex hull created from the composer. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create ConvexHull from the composition by iterating all the layers added to the composition in the layer order specified, applying each operation specified.
