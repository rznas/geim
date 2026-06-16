<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Control of an object's position through physics simulation.

Adding a Rigidbody component to an object will put its motion under the control of Unity's physics engine. Even without adding any code, a Rigidbody object will be pulled downward by gravity and will react to collisions with incoming objects if the right Collider component is also present.

The Rigidbody also has a scripting API that lets you apply forces to the object and control it in a physically realistic way. For example, a car's behaviour can be specified in terms of the forces applied by the wheels. Given this information, the physics engine can handle most other aspects of the car's motion, so it will accelerate realistically and respond correctly to collisions.

In a script, the FixedUpdate function is recommended as the place to apply forces and change Rigidbody settings (as opposed to Update, which is used for most other frame update tasks). The reason for this is that physics updates are carried out in measured time steps that don't coincide with the frame update. FixedUpdate is called immediately before each physics update and so any changes made there will be processed directly.

A common problem when starting out with Rigidbodies is that the game physics appears to run in "slow motion". This is actually due to the scale used for your models. The default gravity settings assume that one world unit corresponds to one metre of distance. With non-physical games, it doesn't make much difference if your models are all 100 units long but when using physics, they will be treated as very large objects. If a large scale is used for objects that are supposed to be small, they will appear to fall very slowly - the physics engine thinks they are very large objects falling over very large distances. With this in mind, be sure to keep your objects more or less at their scale in real life (so a car should be about 4 units = 4 metres, for example).

### Properties

| Property | Description |
| --- | --- |
| angularDamping | The angular damping of the object. |
| angularVelocity | The angular velocity vector of the rigidbody measured in radians per second. |
| automaticCenterOfMass | Whether or not to calculate the center of mass automatically. |
| automaticInertiaTensor | Whether or not to calculate the inertia tensor automatically. |
| centerOfMass | The center of mass relative to the transform's origin. |
| collisionDetectionMode | The Rigidbody's collision detection mode. |
| constraints | Controls which degrees of freedom are allowed for the simulation of this Rigidbody. |
| detectCollisions | Should collision detection be enabled? (By default always enabled). |
| excludeLayers | The additional layers that all Colliders attached to this Rigidbody should exclude when deciding if the Collider can come into contact with another Collider. |
| freezeRotation | Controls whether physics will change the rotation of the object. |
| includeLayers | The additional layers that all Colliders attached to this Rigidbody should include when deciding if the Collider can come into contact with another Collider. |
| inertiaTensor | The inertia tensor of this body, defined as a diagonal matrix in a reference frame positioned at this body's center of mass and rotated by Rigidbody.inertiaTensorRotation. |
| inertiaTensorRotation | The rotation of the inertia tensor. |
| interpolation | Interpolation provides a way to manage the appearance of jitter in the movement of your Rigidbody GameObjects at run time. |
| isKinematic | Controls whether physics affects the rigidbody. |
| linearDamping | The linear damping of the Rigidbody linear velocity. |
| linearVelocity | The linear velocity vector of the rigidbody. It represents the rate of change of Rigidbody position. |
| mass | The mass of the rigidbody. |
| maxAngularVelocity | The maximum angular velocity of the rigidbody measured in radians per second. (Default 7) range { 0, infinity }. |
| maxDepenetrationVelocity | Maximum velocity of a rigidbody when moving out of penetrating state. |
| maxLinearVelocity | The maximum linear velocity of the rigidbody measured in meters per second. |
| position | The position of the rigidbody. |
| rotation | The rotation of the Rigidbody. |
| sleepThreshold | The mass-normalized energy threshold, below which objects start going to sleep. |
| solverIterations | The solverIterations determines how accurately Rigidbody joints and collision contacts are resolved. Overrides Physics.defaultSolverIterations. Must be positive. |
| solverVelocityIterations | The solverVelocityIterations affects how how accurately Rigidbody joints and collision contacts are resolved. Overrides Physics.defaultSolverVelocityIterations. Must be positive. |
| useGravity | Controls whether gravity affects this rigidbody. |
| worldCenterOfMass | The center of mass of the rigidbody in world space (Read Only). |

### Public Methods

| Method | Description |
| --- | --- |
| AddExplosionForce | Applies a force to a rigidbody that simulates explosion effects. |
| AddForce | Adds a force to the Rigidbody. |
| AddForceAtPosition | Applies force at position. As a result this will apply a torque and force on the object. |
| AddRelativeForce | Adds a force to the rigidbody relative to its coordinate system. |
| AddRelativeTorque | Adds a torque to the rigidbody relative to its coordinate system. |
| AddTorque | Adds a torque to the rigidbody. |
| ClosestPointOnBounds | The closest point to the bounding box of the attached colliders. |
| GetAccumulatedForce | Returns the force that the Rigidbody has accumulated before the simulation step. |
| GetAccumulatedTorque | Returns the torque that the Rigidbody has accumulated before the simulation step. |
| GetPointVelocity | The velocity of the rigidbody at the point worldPoint in global space. |
| GetRelativePointVelocity | The velocity relative to the rigidbody at the point relativePoint. |
| IsSleeping | Is the rigidbody sleeping? |
| Move | Moves the Rigidbody to position and rotates the Rigidbody to rotation. |
| MovePosition | Moves the kinematic Rigidbody towards position. |
| MoveRotation | Rotates the rigidbody to rotation. |
| PublishTransform | Applies the position and rotation of the Rigidbody to the corresponding Transform component. |
| ResetCenterOfMass | Reset the center of mass of the rigidbody. |
| ResetInertiaTensor | Reset the inertia tensor value and rotation. |
| Sleep | Forces a rigidbody to sleep until woken up. |
| SweepTest | Tests if a rigidbody would collide with anything, if it was moved through the Scene. |
| SweepTestAll | Like Rigidbody.SweepTest, but returns all hits. |
| WakeUp | Forces a rigidbody to wake up. |

### Messages

| Message | Description |
| --- | --- |
| OnCollisionEnter | OnCollisionEnter is called when this collider/rigidbody has begun touching another rigidbody/collider. |
| OnCollisionExit | OnCollisionExit is called when this collider/rigidbody has stopped touching another rigidbody/collider. |
| OnCollisionStay | OnCollisionStay is called once per frame for every Collider or Rigidbody that touches another Collider or Rigidbody. |

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
