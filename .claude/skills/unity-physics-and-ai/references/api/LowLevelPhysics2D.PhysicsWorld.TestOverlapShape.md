<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.TestOverlapShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shape | The shape used to check overlap. |
| filter | The filter to control the result returned. |

### Returns

**bool** If the query overlaps anything.

### Description

Tests if the provided shape overlaps any shapes. The selected shape is excluded from any results and must be in this world otherwise a warning will be produced.
