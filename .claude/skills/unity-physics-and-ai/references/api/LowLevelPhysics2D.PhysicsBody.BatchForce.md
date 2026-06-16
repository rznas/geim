<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.BatchForce.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A batch item used to apply a force to a PhysicsBody.

### Properties

| Property | Description |
| --- | --- |
| physicsBody | The PhysicsBody to write to. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsBody.BatchForce | Create a default batch force, assigning the PhysicsBody. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyForce | Apply a force at a world point. If the force is not applied at the center of mass, it will generate a torque and affect the angular velocity. PhysicsBody.ApplyForce. |
| ApplyForceToCenter | Apply a force to the center of mass. PhysicsBody.ApplyForceToCenter. |
| ApplyTorque | Apply a torque. This affects the angular velocity without affecting the linear velocity. PhysicsBody.ApplyTorque. |
