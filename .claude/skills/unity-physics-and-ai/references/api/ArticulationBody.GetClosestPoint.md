<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetClosestPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | The point of interest. |

### Returns

**Vector3** The point on the surfaces of all Colliders attached to this articulation body that is closest to the given one.

### Description

Return the point on the articulation body that is closest to a given one.

This returns the input point in case it was not possible to calculate the actual closest point for some reason.
