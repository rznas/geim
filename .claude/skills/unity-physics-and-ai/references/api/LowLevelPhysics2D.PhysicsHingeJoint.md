<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsHingeJoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A joint where an anchor point on body B is fixed to an anchor point on body A. This joint allows relative rotation.

### Properties

| Property | Description |
| --- | --- |
| angle | Get the current angle of the joint, in degrees. |
| bodyA | The first body the joint constrains. |
| bodyB | The second body the joint constrains. |
| callbackTarget | Get/Set the System.Object that event callbacks for this joint will be sent to. Care should be taken with any System.Object assigned as a callback target that isn't a UnityEngine.Object as this assignment will not in itself keep the object alive and can be garbage collected. To avoid this, you should have at least a single reference to the object in your code. This includes the following events: - A JointThresholdEvent with call IJointThresholdCallback. |
| collideConnected | Whether the shapes on the pair of bodies can come into contact. |
| currentAngularSeparationError | Get the current angular separation error for this joint, in degrees. This does not consider admissible movement. |
| currentConstraintForce | Get the current constraint force used by the joint, usually in newtons. |
| currentConstraintTorque | Get the current constraint torque used by the joint, usually in newton-meters. |
| currentLinearSeparationError | Get the current linear separation error for this joint, usually in meters. This does not consider admissible movement. |
| currentMotorTorque | Get the current motor torque. |
| drawScale | Controls the scaling of the joint drawing. |
| enableLimit | Enable/Disable the joint rotation limit. |
| enableMotor | Enable/Disable the joint motor. |
| enableSpring | Enable/Disable the rotational spring. |
| enableUnpinned | Enable/Disable unpinned mode where only Body A is affected and body B and its local anchor point is ignored. Body B must still be assigned so it is typical to assign a static ground body, preferably shared/reused. |
| forceThreshold | The force threshold beyond which a joint event will be produced. |
| isOwned | Get if the joint is owned. See PhysicsJoint.SetOwner. |
| isValid | Checks if the joint is valid. |
| jointType | Gets the joint type. See JointType. |
| localAnchorA | The local anchor frame constraint relative to bodyA's origin. |
| localAnchorB | The local anchor frame constraint relative to bodyB's origin. |
| lowerAngleLimit | Get the lower angle limit, in degrees. |
| maxMotorTorque | The maximum torque the motor can apply, usually in newton-meters. |
| motorSpeed | The desired motor speed, usually in degrees per second. |
| ownerUserData | Get PhysicsUserData that can be used for any purpose, typically by the owner only. |
| springDamping | The spring damping, non-dimensional. |
| springFrequency | The spring stiffness, in cycles per second. |
| springTargetAngle | The spring target angle, in degrees. |
| torqueThreshold | The torque threshold beyond which a joint event will be produced. |
| tuningDamping | Controls the joint stiffness damping, non-dimensional. Use 1 for critical damping. |
| tuningFrequency | Controls the joint stiffness frequency, in cycles per second. |
| upperAngleLimit | Get the upper angle limit, in degrees. |
| userData | Get/Set PhysicsUserData that can be used for any purpose. The physics system doesn't use this data, it is entirely for custom use. |
| world | Get the world the body is attached to. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsHingeJoint | Create a PhysicsHingeJoint from the specified base joint. The provided joint must be a joint type of PhysicsJoint.JointType.HingeJoint. |

### Public Methods

| Method | Description |
| --- | --- |
| Destroy | Destroy the joint. If the object is owned with PhysicsJoint.SetOwner then you must provide the owner key it returned. Failing to do so will return a warning and the joint will not be destroyed. |
| Draw | Draw a PhysicsJoint that visually represents its current state in the world. This is only used in the Unity Editor or in a Development Player. |
| GetOwner | Get the owner object associated with this joint as specified using PhysicsJoint.SetOwner. |
| SetOwner | Set the (optional) owner object associated with this joint and return an owner key that must be specified when destroying the joint with PhysicsJoint.Destroy. The physics system provides access to all objects, including the ability to destroy them so this feature can be used to stop accidental destruction of objects that are owned by other objects. You can only set the owner once, multiple attempts will produce a warning. The lifetime of the specified owner object is not linked to this joint i.e. this joint will still be owned by the owner object, even if it is destroyed. It is also valid to not specify an owner object (NULL) to simply gain an owner key however it can be useful, if simply for debugging purposes and discovery, to know which object is the owner. |
| SetOwnerUserData | Set PhysicsUserData that can be used for any purpose, typically by the owner only. |
| WakeBodies | Wake the pair of bodies the joint is constraining. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Create a PhysicsHingeJoint in the specified world. |
| DestroyBatch | Destroy a batch of joints. Owned joints will produce a warning and will not be destroyed (see PhysicsJoint.SetOwner). Any invalid joints will be ignored. |

### Operators

| Operator | Description |
| --- | --- |
| PhysicsHingeJoint | Cast to a PhysicsHingeJoint from the base PhysicsJoint. The provided joint must be a joint type of PhysicsJoint.JointType.HingeJoint. |
| PhysicsJoint | Cast to the base PhysicsJoint. |
