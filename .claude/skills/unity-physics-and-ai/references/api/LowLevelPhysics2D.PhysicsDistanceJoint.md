<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsDistanceJoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Connects an anchor point on body A with an anchor point on body B via a line segment of a specified distance.

### Properties

| Property | Description |
| --- | --- |
| bodyA | The first body the joint constrains. |
| bodyB | The second body the joint constrains. |
| callbackTarget | Get/Set the System.Object that event callbacks for this joint will be sent to. Care should be taken with any System.Object assigned as a callback target that isn't a UnityEngine.Object as this assignment will not in itself keep the object alive and can be garbage collected. To avoid this, you should have at least a single reference to the object in your code. This includes the following events: - A JointThresholdEvent with call IJointThresholdCallback. |
| collideConnected | Whether the shapes on the pair of bodies can come into contact. |
| currentAngularSeparationError | Get the current angular separation error for this joint, in degrees. This does not consider admissible movement. |
| currentConstraintForce | Get the current constraint force used by the joint, usually in newtons. |
| currentConstraintTorque | Get the current constraint torque used by the joint, usually in newton-meters. |
| currentDistance | Get the current distance. |
| currentLinearSeparationError | Get the current linear separation error for this joint, usually in meters. This does not consider admissible movement. |
| currentMotorForce | The current motor force, usually in newtons. |
| distance | The desired distance constraint i.e. the rest length of this joint. This has a lower stable limit of just above zero. |
| drawScale | Controls the scaling of the joint drawing. |
| enableLimit | Enable/Disable the joint distance limit. |
| enableMotor | Enable/Disable the joint motor. |
| enableSpring | Enable/Disable the spring behaviour. If false then the joint will be rigid, overriding the limit and motor. |
| forceThreshold | The force threshold beyond which a joint event will be produced. |
| isOwned | Get if the joint is owned. See PhysicsJoint.SetOwner. |
| isValid | Checks if the joint is valid. |
| jointType | Gets the joint type. See JointType. |
| localAnchorA | The local anchor frame constraint relative to bodyA's origin. |
| localAnchorB | The local anchor frame constraint relative to bodyB's origin. |
| maxDistanceLimit | Maximum distance limit of this joint. Must be greater than or equal to the minimum length. |
| maxMotorForce | The maximum force the motor can apply, usually in newtons. |
| minDistanceLimit | Minimum distance limit of this joint. This will be clamped to a lower stable limit. |
| motorSpeed | The desired motor speed, usually in meters per second. |
| ownerUserData | Get PhysicsUserData that can be used for any purpose, typically by the owner only. |
| springDamping | The spring linear damping, non-dimensional. |
| springFrequency | The spring linear stiffness frequency, in cycles per second. |
| springLowerForce | The lower spring force controls how much tension the spring can sustain. |
| springUpperForce | The upper spring force controls how much compression the spring can sustain. |
| torqueThreshold | The torque threshold beyond which a joint event will be produced. |
| tuningDamping | Controls the joint stiffness damping, non-dimensional. Use 1 for critical damping. |
| tuningFrequency | Controls the joint stiffness frequency, in cycles per second. |
| userData | Get/Set PhysicsUserData that can be used for any purpose. The physics system doesn't use this data, it is entirely for custom use. |
| world | Get the world the body is attached to. |

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
| Create | Create a PhysicsDistanceJoint in the specified world. |
| DestroyBatch | Destroy a batch of joints. Owned joints will produce a warning and will not be destroyed (see PhysicsJoint.SetOwner). Any invalid joints will be ignored. |

### Operators

| Operator | Description |
| --- | --- |
| PhysicsDistanceJoint | Cast to a PhysicsDistanceJoint from the base PhysicsJoint. The provided joint must be a joint type of PhysicsJoint.JointType.DistanceJoint. |
| PhysicsJoint | Cast to the base PhysicsJoint. |
