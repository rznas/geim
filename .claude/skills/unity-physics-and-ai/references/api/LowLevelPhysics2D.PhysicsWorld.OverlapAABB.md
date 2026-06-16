<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.OverlapAABB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| aabb | The AABB used to check overlap. This must be in world-space. |
| filter | The filter to control what results are returned. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<WorldOverlapResult>** The query overlap results. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Returns all shapes that potentially overlap the provided AABB. The overlap is between AABB of shapes in the world therefore it may not result in an exact overlap of the shape itself. See PhysicsAABB, QueryFilter, WorldOverlapResult and Allocator.
