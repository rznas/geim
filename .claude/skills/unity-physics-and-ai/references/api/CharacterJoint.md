<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterJoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Character Joints are mainly used for Ragdoll effects.

They are an extended ball-socket joint which allows you to limit the joint on each axis.

### Properties

| Property | Description |
| --- | --- |
| enableProjection | Brings violated constraints back into alignment even when the solver fails. |
| highTwistLimit | The upper limit around the primary axis of the character joint. |
| lowTwistLimit | The lower limit around the primary axis of the character joint. |
| projectionAngle | Set the angular tolerance threshold (in degrees) for projection. |
| projectionDistance | Set the linear tolerance threshold for projection. |
| swing1Limit | The angular limit of rotation (in degrees) around the primary axis of the character joint. |
| swing2Limit | The angular limit of rotation (in degrees) around the primary axis of the character joint. |
| swingAxis | The secondary axis around which the joint can rotate. |
| swingLimitSpring | The configuration of the spring attached to the swing limits of the joint. |
| twistLimitSpring | The configuration of the spring attached to the twist limits of the joint. |

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
