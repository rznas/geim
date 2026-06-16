<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.SetTransformTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transform | The transform target for the body. |
| deltaTime | The timer over which to calculate the required velocities to move to the transform. |

### Description

Set the PhysicsBody.linearVelocity and PhysicsBody.angularVelocity to reach the specified transform in the specified time. The resultant transform will be closed by may not be exact. This is designed ideally for Kinematic bodies but will work with Dynamic bodies if nothing changes the assigned velocities. This will be ignored if the calculated PhysicsBody.linearVelocity and PhysicsBody.angularVelocity would be below the PhysicsBody.sleepThreshold. This will automatically wake the body if it is asleep.
