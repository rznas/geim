<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The visual effect class that references an VisualEffectAsset instance within the Scene.

### Properties

| Property | Description |
| --- | --- |
| aliveParticleCount | Returns the sum of all alive particles within the visual effect. |
| culled | Use this property to determine if this visual effect is not visible from any Camera. (Read Only) |
| initialEventID | The default event name ID. To retrieve this value, use the Shader.PropertyID after VisualEffect has awakened or after you've invoked VisualEffect.Reinit. |
| initialEventName | The default event name. Unity calls this event when the VisualEffect awakes, or when you call VisualEffect.Reinit. |
| outputEventReceived | Output event are reported trough this callback. |
| pause | Use this property to set the pause state of the visual effect. |
| playRate | A multiplier that Unity applies to the delta time when it updates the VisualEffect. The default value is 1.0f. |
| resetSeedOnPlay | This property controls whether the visual effect generates a new seed for the random number generator with each call to VisualEffect.Play function. |
| startSeed | The initial seed used for internal random number generator. |
| visualEffectAsset | The VisualEffectAsset that the VisualEffect uses. |

### Constructors

| Constructor | Description |
| --- | --- |
| VisualEffect | The VisualEffect constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| AdvanceOneFrame | If VisualEffect.pause is true, this method processes the next visual effect update for exactly one frame with the current delta time. |
| CreateVFXEventAttribute | Use this method to create a new VFXEventAttribute. |
| GetAnimationCurve | Gets the value of a named Animation Curve property. |
| GetBool | Gets the value of a named bool property. |
| GetFloat | Gets the value of a named float property. |
| GetGradient | Gets the value of a named Gradient property. |
| GetInt | Get a named exposed integer. |
| GetMatrix4x4 | Gets the value of a named Matrix4x4 property. |
| GetMesh | Gets the value of a named Mesh property. |
| GetOutputEventNames | Gets the name of every output event system. |
| GetParticleSystemInfo | Gets information on a particle system. |
| GetParticleSystemNames | Gets the name of every particle system. |
| GetSkinnedMeshRenderer | Gets the value of a named Skinned Mesh Renderer property. |
| GetSpawnSystemInfo | Gets state on a spawn system. |
| GetSpawnSystemNames | Gets the name of every spawn system. |
| GetSystemNames | Gets the name of every system. |
| GetTexture | Gets the value of a named texture property. |
| GetTextureDimension | Gets expected texture dimension for a named exposed texture. |
| GetUInt | Gets the value of a named unsigned integer property. |
| GetVector2 | Gets the value of a named Vector2 property. |
| GetVector3 | Gets the value of a named Vector3 property. |
| GetVector4 | Gets the value of a named Vector4 or Color property. |
| HasAnimationCurve | Checks if the Visual Effect can override an Animation Curve with the name you pass in. |
| HasAnySystemAwake | Checks if any particle system in the effect is awake. |
| HasBool | Checks if the Visual Effect can override a bool with the name you pass in. |
| HasFloat | Checks if the Visual Effect can override a float with the name you pass in. |
| HasGradient | Checks if the Visual Effect can override a Gradient with the name you pass in. |
| HasGraphicsBuffer | Checks if the Visual Effect can override a GraphicsBuffer with the name you pass in. |
| HasInt | Checks if the Visual Effect can override an integer with the name you pass in. |
| HasMatrix4x4 | Checks if the Visual Effect can override a Matrix4x4 with the name you pass in. |
| HasMesh | Checks if the Visual Effect can override a Mesh with the name you pass in. |
| HasSkinnedMeshRenderer | Checks if the Visual Effect can override a Skinned Mesh Renderer with the name you pass in. |
| HasSystem | Use this function to determine if the VisualEffect has the system you pass in. |
| HasTexture | Checks if the Visual Effect can override a texture with the name you pass in. |
| HasUInt | Checks if the Visual Effect can override an unsigned integer with the name you pass in. |
| HasVector2 | Checks if the Visual Effect can override a Vector2 with the name you pass in. |
| HasVector3 | Checks if the Visual Effect can override a Vector3 with the name you pass in. |
| HasVector4 | Checks if the Visual Effect can override a Vector4 or Color with the name you pass in. |
| Play | Use this method to send a play event to every Spawn system. |
| Reinit | Reintialize visual effect. |
| ResetOverride | Use this method to set the overridden state to false. This restores the default value that the Visual Effect Asset specifies. |
| SendEvent | Use this method to send a custom named event. |
| SetAnimationCurve | Sets the value of a named Animation Curve property. |
| SetBool | Sets the value of a named bool property. |
| SetFloat | Sets the value of a float property exposed in the blackboard. |
| SetGradient | Sets the value of a named Gradient property. |
| SetGraphicsBuffer | Sets the value of a named GraphicsBuffer property. |
| SetInt | Sets the value of a named integer property. |
| SetMatrix4x4 | Sets the value of a named Matrix4x4 property. |
| SetMesh | Sets the value of a named Mesh property. |
| SetSkinnedMeshRenderer | Sets the value of a named Skinned Mesh Renderer property. |
| SetTexture | Sets the value of a named texture property. |
| SetUInt | Sets the value of a named unsigned integer property. |
| SetVector2 | Sets the value of a named Vector2 property. |
| SetVector3 | Sets the value of a named Vector3 property. |
| SetVector4 | Sets the value of a named Vector4 or Color property. |
| Simulate | Use this method to fast-forward the visual effect by simulating all systems for several step counts using the specified delta time. |
| Stop | Use this method to send a stop event to all Spawn systems. |

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
