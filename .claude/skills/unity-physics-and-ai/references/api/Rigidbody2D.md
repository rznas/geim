<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides physics movement and other dynamics, and the ability to attach Collider2D to it.

The Rigidbody2D is a fundamental physics component that provides multiple simulation dynamics, such as Rigidbody2D.position and Rigidbody2D.rotation for pose control, and Rigidbody2D.linearVelocity and Rigidbody2D.angularVelocity for velocity control.

You can attach multiple Collider2D to a Rigidbody2D to detect collisions and provide a collision response when you set Rigidbody2D.bodyType to RigidbodyType2D.Dynamic.

### Properties

| Property | Description |
| --- | --- |
| angularDamping | The angular damping of the Rigidbody2D angular velocity. |
| angularVelocity | Angular velocity in degrees per second. |
| attachedColliderCount | Returns the number of Collider2D attached to this Rigidbody2D. |
| bodyType | The physical behaviour type of the Rigidbody2D. |
| centerOfMass | The center of mass of the rigidBody in local space. |
| collisionDetectionMode | The method used by the physics engine to check if two objects have collided. |
| constraints | Controls which degrees of freedom are allowed for the simulation of this Rigidbody2D. |
| excludeLayers | The additional Layers that all Collider2D attached to this Rigidbody2D should exclude when deciding if a contact with another Collider2D should happen or not. |
| freezeRotation | Controls whether physics will change the rotation of the object. |
| gravityScale | The degree to which this object is affected by gravity. |
| includeLayers | The additional Layers that all Collider2D attached to this Rigidbody2D should include when deciding if a contact with another Collider2D should happen or not. |
| inertia | The Rigidbody's resistance to changes in angular velocity (rotation). |
| interpolation | Physics interpolation used between updates. |
| linearDamping | The linear damping of the Rigidbody2D linear velocity. |
| linearVelocity | The linear velocity of the Rigidbody2D represents the rate of change over time of the Rigidbody2D position in world-units. |
| linearVelocityX | The X component of the linear velocity of the Rigidbody2D in world-units per second. |
| linearVelocityY | The Y component of the linear velocity of the Rigidbody2D in world-units per second. |
| localToWorldMatrix | The transformation matrix used to transform the Rigidbody2D to world space. |
| mass | Mass of the Rigidbody. |
| position | The position of the rigidbody. |
| rotation | The rotation of the rigidbody. |
| sharedMaterial | The PhysicsMaterial2D that is applied to all Collider2D attached to this Rigidbody2D. |
| simulated | Indicates whether the rigid body should be simulated or not by the physics system. |
| sleepMode | The sleep state that the rigidbody will initially be in. |
| totalForce | The total amount of force that has been explicitly applied to this Rigidbody2D since the last physics simulation step. |
| totalTorque | The total amount of torque that has been explicitly applied to this Rigidbody2D since the last physics simulation step. |
| useAutoMass | Should the total rigid-body mass be automatically calculated from the Collider2D.density of attached colliders? |
| useFullKinematicContacts | Should kinematic/kinematic and kinematic/static collisions be allowed? |
| worldCenterOfMass | Gets the center of mass of the rigidBody in global space. |

### Public Methods

| Method | Description |
| --- | --- |
| AddForce | Apply a force to the rigidbody. |
| AddForceAtPosition | Apply a force at a given position in space. |
| AddForceX | Adds a force to the X component of the Rigidbody2D.linearVelocity only leaving the Y component of the world space Rigidbody2D.linearVelocity untouched. |
| AddForceY | Adds a force to the Y component of the Rigidbody2D.linearVelocity only leaving the X component of the world space Rigidbody2D.linearVelocity untouched. |
| AddRelativeForce | Adds a force to the local space Rigidbody2D.linearVelocity. In other words, the force is applied in the rotated coordinate space of the Rigidbody2D. |
| AddRelativeForceX | Adds a force to the X component of the Rigidbody2D.linearVelocity in the local space of the Rigidbody2D only leaving the Y component of the local space Rigidbody2D.linearVelocity untouched. |
| AddRelativeForceY | Adds a force to the Y component of the Rigidbody2D.linearVelocity in the local space of the Rigidbody2D only leaving the X component of the local space Rigidbody2D.linearVelocity untouched. |
| AddTorque | Apply a torque at the rigidbody's centre of mass. |
| Cast | All the Collider2D shapes attached to the Rigidbody2D are cast into the Scene starting at each Collider position ignoring the Colliders attached to the same Rigidbody2D. |
| ClosestPoint | Returns a point on the perimeter of all enabled Colliders attached to this Rigidbody that is closest to the specified position. |
| Distance | Calculates the minimum distance of this collider against all Collider2D attached to this Rigidbody2D. |
| GetAttachedColliders | Returns all Collider2D that are attached to this Rigidbody2D. |
| GetContactColliders | Retrieves all colliders in contact with this Rigidbody, with the results filtered by the contactFilter. |
| GetContacts | Retrieves all contact points for all of the Collider(s) attached to this Rigidbody. |
| GetPoint | Get a local space point given the point point in rigidBody global space. |
| GetPointVelocity | The velocity of the rigidbody at the point Point in global space. |
| GetRelativePoint | Get a global space point given the point relativePoint in rigidBody local space. |
| GetRelativePointVelocity | The velocity of the rigidbody at the point Point in local space. |
| GetRelativeVector | Get a global space vector given the vector relativeVector in rigidBody local space. |
| GetShapes | Gets all the PhysicsShape2D used by all Collider2D attached to the Rigidbody2D. |
| GetVector | Get a local space vector given the vector vector in rigidBody global space. |
| IsAwake | Is the rigidbody "awake"? |
| IsSleeping | Is the rigidbody "sleeping"? |
| IsTouching | Checks whether the collider is touching any of the collider(s) attached to this rigidbody or not. |
| IsTouchingLayers | Checks whether any of the collider(s) attached to this rigidbody are touching any colliders on the specified layerMask or not. |
| MovePosition | Moves the rigidbody to position. |
| MovePositionAndRotation | Moves the rigidbody position to position and the rigidbody angle to angle. |
| MoveRotation | Rotates the Rigidbody to angle (given in degrees). |
| Overlap | Get a list of all Colliders that overlap all Colliders attached to this Rigidbody2D. |
| OverlapPoint | Check if any of the Rigidbody2D colliders overlap a point in space. |
| SetRotation | Sets the rotation of the Rigidbody2D to angle (given in degrees). |
| Sleep | Make the rigidbody "sleep". |
| Slide | Slide the Rigidbody2D using the specified velocity integrated over deltaTime using the configuration specified by slideMovement. |
| WakeUp | Disables the "sleeping" state of a rigidbody. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
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
