<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.TestOverlapAABB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| aabb | The AABB used to check overlap. This must be in world-space. |
| filter | The filter to control the result returned. |

### Returns

**bool** If the query overlaps anything.

### Description

Tests if the provided AABB potentially overlaps any shapes. The overlap is between AABB of shapes in the world therefore it may not result in an exact overlap of any shape itself. See PhysicsAABB and QueryFilter.
