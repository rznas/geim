<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsFixedJointDefinition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A joint definition used to specify properties when creating a PhysicsFixedJoint.

### Static Properties

| Property | Description |
| --- | --- |
| defaultDefinition | Get a default PhysicsFixedJoint definition. |

### Properties

| Property | Description |
| --- | --- |
| angularDamping | Angular damping, non-dimensional. Use 1 for critical damping. |
| angularFrequency | Angular stiffness frequency, in cycles per second. Use zero for maximum stiffness. |
| bodyA | The first body the joint constrains. |
| bodyB | The second body the joint constrains. |
| collideConnected | Whether the shapes on the pair of bodies can come into contact. |
| drawScale | Controls the scaling of the joint drawing. Not all joints have scalable elements but those that do will use this scaling. |
| forceThreshold | The force threshold beyond which a joint event will be produced. |
| linearDamping | Linear damping, non-dimensional. Use 1 for critical damping. |
| linearFrequency | Linear stiffness frequency, in cycles per second. Use zero for maximum stiffness. |
| localAnchorA | The local anchor frame constraint relative to bodyA's origin. |
| localAnchorB | The local anchor frame constraint relative to bodyB's origin. |
| torqueThreshold | The torque threshold beyond which a joint event will be produced. |
| tuningDamping | Controls the joint stiffness damping, non-dimensional. Use 1 for critical damping. |
| tuningFrequency | Controls the joint stiffness frequency, in cycles per second. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsFixedJointDefinition | Create a default PhysicsFixedJoint definition. |
