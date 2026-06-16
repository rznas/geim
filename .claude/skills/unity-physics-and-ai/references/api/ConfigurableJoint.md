<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ConfigurableJoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The configurable joint is an extremely flexible joint giving you complete control over rotation and linear motion.

You can build all other joints with it and much more but it is also more complicated to setup. It gives you control over motors, drives and joint limits for each rotation axis and and linear degree of freedom.

### Properties

| Property | Description |
| --- | --- |
| angularXDrive | Definition of how the joint's rotation will behave around its local X axis. Only used if Rotation Drive Mode is Swing & Twist. |
| angularXLimitSpring | The configuration of the spring attached to the angular X limit of the joint. |
| angularXMotion | Allow rotation around the X axis to be Free, completely Locked, or Limited according to Low and High Angular XLimit. |
| angularYLimit | Boundary defining rotation restriction, based on delta from original rotation. |
| angularYMotion | Allow rotation around the Y axis to be Free, completely Locked, or Limited according to Angular YLimit. |
| angularYZDrive | Definition of how the joint's rotation will behave around its local Y and Z axes. Only used if Rotation Drive Mode is Swing & Twist. |
| angularYZLimitSpring | The configuration of the spring attached to the angular Y and angular Z limits of the joint. |
| angularZLimit | Boundary defining rotation restriction, based on delta from original rotation. |
| angularZMotion | Allow rotation around the Z axis to be Free, completely Locked, or Limited according to Angular ZLimit. |
| configuredInWorldSpace | If enabled, all Target values will be calculated in world space instead of the object's local space. |
| highAngularXLimit | Boundary defining upper rotation restriction, based on delta from original rotation. |
| linearLimit | Boundary defining movement restriction, based on distance from the joint's origin. |
| linearLimitSpring | The configuration of the spring attached to the linear limit of the joint. |
| lowAngularXLimit | Boundary defining lower rotation restriction, based on delta from original rotation. |
| projectionAngle | Set the angular tolerance threshold (in degrees) for projection.If the joint deviates by more than this angle around its locked angular degrees of freedom, the solver will move the bodies to close the angle.Setting a very small tolerance may result in simulation jitter or other artifacts.Sometimes it is not possible to project (for example when the joints form a cycle). |
| projectionDistance | Set the linear tolerance threshold for projection.If the joint separates by more than this distance along its locked degrees of freedom, the solver will move the bodies to close the distance.Setting a very small tolerance may result in simulation jitter or other artifacts.Sometimes it is not possible to project (for example when the joints form a cycle). |
| projectionMode | Brings violated constraints back into alignment even when the solver fails. Projection is not a physical process and does not preserve momentum or respect collision geometry. It is best avoided if practical, but can be useful in improving simulation quality where joint separation results in unacceptable artifacts. |
| rotationDriveMode | Control the object's rotation with either X & YZ or Slerp Drive by itself. |
| secondaryAxis | The joint's secondary axis. |
| slerpDrive | Definition of how the joint's rotation will behave around all local axes. Only used if Rotation Drive Mode is Slerp Only. |
| swapBodies | Enable this property to swap the order in which the physics engine processes the Rigidbodies involved in the joint. This results in different joint motion but has no impact on Rigidbodies and anchors. |
| targetAngularVelocity | This is a Vector3. It defines the desired angular velocity that the joint should rotate into. |
| targetPosition | The desired position that the joint should move into. |
| targetRotation | This is a Quaternion. It defines the desired rotation that the joint should rotate into. |
| targetVelocity | The desired velocity that the joint should move along. |
| xDrive | Definition of how the joint's movement will behave along its local X axis. |
| xMotion | Allow movement along the X axis to be Free, completely Locked, or Limited according to Linear Limit. |
| yDrive | Definition of how the joint's movement will behave along its local Y axis. |
| yMotion | Allow movement along the Y axis to be Free, completely Locked, or Limited according to Linear Limit. |
| zDrive | Definition of how the joint's movement will behave along its local Z axis. |
| zMotion | Allow movement along the Z axis to be Free, completely Locked, or Limited according to Linear Limit. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| anchor | The Position of the anchor around which the joints motion is constrained. |
| autoConfigureConnectedAnchor | Should the connectedAnchor be calculated automatically? |
| axis | The Direction of the axis around which the body is constrained. |
| breakForce | The force that needs to be applied for this joint to break. |
| breakTorque | The torque that needs to be applied for this joint to break. To be able to break, a joint must be _Locked_ or _Limited_ on the axis of rotation where the torque is being applied. This means that some joints cannot break, such as an unconstrained Configurable Joint. |
| connectedAnchor | Position of the anchor relative to the connected Rigidbody. |
| connectedArticulationBody | A reference to an articulation body this joint connects to. |
| connectedBody | A reference to another rigidbody this joint connects to. |
| connectedMassScale | The scale to apply to the inverse mass and inertia tensor of the connected body prior to solving the constraints. |
| currentForce | The force applied by the solver to satisfy all constraints. |
| currentTorque | The torque applied by the solver to satisfy all constraints. |
| enableCollision | Enable collision between bodies connected with the joint. |
| enablePreprocessing | Toggle preprocessing for this joint. |
| massScale | The scale to apply to the inverse mass and inertia tensor of the body prior to solving the constraints. |
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

### Messages

| Message | Description |
| --- | --- |
| OnJointBreak | Called when a joint attached to the same game object broke. |
