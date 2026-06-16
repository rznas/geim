<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsDistanceJointDefinition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A joint definition used to specify properties when creating a PhysicsDistanceJoint.

### Static Properties

| Property | Description |
| --- | --- |
| defaultDefinition | Get a default PhysicsDistanceJoint definition. |

### Properties

| Property | Description |
| --- | --- |
| bodyA | The first body the joint constrains. |
| bodyB | The second body the joint constrains. |
| collideConnected | Whether the shapes on the pair of bodies can come into contact. |
| distance | The desired distance constraint i.e. the rest length of this joint. This has a lower stable limit of just above zero. |
| drawScale | Controls the scaling of the joint drawing. Not all joints have scalable elements but those that do will use this scaling. |
| enableLimit | Enable/disable the joint limit. |
| enableMotor | Enable/Disable the joint motor. |
| enableSpring | Enable/Disable the distance constraint to behave like a spring. If false then the distance joint will be rigid, overriding the limit and motor. |
| forceThreshold | The force threshold beyond which a joint event will be produced. |
| localAnchorA | The local anchor frame constraint relative to bodyA's origin. |
| localAnchorB | The local anchor frame constraint relative to bodyB's origin. |
| maxDistanceLimit | Maximum length limit of this joint. Must be greater than or equal to the minimum length. |
| maxMotorForce | The maximum force the motor can apply, usually in newtons. |
| minDistanceLimit | Minimum length limit of this joint. This will be clamped to a lower stable limit. |
| motorSpeed | The desired motor speed, usually in meters per second. |
| springDamping | The spring linear damping, non-dimensional. Use 1 for critical damping. |
| springFrequency | The spring linear stiffness frequency, in cycles per second. |
| springLowerForce | The lower spring force controls how much tension the spring can sustain. |
| springUpperForce | The upper spring force controls how much compression the spring can sustain. |
| torqueThreshold | The torque threshold beyond which a joint event will be produced. |
| tuningDamping | Controls the joint stiffness damping, non-dimensional. Use 1 for critical damping. |
| tuningFrequency | Controls the joint stiffness frequency, in cycles per second. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsDistanceJointDefinition | Create a default PhysicsDistanceJoint definition. |
