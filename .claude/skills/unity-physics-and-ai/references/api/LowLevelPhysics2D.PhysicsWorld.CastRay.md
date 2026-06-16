<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.CastRay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| input | The configuration of the ray to cast. |
| filter | The filter to control what results are returned. |
| castMode | Controls how many and in what order the results are returned. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<WorldCastResult>** The query cast results. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Returns the shape(s) that intersect the specified Ray. Technically this is a line-segment and not an infinite ray. See QueryFilter, WorldCastMode, WorldCastResult and Allocator.
