<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsJoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A joint is used to constrain bodies to the world or to each other in various ways. A joint is automatically destroyed when either body it is attached to is destroyed. A joint cannot exist unattached from a body.

### Properties

| Property | Description |
| --- | --- |
| bodyA | The first body the joint constrains. |
| bodyB | The second body the joint constrains. |
| callbackTarget | Get/Set the System.Object object that event callbacks for this joint will be sent to. Care should be taken with any System.Object assigned as a callback target that isn't a UnityEngine.Object as this assignment will not in itself keep the object alive and can be garbage collected. To avoid this, you should have at least a single reference to the object in your code. This includes the following events: - A JointThresholdEvent with call IJointThresholdCallback. |
| collideConnected | Whether the shapes on the pair of bodies can come into contact. |
| currentAngularSeparationError | Get the current angular separation error for this joint, in degrees. This does not consider admissible movement. |
| currentConstraintForce | Get the current constraint force used by the joint, usually in newtons. |
| currentConstraintTorque | Get the current constraint torque used by the joint, usually in newton-meters. |
| currentLinearSeparationError | Get the current linear separation error for this joint, usually in meters. This does not consider admissible movement. |
| drawScale | Controls the scaling of the joint drawing. Not all joints have scalable elements but those that do will use this scaling. |
| forceThreshold | The force threshold beyond which a joint event will be produced. |
| isOwned | Get if the joint is owned. See PhysicsJoint.SetOwner. |
| isValid | Checks if the joint is valid. |
| jointType | Gets the joint type. See JointType. |
| localAnchorA | The local anchor frame constraint relative to bodyA's origin. |
| localAnchorB | The local anchor frame constraint relative to bodyB's origin. |
| ownerUserData | Get PhysicsUserData that can be used for any purpose, typically by the owner only. |
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
| CreateJoint | Create a PhysicsDistanceJoint in the world. See PhysicsDistanceJoint.Create. |
| DestroyBatch | Destroy a batch of joints. Owned joints will produce a warning and will not be destroyed (see PhysicsJoint.SetOwner). Any invalid joints will be ignored. |
