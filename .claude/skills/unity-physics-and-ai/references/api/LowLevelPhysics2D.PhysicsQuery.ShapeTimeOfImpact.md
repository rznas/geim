<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.ShapeTimeOfImpact.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| toiInput | The input describing the shapes and how they should move. |

### Returns

**TimeOfImpactResult** The time of impact result.

### Description

Calculate the upper bound on time before two shape proxies penetrate i.e. the time-of-impact. Time is represented as a fraction in the range [0, maxInterval]. This uses a swept separating axis and may miss some intermediate, non-tunneling collisions.
