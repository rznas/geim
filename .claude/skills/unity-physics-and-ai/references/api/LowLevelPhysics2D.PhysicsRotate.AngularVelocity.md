<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsRotate.AngularVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rotation | The rotation used as a calculation to rotate to. |
| deltaTime | The delta time over which the rotation would take place. |

### Returns

**float** The angular velocity required to rotate to the specified rotation.

### Description

Calculate the angular velocity necessary to rotate the current rotation and the specified rotation over a give time.

### Parameters

| Parameter | Description |
| --- | --- |
| rotationA | The rotation to rotate from. |
| rotationB | The rotation to rotate to. |
| deltaTime | The delta time over which the rotation would take place. |

### Returns

**float** The angular velocity required to rotate between the specified rotations.

### Description

Calculate the angular velocity necessary to rotate between two rotations over a give time.
