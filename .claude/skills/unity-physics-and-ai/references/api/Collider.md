<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A base class of all colliders.

Additional resources: BoxCollider, SphereCollider, CapsuleCollider, MeshCollider, PhysicsMaterial, Rigidbody.

If the object with the Collider needs to be moved during gameplay then you should also attach a Rigidbody component to the object. The Rigidbody can be set to be kinematic if you don't want the object to have physical interaction with other objects.

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

### Public Methods

| Method | Description |
| --- | --- |
| ClosestPoint | The closest point on the collider given a specified location. |
| ClosestPointOnBounds | The closest point to the bounding box of the attached collider. |
| GetGeometry | Returns the geometric shape of the collider of the requested type. |
| Raycast | Casts a Ray that ignores all Colliders except this one. |

### Messages

| Message | Description |
| --- | --- |
| OnCollisionEnter | OnCollisionEnter is called when this collider/rigidbody has begun touching another rigidbody/collider. |
| OnCollisionExit | OnCollisionExit is called when this collider/rigidbody has stopped touching another rigidbody/collider. |
| OnCollisionStay | OnCollisionStay is called once per frame for every Collider or Rigidbody that touches another Collider or Rigidbody. |
| OnTriggerEnter | Called when a Collider with the Collider.isTrigger property overlaps another Collider. |
| OnTriggerExit | OnTriggerExit is called when the Collider other has stopped touching the trigger. |
| OnTriggerStay | OnTriggerStay is called almost all the frames for every Collider other that is touching the trigger. The function is on the physics timer so it won't necessarily run every frame. |

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
