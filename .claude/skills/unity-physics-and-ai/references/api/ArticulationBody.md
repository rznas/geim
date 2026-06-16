<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A body that forms part of a Physics articulation.

An articulation is a set of bodies arranged in a logical tree. The parent-child link in this tree reflects that the bodies have their relative motion constrained. Articulations are solved by a Featherstone solver that works in reduced coordinates - that is each body has relative coordinates to its parent but only along the unlocked degrees of freedom. This guarantees there is no unwanted stretch.
 Like with regular Joints, there are two anchors for each pair of connected articulation bodies. One anchor is defined in the parent body's reference frame, whereas the other one is defined in the child's reference frame. Changing the constraints, you directly affect the allowed space for relative positions of the two anchors. For instance, ArticulationDofLock.LockedMotion will not allow any relative motion at all.

### Properties

| Property | Description |
| --- | --- |
| anchorPosition | Position of the anchor relative to this body. |
| anchorRotation | Rotation of the anchor relative to this body. |
| angularDamping | Damping factor that affects how this body resists rotations. |
| angularVelocity | The angular velocity of the body defined in world space. |
| automaticCenterOfMass | Whether or not to calculate the center of mass automatically. |
| automaticInertiaTensor | Whether or not to calculate the inertia tensor automatically. |
| centerOfMass | The center of mass of the body defined in local space. |
| collisionDetectionMode | The ArticulationBody's collision detection mode. |
| dofCount | The amount of degrees of freedom of a body. |
| driveForce | The drive force in reduced coordinates. |
| excludeLayers | The additional layers that all Colliders attached to this ArticulationBody should exclude when deciding if the Collider can come into contact with another Collider. |
| immovable | Allows you to specify that this body is not movable. |
| includeLayers | The additional layers that all Colliders attached to this ArticulationBody should include when deciding if a the Collider can come into contact with another Collider. |
| index | The index of the body in the hierarchy of articulation bodies. |
| inertiaTensor | The inertia tensor of this body. |
| inertiaTensorRotation | The rotation of the inertia tensor. |
| isRoot | Indicates whether this body is the root body of the articulation (Read Only). |
| jointAcceleration | The joint acceleration in reduced coordinates. |
| jointForce | The joint force in reduced coordinates. |
| jointFriction | Allows you to specify the amount of friction that is applied as a result of the parent body moving relative to this body. |
| jointPosition | The joint position in reduced coordinates. |
| jointType | The type of joint connecting this body to its parent body. |
| jointVelocity | The joint velocity in reduced coordinates. |
| linearDamping | Damping factor that affects how this body resists linear motion. |
| linearLockX | The type of lock along X axis of movement. |
| linearLockY | The type of lock along Y axis of movement. |
| linearLockZ | The type of lock along Z axis of movement. |
| linearVelocity | Linear velocity of the body defined in world space. |
| mass | The mass of this articulation body. |
| matchAnchors | Whether the parent anchor should be computed automatically or not. |
| maxAngularVelocity | The maximum angular velocity of the articulation body measured in radians per second. |
| maxDepenetrationVelocity | The maximum velocity of an articulation body when moving out of penetrating state. |
| maxJointVelocity | The maximum joint velocity of the articulation body joint in reduced coordinates. |
| maxLinearVelocity | The maximum linear velocity of the articulation body measured in meters per second. |
| parentAnchorPosition | Position of the anchor relative to this body's parent. |
| parentAnchorRotation | Rotation of the anchor relative to this body's parent. |
| sleepThreshold | The mass-normalized energy threshold, below which objects start going to sleep. |
| solverIterations | The solverIterations determines how accurately articulation body joints and collision contacts are resolved. |
| solverVelocityIterations | The solverVelocityIterations affects how accurately articulation body joints and collision contacts are resolved during bounce. |
| swingYLock | The magnitude of the conical swing angle relative to Y axis. |
| swingZLock | The magnitude of the conical swing angle relative to Z axis. |
| twistLock | The type of lock for twist movement. |
| useGravity | Controls whether gravity affects this articulation body. |
| worldCenterOfMass | The center of mass of the body defined in world space (Read Only). |
| xDrive | The properties of drive along or around X. |
| yDrive | The properties of drive along or around Y. |
| zDrive | The properties of drive along or around Z. |

### Public Methods

