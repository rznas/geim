<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsRelativeJointDefinition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A joint definition used to specify properties when creating a PhysicsRelativeJoint.

### Static Properties

| Property | Description |
| --- | --- |
| defaultDefinition | Create a default PhysicsRelativeJoint definition. |

### Properties

| Property | Description |
| --- | --- |
| angularVelocity | The desired angular velocity. |
| bodyA | The first body the joint constrains. |
| bodyB | The second body the joint constrains. |
| collideConnected | Whether the shapes on the pair of bodies can come into contact. |
| drawScale | Controls the scaling of the joint drawing. Not all joints have scalable elements but those that do will use this scaling. |
| forceThreshold | The force threshold beyond which a joint event will be produced. |
| linearVelocity | The desired linear velocity. |
| localAnchorA | The local anchor frame constraint relative to bodyA's origin. |
| localAnchorB | The local anchor frame constraint relative to bodyB's origin. |
| maxForce | The maximum linear force, usually in newtons. A value of zero is a special case which turns the limit off. |
| maxTorque | The maximum torque, usually in newton-meters. A value of zero is a special case which turns the limit off. |
| springAngularDamping | The spring angular damping. Use 1 for critical damping. |
| springAngularFrequency | The spring angular frequency, in cycles per second. A value of zero is a special case which turns the angular spring off. |
| springLinearDamping | The spring linear damping. Use 1 for critical damping. |
| springLinearFrequency | The spring linear frequency, in cycles per second. A value of zero is a special case which turns the linear spring off. |
| springMaxForce | The spring maximum linear force, usually in newtons. A value of zero is a special case which turns the force limit off. |
| springMaxTorque | The spring maximum torque, usually in newton-meters. A value of zero is a special case which turns the torque limit off. |
| torqueThreshold | The torque threshold beyond which a joint event will be produced. |
| tuningDamping | Controls the joint stiffness damping, non-dimensional. Use 1 for critical damping. |
| tuningFrequency | Controls the joint stiffness frequency, in cycles per second. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsRelativeJointDefinition | Create a default PhysicsRelativeJoint definition. |
