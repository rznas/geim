<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.BatchImpulse.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A batch item used to apply an impulse to a PhysicsBody.

### Properties

| Property | Description |
| --- | --- |
| physicsBody | The PhysicsBody to write to. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsBody.BatchImpulse | Create a default batch impulse, assigning the PhysicsBody. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyAngularImpulse | Apply an angular impulse. This should be used for one-shot impulses. If you need a steady torque, use a torque instead, which will work better with the sub-stepping solver. PhysicsBody.ApplyAngularImpulse. |
| ApplyLinearImpulse | Apply an impulse at a point. This immediately modifies the velocity and also modifies the angular velocity if the point of application is not at the center of mass. This should be used for one-shot impulses. If you need a steady force, use a force instead, which will work better with the sub-stepping solver. PhysicsBody.ApplyLinearImpulse. |
| ApplyLinearImpulseToCenter | Apply an impulse to the center of mass. This immediately modifies the velocity. This should be used for one-shot impulses. If you need a steady force, use a force instead, which will work better with the sub-stepping solver. PhysicsBody.ApplyLinearImpulseToCenter. |
