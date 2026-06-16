<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.WorldCastResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The results from performing any Cast query against the PhysicsWorld.

### Properties

| Property | Description |
| --- | --- |
| fraction | The fraction of the query cast distance the shape would move to the point of detection, in the range [0, 1]. |
| isValid | Check if the result is valid. |
| normal | The surface normal at the point of contact. In all non-overlapped cases, this will be a unit-normal. If there was an initial overlap, the normal will be zero (degenerate) along with the WorldCastResult.fraction being zero and WorldCastResult.point being an arbitrary point in the overlapped region. See WorldCastResult.point. |
| point | The point of contact. |
| shape | The shape that was detected by the cast. |
