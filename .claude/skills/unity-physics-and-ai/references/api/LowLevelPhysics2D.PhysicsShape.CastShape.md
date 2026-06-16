<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.CastShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| input | The cast shape input used to check for intersection. |

### Returns

**CastResult** The results of the intersection test.

### Description

Calculate if a cast shape intersects the shape. Initially touching shapes are treated as a miss. You should check for overlap first if initial overlap is required. See CastShapeInput and CastResult.
