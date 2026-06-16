<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsSliderJointDefinition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A joint definition used to specify properties when creating a PhysicsSliderJoint.

### Static Properties

| Property | Description |
| --- | --- |
| defaultDefinition | Get a default PhysicsSliderJoint definition. |

### Properties

| Property | Description |
| --- | --- |
| bodyA | The first body the joint constrains. |
| bodyB | The second body the joint constrains. |
| collideConnected | Whether the shapes on the pair of bodies can come into contact. |
| drawScale | Controls the scaling of the joint drawing. Not all joints have scalable elements but those that do will use this scaling. |
| enableLimit | Enable/disable the joint translation limit. |
| enableMotor | Enable/disable the joint motor. |
| enableSpring | Enable/Disable a spring along the slider joint axis. |
| forceThreshold | The force threshold beyond which a joint event will be produced. |
| localAnchorA | The local anchor frame constraint relative to bodyA's origin. |
| localAnchorB | The local anchor frame constraint relative to bodyB's origin. |
| lowerTranslationLimit | The lower translation limit of this joint. This will be clamped to a lower stable limit. |
| maxMotorForce | The maximum force the motor can apply, usually in newtons. |
| motorSpeed | The desired motor speed, usually in meters per second. |
| springDamping | The spring damping, non-dimensional. Use 1 for critical damping. |
| springFrequency | The spring stiffness frequency, in cycles per second. |
| springTargetTranslation | The spring target translation, usually in meters. The spring-damper will drive to this translation. |
| torqueThreshold | The torque threshold beyond which a joint event will be produced. |
| tuningDamping | Controls the joint stiffness damping, non-dimensional. Use 1 for critical damping. |
| tuningFrequency | Controls the joint stiffness frequency, in cycles per second. |
| upperTranslationLimit | The upper translation limit of this joint. Must be greater than or equal to the minimum length. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsSliderJointDefinition | Create a default PhysicsSliderJoint definition. |
