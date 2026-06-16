<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.CastShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shape | The shape used to cast through the world. |
| translation | The translation relative to the shape pose defining the direction the shape geometry will move through the world. |
| filter | The filter to control what results are returned. |
| castMode | Controls how many and in what order the results are returned. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<WorldCastResult>** The query cast results. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Returns the shape(s) that intersect the specified shape as it is cast through the world. The selected shape is excluded from any results and must be in this world otherwise a warning will be produced. Neither PhysicsShape.ShapeType.Segment or PhysicsShape.ShapeType.ChainSegment shape types are supported. See QueryFilter, WorldCastMode, WorldCastResult and Allocator.