| Method | Description |
| --- | --- |
| AddForce | Applies a force to the ArticulationBody. |
| AddForceAtPosition | Applies a force at a specific position, resulting in applying a torque and force on the object. |
| AddRelativeForce | Applies a force to the Articulation Body, relative to its local coordinate system. |
| AddRelativeTorque | Applies a torque to the articulation body, relative to its local coordinate system. |
| AddTorque | Add torque to the articulation body. |
| GetAccumulatedForce | Returns the force that the ArticulationBody has accumulated before the simulation step. |
| GetAccumulatedTorque | Returns the torque that the ArticulationBody has accumulated before the simulation step. |
| GetClosestPoint | Return the point on the articulation body that is closest to a given one. |
| GetDenseJacobian | Calculates and writes dense Jacobian matrix of the articulation body hierarchy to the supplied struct. |
| GetDofStartIndices | Calculates and reads back reduced coordinate data start indexes in reduced coordinate data buffer for every articulation body in the hierarchy. |
| GetDriveForces | Reads the entire hierarchy of Articulation Bodies and fills the supplied list of floats with Articulation Drive forces. |
| GetDriveTargets | Reads back articulation body joint drive targets of the entire hierarchy to the supplied list of floats. |
| GetDriveTargetVelocities | Reads back articulation body joint drive target velocities of the entire hierarchy to the supplied list of floats . |
| GetJointAccelerations | Reads back articulation body joint accelerations of the entire hierarchy to the supplied list of floats . |
| GetJointCoriolisCentrifugalForces | Fills the supplied list of floats with the forces required to counteract the Coriolis and centrifugal forces for each Articulation Body in the articulation. |
| GetJointExternalForces | Fills the supplied list of floats with forces required to counteract any existing external forces (applied using ArticulationBody.AddForce or ArticulationBody.AddTorque) for each Articulation Body in the articulation. |
| GetJointForces | Reads back articulation body joint forces of the entire hierarchy to the supplied list of floats . |
| GetJointForcesForAcceleration | Returns the forces required for the body to reach the provided acceleration in reduced space. |
| GetJointGravityForces | Fills the supplied list of floats with forces required to counteract gravity for each Articulation Body in the articulation. |
| GetJointPositions | Reads back articulation body joint positions of the entire hierarchy to the supplied list of floats . |
| GetJointVelocities | Reads back articulation body joint velocities of the entire hierarchy to the supplied list of floats . |
| GetPointVelocity | Gets the velocity of the articulation body at the specified worldPoint in global space. |
| GetRelativePointVelocity | The velocity relative to the articulation body at the point relativePoint. |
| IsSleeping | Indicates whether the articulation body is sleeping. |
| PublishTransform | Reads the position and rotation of the Articulation Body from the physics system and applies it to the corresponding Transform component. |
| ResetCenterOfMass | Resets the center of mass of the articulation body. |
| ResetInertiaTensor | Resets the inertia tensor value and rotation. |
| SetDriveDamping | Sets the damping value of the specified drive. |
| SetDriveForceLimit | Sets the force limit of the specified drive. |
| SetDriveLimits | Sets the lower and upper limits of the drive. |
| SetDriveStiffness | Sets the stiffness value of the specified drive. |
| SetDriveTarget | Sets the target value of the specified drive. |
| SetDriveTargets | Assigns articulation body joint drive targets for the entire hierarchy of bodies. |
| SetDriveTargetVelocities | Assigns articulation body joint drive target velocities for the entire hierarchy of bodies. |
| SetDriveTargetVelocity | Sets the target velocity value of the specified drive. |
| SetJointForces | Assigns articulation body joint forces for the entire hierarchy of bodies. |
| SetJointPositions | Assigns articulation body joint positions for the entire hierarchy of bodies. |
| SetJointVelocities | Assigns articulation body joint velocities for the entire hierarchy of bodies. |
| Sleep | Forces an articulation body to sleep. |
| SnapAnchorToClosestContact | Snap the anchor to the closest contact between the connected bodies. |
| TeleportRoot | Teleport the root body of the articulation to a new pose. |
| WakeUp | Forces an articulation body to wake up. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| enabled | Enabled Behaviours are Updated, disabled Behaviours are not. |
| isActiveAndEnabled | Checks whether a component is enabled, attached to a GameObject that is active in the hierarchy, and the component's OnEnable has been called. |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| BroadcastMessage | Calls the method named methodName on every MonoBehaviour in this game object or any of its children. |
| CompareTag | Checks the GameObject's tag against the defined tag. |
| GetComponent | Gets a reference to a component of type T on the same GameObject as the component specified. |
| GetComponentInChildren | Gets a reference to a component of type T on the same GameObject as the component specified, or any child of the GameObject. |
| GetComponentIndex | Gets the index of the component on its parent GameObject. |
| GetComponentInParent | Gets a reference to a component of type T on the same GameObject as the component specified, or any parent of the GameObject. |
| GetComponents | Gets references to all components of type T on the same GameObject as the component specified. |
| GetComponentsInChildren | Gets references to all components of type T on the same GameObject as the component specified, and any child of the GameObject. |
| GetComponentsInParent | Gets references to all components of type T on the same GameObject as the component specified, and any parent of the GameObject. |
| SendMessage | Calls the method named methodName on every MonoBehaviour in this game object. |
| SendMessageUpwards | Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour. |
| TryGetComponent | Gets the component of the specified type, if it exists. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
