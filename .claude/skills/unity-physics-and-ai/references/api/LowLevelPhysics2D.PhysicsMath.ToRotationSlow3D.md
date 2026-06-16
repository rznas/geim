<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsMath.ToRotationSlow3D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| angle | The 2D angle to transform in radians. |
| reference | The 3D rotation used as a reference. |
| transformPlane | The transform plane to use. |

### Description

Transform a 2D angle into a 3D rotation using the selected transform plane (Slow). The transformation is slower because the rotation is more complex due to the fact that changing a single axis of rotation requires it to not affect any other axis rotations.
