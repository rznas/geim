<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CircleCollider2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Collider for 2D physics representing an circle.

Additional resources: BoxCollider class, PolygonCollider2D class.

### Properties

| Property | Description |
| --- | --- |
| radius | Radius of the circle. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| enabled | Enabled Behaviours are Updated, disabled Behaviours are not. |
| isActiveAndEnabled | Checks whether a component is enabled, attached to a GameObject that is active in the hierarchy, and the component's OnEnable has been called. |
| attachedRigidbody | The Rigidbody2D attached to the Collider2D. |
| bounceCombine | The bounciness combine mode used by the Collider2D. |
| bounciness | The bounciness used by the Collider2D. |
| bounds | The world space bounding area of the collider. |
| callbackLayers | The Layers that this Collider2D will report collision or trigger callbacks for during a contact with another Collider2D. |
| composite | Get the CompositeCollider2D that is available to be attached to the collider. |
| compositeCapable | Indicates if this Collider2D is capable of being composited by the CompositeCollider2D. |
| compositeOperation | The composite operation to be used by a CompositeCollider2D. |
| compositeOrder | The composite operation order to be used when a CompositeCollider2D is used. |
| contactCaptureLayers | The layers of other Collider2D involved in contacts with this Collider2D that will be captured. |
| contactMask | Calculates the effective LayerMask that the Collider2D will use when determining if it can contact another Collider2D. |
| density | The density of the collider used to calculate its mass (when auto mass is enabled). |
| errorState | The error state that indicates the state of the physics shapes the 2D Collider tried to create. (Read Only) |
| excludeLayers | The additional Layers that this Collider2D should exclude when deciding if a contact with another Collider2D should happen or not. |
| forceReceiveLayers | The Layers that this Collider2D can receive forces from during a Collision contact with another Collider2D. |
| forceSendLayers | The Layers that this Collider2D is allowed to send forces to during a Collision contact with another Collider2D. |
| friction | The friction used by the Collider2D. |
| frictionCombine | The friction combine mode used by the Collider2D. |
| includeLayers | The additional Layers that this Collider2D should include when deciding if a contact with another Collider2D should happen or not. |
| isTrigger | Is this collider configured as a trigger? |
| layerOverridePriority | A decision priority assigned to this Collider2D used when there is a conflicting decision on whether a contact between itself and another Collision2D should happen or not. |
| localToWorldMatrix | The transformation matrix used to transform the Collider physics shapes to world space. |
| offset | The local offset of the collider geometry. |
| shapeCount | The number of active PhysicsShape2D the Collider2D is currently using. |
| sharedMaterial | The PhysicsMaterial2D that is applied to this collider. |
| usedByEffector | Whether the collider is used by an attached effector or not. |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| CanContact | This method determines if both Colliders can ever come into contact. |
| Cast | Casts the Collider shape into the Scene starting at the Collider position ignoring the Collider itself. |
| ClosestPoint | Returns a point on the perimeter of this Collider that is closest to the specified position. |
| CreateMesh | Creates a planar Mesh that is identical to the area defined by the Collider2D geometry. |
| Distance | Calculates the minimum separation of this collider against another collider. |
| GetContactColliders | Retrieves all colliders in contact with this Collider, with the results filtered by the contactFilter. |
| GetContacts | Retrieves all contact points for this Collider, with the results filtered by the contactFilter. |
| GetShapeBounds | Retrieves a list of Bounds for all PhysicsShape2D created by this Collider2D, and returns the combined Bounds of the retrieved list. |
| GetShapeHash | Generates a simple hash value based upon the geometry of the Collider2D. |
| GetShapes | Gets all the PhysicsShape2D used by the Collider2D. |
| IsTouching | Check whether this collider is touching the collider or not. |
| IsTouchingLayers | Checks whether this collider is touching any colliders on the specified layerMask or not. |
| Overlap | TODO. |
| OverlapPoint | Check if a collider overlaps a point in space. |
| Raycast | Casts a ray into the Scene that starts at the Collider position and ignores the Collider itself. |
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
| OnCollisionEnter2D | Sent when an incoming collider makes contact with this object's collider (2D physics only). |
| OnCollisionExit2D | Sent when a collider on another object stops touching this object's collider (2D physics only). |
| OnCollisionStay2D | Sent each frame where a collider on another object is touching this object's collider (2D physics only). |
| OnTriggerEnter2D | Sent when another object enters a trigger collider attached to this object (2D physics only). |
| OnTriggerExit2D | Sent when another object leaves a trigger collider attached to this object (2D physics only). |
| OnTriggerStay2D | Sent each frame where another object is within a trigger collider attached to this object (2D physics only). |
