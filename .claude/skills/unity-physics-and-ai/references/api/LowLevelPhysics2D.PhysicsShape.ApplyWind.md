<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.ApplyWind.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| force | The wind velocity in world-space. |
| drag | The drag coefficient which is a force that opposes the relative velocity. |
| lift | The lift coefficient which is a force that is perpendicular to the relative velocity. |
| wake | Whether the shape body should be woken or not. |

### Description

Apply a wind force to the shape body using the density of air This considers the projected area of the shape in the wind direction. This also considers the relative velocity of the shape. This only has an effect if the shape body is UnityEngine.RigidbodyType2D.Dynamic. This only has an effect of shapes of type Circle, Capsule or Polygon.
