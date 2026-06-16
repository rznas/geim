<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.GameObjectRecorder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Records the changing properties of a GameObject as the Scene runs and saves the information into an AnimationClip.

This class binds GameObject properties, records their values as they change in the running Scene, and saves the result in an AnimationClip. The recorded GameObject is called root in the class, and you can also bind the properties of any child of root.

See the following code example on how this class can be implemented and to set what gets recorded.

```csharp
using UnityEngine;
using UnityEditor.Animations;public class RecordTransformHierarchy : MonoBehaviour
{
    public AnimationClip clip;    private GameObjectRecorder m_Recorder;    void Start()
    {
        // Create recorder and record the script GameObject.
        m_Recorder = new GameObjectRecorder(gameObject);        // Bind all the Transforms on the GameObject and all its children.
        m_Recorder.BindComponentsOfType<Transform>(gameObject, true);
    }    void LateUpdate()
    {
        if (clip == null)
            return;        // Take a snapshot and record all the bindings values for this frame.
        m_Recorder.TakeSnapshot(Time.deltaTime);
    }    void OnDisable()
    {
        if (clip == null)
            return;        if (m_Recorder.isRecording)
        {
            // Save the recorded session to the clip.
            m_Recorder.SaveToClip(clip);
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| currentTime | Returns the current time of the recording. (Read Only) |
| isRecording | Returns true when the recorder is recording. (Read Only) |
| root | The GameObject root of the animated hierarchy. (Read Only) |

### Constructors

| Constructor | Description |
| --- | --- |
| GameObjectRecorder | Create a new GameObjectRecorder. |

### Public Methods

| Method | Description |
| --- | --- |
| Bind | Binds a GameObject's property as defined by EditorCurveBinding. |
| BindAll | Adds bindings for all of target's properties, and also for all the target's children if recursive is true. |
| BindComponent | Adds bindings for all the properties of component. |
| BindComponentsOfType | Adds bindings for all the properties of the first component of type T found in target, and also for all the target's children if recursive is true. |
| GetBindings | Returns an array of all the bindings added to the recorder. |
| ResetRecording | Reset the recording. |
| SaveToClip | Saves recorded animation to a destination clip. |
| TakeSnapshot | Forwards the animation by dt seconds, then record the values of the added bindings. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
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
