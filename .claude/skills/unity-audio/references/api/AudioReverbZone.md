<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioReverbZone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reverb Zones are used when you want to create location based ambient effects in the Scene.

As the Audio Listener moves into a Reverb Zone, the ambient effect associated with the zone is gradually applied. At the max distance there is no effect and at the min distance the effect is fully applied. For example you can gradually change your character's footsteps sounds and create the feeling like you where entering into a cavern, going trough a room, swimming underwater, etc.

You can always mix reverb zones to have combined effects. For more info check Reverb Zones in the manual.

### Properties

| Property | Description |
| --- | --- |
| decayHFRatio | High-frequency to mid-frequency decay time ratio. |
| decayTime | Reverberation decay time at mid frequencies. |
| density | Value that controls the modal density in the late reverberation decay. |
| diffusion | Value that controls the echo density in the late reverberation decay. |
| HFReference | Reference high frequency (hz). |
| LFReference | Reference low frequency (hz). |
| maxDistance | The distance from the centerpoint that the reverb will not have any effect. Default = 15.0. |
| minDistance | The distance from the centerpoint that the reverb will have full effect at. Default = 10.0. |
| reflections | Early reflections level relative to room effect. |
| reflectionsDelay | Initial reflection delay time. |
| reverb | Late reverberation level relative to room effect. |
| reverbDelay | Late reverberation delay time relative to initial reflection. |
| reverbPreset | Set/Get reverb preset properties. |
| room | Room effect level (at mid frequencies). |
| roomHF | Relative room effect level at high frequencies. |
| roomLF | Relative room effect level at low frequencies. |

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
