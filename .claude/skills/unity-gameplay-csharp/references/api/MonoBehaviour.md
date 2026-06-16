<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

MonoBehaviour is a base class that many Unity scripts derive from.

MonoBehaviour offers life cycle functions that make it easier to develop with Unity.

MonoBehaviours always exist as a Component of a GameObject, and can be instantiated with GameObject.AddComponent.

A MonoBehaviour can be deleted with Object.Destroy or Object.DestroyImmediate. When the parent GameObject is destroyed all components are automatically deleted, including MonoBehaviours.

After the underlying component is destroyed, the C# object for the MonoBehaviour remains in memory until garbage is collected. A MonoBehaviour in this state acts as if it is null. For example, it returns true for a "obj == null" check. However, this class doesn't support the [null-conditional operator](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/language-specification/expressions#null-conditional-operator) (**?.**) and the [null-coalescing operator](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/language-specification/expressions#the-null-coalescing-operator)(**??**).

When a MonoBehaviour is serialized, the value of C# fields are included according to Unity's Serialization rules. See Script Serialization for details. The serialized data also includes internal properties, such as the reference to the MonoScript that tracks the implementation class for the object.

For code samples, see the individual MonoBehaviour methods.

**Note:** In the Editor, when the MonoBehaviour component is deactivated through the checkbox in the Inspector, it stops receiving calls to its Event functions.

Additional resources: The Deactivating GameObjects page in the manual.

### Properties

| Property | Description |
| --- | --- |
| destroyCancellationToken | Cancellation token raised when the MonoBehaviour is destroyed (Read Only). |
| didAwake | Returns a boolean value which represents if Awake was called. |
| didStart | Returns a boolean value which represents if Start was called. |
| runInEditMode | Allow a specific instance of a MonoBehaviour to run in edit mode (only available in the editor). |
| useGUILayout | Disabling this lets you skip the GUI layout phase. |

### Public Methods

| Method | Description |
| --- | --- |
| CancelInvoke | Cancels all Invoke calls on this MonoBehaviour. |
| Invoke | Invokes the method methodName in time seconds. |
| InvokeRepeating | Invokes the specified method after a specified delay, then repeatedly at the specified rate. |
| IsInvoking | Is any invoke on methodName pending? |
| StartCoroutine | Starts a coroutine. |
| StopAllCoroutines | Stops all coroutines running on this MonoBehaviour. |
| StopCoroutine | Stops the first coroutine named methodName, or the coroutine stored in routine running on this behaviour. |

### Static Methods

| Method | Description |
| --- | --- |
| print | Logs a message to the Unity Console. Functionally equivalent to Debug.Log. |

### Messages

