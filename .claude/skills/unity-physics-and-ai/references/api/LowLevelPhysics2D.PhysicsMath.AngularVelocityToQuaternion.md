<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsMath.AngularVelocityToQuaternion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| angularVelocity | The 2D angular velocity, in radians. |
| deltaTime | The time over which to apply the angular velocity, in seconds. |
| transformPlane | The transform plane to use. |

### Returns

**Quaternion** The transformed rotation.

### Description

Calculate a UnityEngine.Quaternion given a 2D angular velocity and a time to integrate over using the selected transform plane.
