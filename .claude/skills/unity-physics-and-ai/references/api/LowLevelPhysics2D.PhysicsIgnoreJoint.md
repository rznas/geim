<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsIgnoreJoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A joint used to ignore collision between two specific bodies. As a side effect of being a joint, it also keeps the two bodies in the same simulation island meaning they'll wake/sleep at the same time and be solved together on the same thread.

### Properties

| Property | Description |
| --- | --- |
| bodyA | The first body the joint constrains. |
| bodyB | The second body the joint constrains. |
| callbackTarget | Get/Set the System.Object that event callbacks for this joint will be sent to. Care should be taken with any System.Object assigned as a callback target that isn't a UnityEngine.Object as this assignment will not in itself keep the object alive and can be garbage collected. To avoid this, you should have at least a single reference to the object in your code. This includes the following events: - A JointThresholdEvent with call IJointThresholdCallback. |
| collideConnected | This is unused in this specific joint and is always false. Typically this gets whether the shapes on the pair of bodies can come into contact. |
| currentAngularSeparationError | This is unused in this specific joint. Typically this would get the current angular separation error for this joint. |
| currentConstraintForce | This is unused in this specific joint. Typically this would get the current constraint force used by the joint, usually in newtons. |
| currentConstraintTorque | This is unused in this specific joint. Typically this would get the current constraint torque used by the joint, usually in newton-meters. |
| currentLinearSeparationError | This is unused in this specific joint. Typically this would get the current linear separation error for this joint. |
| drawScale | This is unused in this specific joint. Typically this would control the scaling of the joint drawing. |
| forceThreshold | This is unused in this specific joint. Typically this is the force threshold beyond which a joint event will be produced. |
| isOwned | Get if the joint is owned. See PhysicsJoint.SetOwner. |
| isValid | Checks if the joint is valid. |
| jointType | Gets the joint type. See JointType. |
| localAnchorA | This is unused in this specific joint. Typically this is the local anchor frame constraint relative to bodyA's origin. |
| localAnchorB | This is unused in this specific joint. Typically this is the local anchor frame constraint relative to bodyB's origin. |
| ownerUserData | Get PhysicsUserData that can be used for any purpose, typically by the owner only. |
| torqueThreshold | This is unused in this specific joint. Typically this is the torque threshold beyond which a joint event will be produced. |
| tuningDamping | This is unused in this specific joint. Typically this would control the joint stiffness damping, non-dimensional. Use 1 for critical damping. |
| tuningFrequency | This is unused in this specific joint. Typically this would control the joint stiffness frequency, in cycles per second. |
| userData | Get/Set PhysicsUserData that can be used for any purpose. The physics system doesn't use this data, it is entirely for custom use. |
| world | Get the world the body is attached to. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsIgnoreJoint | Create a PhysicsIgnoreJoint from the specified base joint. The provided joint must be a joint type of PhysicsJoint.JointType.IgnoreJoint. |

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
| Create | Create a PhysicsIgnoreJoint in the specified world. |
| DestroyBatch | Destroy a batch of joints. Owned joints will produce a warning and will not be destroyed (see PhysicsJoint.SetOwner). Any invalid joints will be ignored. |

### Operators

| Operator | Description |
| --- | --- |
| PhysicsIgnoreJoint | Cast to a PhysicsIgnoreJoint from the base PhysicsJoint. The provided joint must be a joint type of PhysicsJoint.JointType.IgnoreJoint. |
| PhysicsJoint | Cast to the base PhysicsJoint. |
