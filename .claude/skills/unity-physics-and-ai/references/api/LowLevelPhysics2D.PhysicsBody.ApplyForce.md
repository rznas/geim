<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.ApplyForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| force | The world force vector, usually in newtons (N) |
| point | The world position of the point of application. |
| wake | Should the body be woken up. |

### Description

Apply a force at a world point. If the force is not applied at the center of mass, it will generate a torque and affect the angular velocity.
