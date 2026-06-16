<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A body is contained within a world and has 3 degrees-of-freedom, two for position and one for rotation. A body can have forces, torques and impulses applied to it. A body has three distinct types: Static: This type of body does not move under simulation and behaves as if it has infinite mass, essentially an immovable object. Static bodies never interact with other Static or Kinematic bodies.Dynamic: This type of body is fully simulated and moves according to forces and torques applied to its linear/angular velocities. It can interact with all other body types. It always has finite, non-zero mass.Kinematic: This type of body moves under simulation and moves according to its linear/angular velocities and never uses forces or torques. It only interacts with Dynamic body types. It behaves as if it has infinite mass. A body is automatically destroyed when the world it is in is destroyed. A body cannot exist outside a world.

### Properties

| Property | Description |
| --- | --- |
| angularDamping | The angular damping of the body. This will reduce the angular velocity over time. See PhysicsBody.angularVelocity. |
| angularVelocity | The angular velocity of the body. |
| awake | The awake state of the body. |
| callbackTarget | Get/Set the System.Object that event callbacks for this body will be sent to. Care should be taken with any System.Object assigned as a callback target that isn't a UnityEngine.Object as this assignment will not in itself keep the object alive and can be garbage collected. To avoid this, you should have at least a single reference to the object in your code. This includes the following events: - A BodyUpdateEvent with call IBodyUpdateCallback. |
| collisionThreshold | A threshold used to control when continuous collision detection is used when a body moves. The value is used to compare the body linear velocity movement against the extents of all the shapes added to the body scaled by this threshold. If the movement exceeds the extents scaled by the threshold then continuous collision detection is used to stop tunneling. Lower values reduce the distance the body must move before continuous collision detection is used and can have a considerable impact on performance! Higher values increase the distance the body must move before continuous collision detection is used. Too low a threshold will result in continuous collision detection being used more often therefore affecting performance so this should be limited to specific bodies only. The default threshold is 0.5 which equates to half the total shape extents. The threshold is clamped to a range of 0.0 to 1.0 with 0.0 meaning continuous collision detection will always be used. |
| constraints | Get/Set the degrees of freedom constraints (locks) for the body of Linear X, Linear Y and Rotation Z. |
| definition | Get/Set a body definition by accessing all of its current properties. This is provided as convenience only and should not be used when performance is important as all the properties defined in the definition are accessed sequentially. You should try to only use the specific properties you need rather than using this feature. |
| enabled | The enabled state of the body. If false, the body and anything attached to it will not participate in the simulation. |
| fastCollisionsAllowed | Treat this body as high speed object that performs continuous collision detection against dynamic and kinematic bodies, but not other high speed bodies. Fast collision bodies should be used sparingly. They are not a solution for general dynamic-versus-dynamic continuous collision. |
| fastRotationAllowed | This allows this body to bypass rotational speed limits. This should only be used for circular objects, such as wheels, balls etc. |
| gravityScale | Scales the world gravity that is applied to this body. Setting the gravity scale to zero stops any gravity being applied. Likewise, a negative value inverts gravity. See PhysicsWorld.gravity. |
| isOwned | Get if the body is owned. See PhysicsBody.SetOwner. |
| isValid | Checks if a body is valid. |
| jointCount | Get the number of joints attached to this body. Use PhysicsBody.GetJoints to retrieve the joints. |
| linearDamping | The linear damping of the body. This will reduce the linear velocity over time. See PhysicsBody.linearVelocity. |
| linearVelocity | The linear velocity of the body. |
| localCenterOfMass | The center of mass position of the body in local space. This can be accessed as a union of PhysicsBody.mass, PhysicsBody.rotationalInertia and PhysicsBody.localCenterOfMass using PhysicsBody.massConfiguration. |
| mass | The calculated mass of the body, usually in kilograms. This can be accessed as a union of PhysicsBody.mass, PhysicsBody.rotationalInertia and PhysicsBody.localCenterOfMass using PhysicsBody.massConfiguration. |
| massConfiguration | The body mass configuration comprised of the PhysicsBody.mass, PhysicsBody.rotationalInertia and PhysicsBody.localCenterOfMass. Normally this is computed automatically as each PhysicsShape is added, removed or changed on a body. This will automatically change if the body type changes, for instance, a Static or Kinematic body always have zero mass and rotational inertia. The individual properties of the PhysicsBody.massConfiguration and be accessed using PhysicsBody.mass, PhysicsBody.rotationalInertia and PhysicsBody.localCenterOfMass. The MassConfiguration will be overwritten when setting this property or if PhysicsBody.ApplyMassFromShapes is called or when adding, removing or changing PhysicsShape with PhysicsShapeDefinition.startMassUpdate enabled. |
| ownerUserData | Get PhysicsUserData that can be used for any purpose, typically by the owner only. |
| position | The position of the body in the world. |
| rotation | The rotation of the body. |
| rotationalInertia | The rotational inertia of the body, usually in kg*m^2. This can be accessed as a union of PhysicsBody.mass, PhysicsBody.rotationalInertia and PhysicsBody.localCenterOfMass using PhysicsBody.massConfiguration. |
| shapeCount | Get the number of shapes attached to this body. Use PhysicsBody.GetShapes to retrieve the shapes. |
| sleepingAllowed | The sleeping ability of the body. If false, the body will never sleep and will be woken up. See PhysicsBody.awake. |
| sleepThreshold | The threshold below which the body will sleep, in meters/sec. |
| transform | The full transform of the body composed of position and rotation. |
| transformObject | Get/Set the transform object associated with the body. This can be used as a write transform and/or as a hint for debug drawing. See PhysicsBody.transformWriteMode. |
| transformWriteMode | Get/Set how the PhysicsBody.transformObject should be written to after the simulation has completed. Transform write will only occur if it is enabled on the world using PhysicsWorld.transformWriteMode. |
| type | A body is one of these three body types, Dynamic, Kinematic or Static, each of which determines how the body behaves in the simulation. |
| userData | Get/Set PhysicsUserData that can be used for any purpose. The physics system doesn't use this data, it is entirely for custom use. |
| world | Get the world the body is attached to. |
| worldCenterOfMass | Get the center of mass position of the body in world space. This can be accessed as a union of PhysicsBody.mass, PhysicsBody.rotationalInertia and PhysicsBody.localCenterOfMass using PhysicsBody.massConfiguration. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyAngularImpulse | Apply an angular impulse. This should be used for one-shot impulses. If you need a steady torque, use a torque instead, which will work better with the sub-stepping solver. |
| ApplyForce | Apply a force at a world point. If the force is not applied at the center of mass, it will generate a torque and affect the angular velocity. |
| ApplyForceToCenter | Apply a force to the center of mass. |
| ApplyLinearImpulse | Apply an impulse at a point. This immediately modifies the velocity and also modifies the angular velocity if the point of application is not at the center of mass. This should be used for one-shot impulses. If you need a steady force, use a force instead, which will work better with the sub-stepping solver. |
| ApplyLinearImpulseToCenter | Apply an impulse to the center of mass. This immediately modifies the velocity. This should be used for one-shot impulses. If you need a steady force, use a force instead, which will work better with the sub-stepping solver. |
| ApplyMassFromShapes | Typically a body will automatically calculate the MassConfiguration using all the attached shapes. The MassConfiguration is automatically updated whenever a PhysicsShape is added, removed or modified. When adding many shapes to a body, you can choose to stop this automatic calculation, therefore improving performance, by disabling PhysicsShapeDefinition.startMassUpdate for each shape being added to the body. This call will result in the MassConfiguration being calculated using the currently added PhysicsShape so is typically called after many shapes are added if they have PhysicsShapeDefinition.startMassUpdate disabled. Alternately, if you wish to assign your own MassConfiguration then disabling the automatic calculation also makes sense. In either case, you must call this method or set PhysicsBody.massConfiguration before any simulation step occurs otherwise the PhysicsBody will exhibit unstable collision behaviour. The MassConfiguration will be overwritten when calling PhysicsBody.ApplyMassFromShapes, if PhysicsBody.massConfiguration is set or when adding, removing or changing PhysicsShape with PhysicsShapeDefinition.startMassUpdate enabled. |
| ApplyTorque | Apply a torque. This affects the angular velocity without affecting the linear velocity. |
| ClearForces | Clear any user forces that have been applied to this body. Forces on a body are automatically cleared when a simulation step completes, however under some circumstances it may be desirable to clear the forces explicitly. |
| CreateChain | Create a Chain attached to this body. |
| CreateShape | Create a Circle shape, using its default definition, attached to this body. |
| CreateShapeBatch | Create a batch of Circle shapes attached to this body. |
| Destroy | Destroy a body, destroying all attached PhysicsShape and PhysicsJoint. If the object is owned with PhysicsBody.SetOwner then you must provide the owner key it returned. Failing to do so will return a warning and the body will not be destroyed. |
| Draw | Draw a body that visually represents its current state in the world. This is only used in the Unity Editor or in a Development Player. |
| GetAABB | Get the world AABB that bounds all the shapes attached to this body. If there are no shapes attached to the body then the returned AABB is empty and centered on the body origin. |
| GetContacts | Get all the touching contacts this body is currently participating in. Speculative collision is used so some contact points may be separated, a property available in the provided contact manifold. |
| GetJoints | Get the joints attached to this body. |
| GetLocalPoint | Gets a local point relative to the body given a world point. |
| GetLocalPointVelocity | Get the linear velocity of a local point attached to a body. Usually in meters per second. |
| GetLocalVector | Gets a local vector on a body given a world vector. |
| GetOwner | Get the owner object associated with this body as specified using PhysicsBody.SetOwner. |
| GetPositionAndRotation3D | Get the full 3D position and rotation of the body given the specified TransformWriteMode and TransformPlane. Usually both the write-mode and transform-plane of the world the body is in would be used. This can only be called when a PhysicsBody.transformObject is assigned. Without this, an exception is thrown. See PhysicsWorld.transformWriteMode and PhysicsWorld.transformPlane. |
| GetShapes | Get the shapes attached to this body. |
| GetWorldPoint | Gets a world point transformed from a local point relative to the body. |
| GetWorldPointVelocity | Get the linear velocity of a world point attached to a body. Usually in meters per second. |
| GetWorldVector | Gets a world vector transformed from a local vector relative to the body. |
| SetAndWriteTransform | Set the full transform of the body composed of position and rotation and also write to the associated PhysicsBody.transformObject. The PhysicsBody.transformObject won't be written to if it isn't assigned or the PhysicsWorld.transformWriteMode are off. The body will always be updated however. See PhysicsBody.transformObject. |
| SetContactEvents | Enable/disable contact events on all shapes attached to the body. See PhysicsShape.contactEvents. |
| SetHitEvents | Enable/disable hit events on all shapes attached to the body. See PhysicsShape.hitEvents. |
| SetOwner | Set the (optional) owner object associated with this body and return an owner key that must be specified when destroying the body with PhysicsBody.Destroy. The physics system provides access to all objects, including the ability to destroy them so this feature can be used to stop accidental destruction of objects that are owned by other objects. You can only set the owner once, multiple attempts will produce a warning. The lifetime of the specified owner object is not linked to this body i.e. this body will still be owned by the owner object, even if it is destroyed. It is also valid to not specify an owner object (NULL) to simply gain an owner key however it can be useful, if simply for debugging purposes and discovery, to know which object is the owner. |
| SetOwnerUserData | Set PhysicsUserData that can be used for any purpose, typically by the owner only. |
| SetTransformTarget | Set the PhysicsBody.linearVelocity and PhysicsBody.angularVelocity to reach the specified transform in the specified time. The resultant transform will be closed by may not be exact. This is designed ideally for Kinematic bodies but will work with Dynamic bodies if nothing changes the assigned velocities. This will be ignored if the calculated PhysicsBody.linearVelocity and PhysicsBody.angularVelocity would be below the PhysicsBody.sleepThreshold. This will automatically wake the body if it is asleep. |
| WakeTouching | Wake any bodies that are touching this body via their shapes. This also works for Static bodies. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Create a body using PhysicsBodyDefinition.defaultDefinition in the specified world. |
| CreateBatch | Create a batch of bodies in the specified world. |
| DestroyBatch | Destroy a batch of bodies, destroying all attached PhysicsShape and PhysicsJoint. Any invalid bodies will be ignored. Owned bodies will produce a warning and will not be destroyed (See PhysicsBody.SetOwner). |
| SetBatchForce | Apply a force for a batch of PhysicsBody using a span of BatchForce. If invalid values are passed to the batch, they will simply be ignored. For best performance, the bodies contained in the batch should all be part of the same PhysicsWorld. If the bodies in the batch are not contained in the same PhysicsWorld, the batch should be sorted by the PhysicsWorld the bodies are contained within. |
| SetBatchImpulse | Apply an impulse for a batch of PhysicsBody using a span of BatchImpulse. If invalid values are passed to the batch, they will simply be ignored. For best performance, the bodies contained in the batch should all be part of the same PhysicsWorld. If the bodies in the batch are not contained in the same PhysicsWorld, the batch should be sorted by the PhysicsWorld the bodies are contained within. |
| SetBatchTransform | Set the transform for a batch of PhysicsBody using a span of BatchTransform. If invalid values are passed to the batch, they will simply be ignored. For best performance, the bodies contained in the batch should all be part of the same PhysicsWorld. If the bodies in the batch are not contained in the same PhysicsWorld, the batch should be sorted by the PhysicsWorld the bodies are contained within. |
| SetBatchVelocity | Set the velocity for a batch of PhysicsBody using a span of BatchVelocity. If invalid values are passed to the batch, they will simply be ignored. For best performance, the bodies contained in the batch should all be part of the same PhysicsWorld. If the bodies in the batch are not contained in the same PhysicsWorld, the batch should be sorted by the PhysicsWorld the bodies are contained within. |
