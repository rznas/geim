<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CharacterController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A CharacterController allows you to easily do movement constrained by collisions without having to deal with a rigidbody.

A CharacterController is not affected by forces and will only move when you call the Move function. It will then carry out the movement but be constrained by collisions.

Additional resources: Character Controller component and [Character animation examples](http://unity3d.com/learn/tutorials/modules/beginner/animation)

### Properties

| Property | Description |
| --- | --- |
| center | The center of the character's capsule relative to the transform's position. |
| collisionFlags | What part of the capsule collided with the environment during the last CharacterController.Move call. |
| detectCollisions | Determines whether other rigidbodies or character controllers collide with this character controller (by default this is always enabled). |
| enableOverlapRecovery | Enables or disables overlap recovery. Used to depenetrate character controllers from static objects when an overlap is detected. |
| height | The height of the character's capsule. |
| isGrounded | Was the CharacterController touching the ground during the last move? |
| minMoveDistance | Gets or sets the minimum move distance of the character controller. |
| radius | The radius of the character's capsule. |
| skinWidth | The character's collision skin width. |
| slopeLimit | The character controllers slope limit in degrees. |
| stepOffset | The character controllers step offset in meters. |
| velocity | The current relative velocity of the Character (see notes). |

### Public Methods

| Method | Description |
| --- | --- |
| Move | Supplies the movement of a GameObject with an attached CharacterController component. |
| SimpleMove | Moves the character with speed. |

### Messages

| Message | Description |
| --- | --- |
| OnControllerColliderHit | OnControllerColliderHit is called when the controller hits a collider while performing a Move. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| attachedArticulationBody | The articulation body the collider is attached to. |
| attachedRigidbody | The rigidbody the collider is attached to. |
| bounds | The world space bounding volume of the collider (Read Only). |
| contactOffset | Contact offset value of this collider. |
| enabled | Enabled Colliders will collide with other Colliders, disabled Colliders won't. |
| excludeLayers | The additional layers that this Collider should exclude when deciding if the Collider can contact another Collider. |
| GeometryHolder | The structure holding the geometric shape of the collider and its type. (Read Only) |
| hasModifiableContacts | Specify whether this Collider's contacts are modifiable or not. |
| includeLayers | The additional layers that this Collider should include when deciding if the Collider can contact another Collider. |
| isTrigger | Specify if this collider is configured as a trigger. |
| layerOverridePriority | A decision priority assigned to this Collider used when there is a conflicting decision on whether a Collider can contact another Collider. |
| material | The material used by the collider. |
| providesContacts | Whether or not this Collider generates contacts for Physics.ContactEvent. |
| sharedMaterial | The shared physics material of this collider. |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| ClosestPoint | The closest point on the collider given a specified location. |
| ClosestPointOnBounds | The closest point to the bounding box of the attached collider. |
| GetGeometry | Returns the geometric shape of the collider of the requested type. |
| Raycast | Casts a Ray that ignores all Colliders except this one. |
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
| OnCollisionEnter | OnCollisionEnter is called when this collider/rigidbody has begun touching another rigidbody/collider. |
| OnCollisionExit | OnCollisionExit is called when this collider/rigidbody has stopped touching another rigidbody/collider. |
| OnCollisionStay | OnCollisionStay is called once per frame for every Collider or Rigidbody that touches another Collider or Rigidbody. |
| OnTriggerEnter | Called when a Collider with the Collider.isTrigger property overlaps another Collider. |
| OnTriggerExit | OnTriggerExit is called when the Collider other has stopped touching the trigger. |
| OnTriggerStay | OnTriggerStay is called almost all the frames for every Collider other that is touching the trigger. The function is on the physics timer so it won't necessarily run every frame. |
