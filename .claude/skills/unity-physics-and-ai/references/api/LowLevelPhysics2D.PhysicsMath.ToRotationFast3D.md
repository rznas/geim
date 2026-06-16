<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsMath.ToRotationFast3D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| angle | The 2D angle to transform in radians. |
| transformPlane | The transform plane to use. |

### Returns

**Quaternion** The transformed rotation.

### Description

Transform a 2D angle into a 3D rotation using the selected transform plane (Fast). The transformation is fast because the rotation is simplified by the fact that only a single axis of rotation is handled. All other axis rotations are reset to zero.
