<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.CastShapeProxy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapeProxy | The shape proxy to use. This must be in world-space. |
| translation | The translation relative to the shape proxy defining the direction the shape proxy will move through the world. |
| filter | The filter to control what results are returned. |
| castMode | Controls how many and in what order the results are returned. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<WorldCastResult>** The query cast results. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Returns the shape(s) that intersect the specified Circle geometry as it is cast through the world. See QueryFilter, WorldCastMode, WorldCastResult and Allocator.
