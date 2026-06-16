<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWheelJointDefinition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A joint definition used to specify properties when creating a PhysicsWheelJoint.

### Static Properties

| Property | Description |
| --- | --- |
| defaultDefinition | Get a default PhysicsWheelJoint definition. |

### Properties

| Property | Description |
| --- | --- |
| bodyA | The first body the joint constrains. |
| bodyB | The second body the joint constrains. |
| collideConnected | Whether the shapes on the pair of bodies can come into contact. |
| drawScale | Controls the scaling of the joint drawing. Not all joints have scalable elements but those that do will use this scaling. |
| enableLimit | Enable/disable the joint translation limit. |
| enableMotor | Enable/disable the joint motor. |
| enableSpring | Enable/Disable a spring along the joint axis. |
| forceThreshold | The force threshold beyond which a joint event will be produced. |
| localAnchorA | The local anchor frame constraint relative to bodyA's origin. |
| localAnchorB | The local anchor frame constraint relative to bodyB's origin. |
| lowerTranslationLimit | The lower translation limit. |
| maxMotorTorque | The maximum torque the motor can apply, usually in newton-meters. |
| motorSpeed | The desired motor speed, usually in degrees per second. |
| springDamping | The spring damping, non-dimensional. Use 1 for critical damping. |
| springFrequency | The spring stiffness frequency, in cycles per second. |
| torqueThreshold | The torque threshold beyond which a joint event will be produced. |
| tuningDamping | Controls the joint stiffness damping, non-dimensional. Use 1 for critical damping. |
| tuningFrequency | Controls the joint stiffness frequency, in cycles per second. |
| upperTranslationLimit | The upper translation limit. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsWheelJointDefinition | Create a default PhysicsWheelJoint definition. |