| Message | Description |
| --- | --- |
| Awake | Unity calls Awake when loading an instance of a script component. |
| FixedUpdate | Update called at regular, fixed intervals as part of Unity's physics update loop. |
| LateUpdate | LateUpdate is called every frame, if the Behaviour is enabled. |
| OnAnimatorIK | Callback for setting up animation IK (inverse kinematics). |
| OnAnimatorMove | Callback for processing animation movements for modifying root motion. |
| OnApplicationFocus | Sent to all GameObjects when the player gets or loses focus. |
| OnApplicationPause | Sent to all GameObjects when the playing application pauses or resumes on losing or regaining focus. |
| OnApplicationQuit | Sent to all active GameObjects before the application quits. |
| OnAudioFilterRead | If OnAudioFilterRead is implemented, Unity will insert a custom filter into the audio DSP chain. |
| OnBecameInvisible | Called when the renderer is no longer visible to any camera. |
| OnBecameVisible | Called when the renderer becomes visible to any camera. |
| OnChildRectTransformDimensionsChange | Called when a child RectTransform's dimensions change. |
| OnCollisionEnter | OnCollisionEnter is called when this collider/rigidbody has begun touching another rigidbody/collider. |
| OnCollisionEnter2D | Sent when an incoming collider makes contact with this object's collider (2D physics only). |
| OnCollisionExit | OnCollisionExit is called when this collider/rigidbody has stopped touching another rigidbody/collider. |
| OnCollisionExit2D | Sent when a collider on another object stops touching this object's collider (2D physics only). |
| OnCollisionStay | OnCollisionStay is called once per frame for every Collider or Rigidbody that touches another Collider or Rigidbody. |
| OnCollisionStay2D | Sent each frame where a collider on another object is touching this object's collider (2D physics only). |
| OnControllerColliderHit | OnControllerColliderHit is called when the CharacterController component hits a collider while performing a Move. |
| OnDestroy | Called when a GameObject or component is about to be destroyed. |
| OnDisable | Called when a component itself is disabled or its parent GameObject is deactivated. |
| OnDrawGizmos | Implement OnDrawGizmos if you want to draw gizmos that can be pickable and are always drawn. |
| OnDrawGizmosSelected | Implement OnDrawGizmosSelected to draw a gizmo if the object is selected. |
| OnEnable | Called when a component of an active GameObject is first enabled. |
| OnGUI | OnGUI is called for rendering and handling GUI events. |
| OnJointBreak | Called when a joint attached to the same game object broke. |
| OnJointBreak2D | Called when a Joint2D attached to the same game object breaks. |
| OnMouseDown | OnMouseDown is called when the user presses the left mouse button while over the Collider. |
| OnMouseDrag | OnMouseDrag is called when the user has clicked on a Collider and is still holding down the mouse. |
| OnMouseEnter | Called when the mouse enters the Collider. |
| OnMouseExit | Called when the mouse is not any longer over the Collider. |
| OnMouseOver | Called every frame while the mouse is over the Collider. |
| OnMouseUp | Called on releasing the mouse button while the mouse pointer is over the Collider attached to this GameObject. |
| OnMouseUpAsButton | OnMouseUpAsButton is only called when the mouse is released over the same Collider as it was pressed. |
| OnParticleCollision | OnParticleCollision is called when a particle hits a Collider. |
| OnParticleSystemStopped | OnParticleSystemStopped is called when all particles in the system have died, and no new particles will be born. New particles cease to be created either after Stop is called, or when the duration property of a non-looping system has been exceeded. |
| OnParticleTrigger | OnParticleTrigger is called when any particles in a Particle System meet the conditions in the trigger module. |
| OnParticleUpdateJobScheduled | OnParticleUpdateJobScheduled is called when a Particle System's built-in update job has been scheduled. |
| OnPostRender | Event function that Unity calls after a Camera renders the scene. |
| OnPreCull | Event function that Unity calls before a Camera culls the scene. |
| OnPreRender | Event function that Unity calls before a Camera renders the scene. |
| OnRenderImage | Event function that Unity calls after a Camera has finished rendering, that allows you to modify the Camera's final image. |
| OnRenderObject | OnRenderObject is called after camera has rendered the Scene. |
| OnTransformChildrenChanged | Called when the list of direct children of a GameObject's Transform changes. |
| OnTransformParentChanged | Called when a direct or indirect parent of a GameObject's Transform changes. |
| OnTriggerEnter | Called when a collider enters a trigger collider. |
| OnTriggerEnter2D | Sent when another object enters a trigger collider attached to this object (2D physics only). |
| OnTriggerExit | OnTriggerExit is called when a collider stops touching a trigger. |
| OnTriggerExit2D | Sent when another object leaves a trigger collider attached to this object (2D physics only). |
| OnTriggerStay | Called once per physics update for every collider that is touching the trigger. |
| OnTriggerStay2D | Sent once per physics update when another object is within a trigger collider attached to this object (2D physics only). |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| OnWillRenderObject | Called for each camera if the object is visible and not a UI element. |
| Reset | Reset a component to default values. |
| Start | Start is called on the frame when a script is enabled just before any of the Update methods are called the first time. |
| Update | Update is called every frame, if the MonoBehaviour is enabled. |

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
