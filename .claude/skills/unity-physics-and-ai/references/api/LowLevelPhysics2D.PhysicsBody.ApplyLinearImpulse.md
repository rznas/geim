<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.ApplyLinearImpulse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| impulse | The world impulse vector, usually in N"s or kg"m/s. |
| point | The world position of the point of application. |
| wake | Should the body be woken up. |

### Description

Apply an impulse at a point. This immediately modifies the velocity and also modifies the angular velocity if the point of application is not at the center of mass. This should be used for one-shot impulses. If you need a steady force, use a force instead, which will work better with the sub-stepping solver.
