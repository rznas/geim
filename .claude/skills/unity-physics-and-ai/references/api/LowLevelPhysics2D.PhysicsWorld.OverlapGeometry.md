<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.OverlapGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Circle geometry used to check overlap. This must be in world-space. |
| filter | The filter to control what results are returned. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<WorldOverlapResult>** The query overlap results. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Returns all shapes that overlap the provided Circle geometry. A circle with a radius of zero is equivalent to PhysicsWorld.OverlapPoint. See CircleGeometry, QueryFilter, WorldOverlapResult and Allocator

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Capsule geometry used to check overlap. This must be in world-space. |
| filter | The filter to control what results are returned. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<WorldOverlapResult>** The query overlap results. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Returns all shapes that overlap the provided Capsule geometry. See CapsuleGeometry, QueryFilter, WorldOverlapResult and Allocator.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Polygon geometry used to check overlap. This must be in world-space. |
| filter | The filter to control what results are returned. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<WorldOverlapResult>** The query overlap results. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Returns all shapes that overlap the provided Polygon geometry. See PolygonGeometry, QueryFilter, WorldOverlapResult and Allocator.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Segment geometry used to check overlap. This must be in world-space. |
| filter | The filter to control what results are returned. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<WorldOverlapResult>** The query overlap results. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Returns all shapes that overlap the provided Segment geometry. See SegmentGeometry, QueryFilter, WorldOverlapResult and Allocator.

### Parameters

| Parameter | Description |
| --- | --- |
| geometry | The Chain-Segment geometry used to check overlap. This must be in world-space. |
| filter | The filter to control what results are returned. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<WorldOverlapResult>** The query overlap results. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Returns all shapes that overlap the provided Chain-Segment geometry. See ChainSegmentGeometry, QueryFilter, WorldOverlapResult and Allocator.
