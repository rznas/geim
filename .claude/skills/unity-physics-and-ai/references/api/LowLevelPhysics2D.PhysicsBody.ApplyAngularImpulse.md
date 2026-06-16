<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.ApplyAngularImpulse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| impulse | The angular impulse, usually in units of kg"m"m/s. |
| wake | Should the body be woken up. |

### Description

Apply an angular impulse. This should be used for one-shot impulses. If you need a steady torque, use a torque instead, which will work better with the sub-stepping solver.
