<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsAABB.CastRay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| castRayInput | The configuration of the ray to cast. |

### Returns

**CastResult** The results of the intersection test.

### Description

Perform a raycast against this AABB. Nothing will be detected if the ray starts inside the AABB. To check if the ray starts inside the AABB use PhysicsAABB.OverlapPoint.
