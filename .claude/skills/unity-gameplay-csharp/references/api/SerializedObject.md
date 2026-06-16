<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

SerializedObject and SerializedProperty are classes for editing serialized fields on Unity objects in a completely generic way. These classes automatically handle dirtying individual serialized fields so they will be processed by the Undo system and styled correctly for Prefab overrides when drawn in the Inspector.

In many cases, you may create tools to modify objects in your project. For instance, the following script example creates a menu item that resets the local position of all GameObjects currently selected. Put it in a file called Example1.cs in a folder called Editor:

```csharp
using UnityEditor;
using UnityEngine;static class Example1
{
    [MenuItem("Edit/Reset Selected Objects Position (No Undo)")]
    static void ResetPosition()
    {
        // this action will not be undoable
        foreach (var go in Selection.gameObjects)
            go.transform.localPosition = Vector3.zero;
    }
}
```

Although you can edit objects via their API points in this way, you would also have to use other editor APIs to specify which components have been dirtied so that this action would be undoable and would be detected as a change the next time the Scene is saved, and so on. In contrast, using SerializedObject handles this process automatically. The following script example has the same effect as the previous one, but is also undoable and is tracked as a change in the Scene. Put it in a file called Example2.cs in a folder called Editor:

```csharp
using System.Linq;
using UnityEditor;
using UnityEngine;static class Example2
{
    [MenuItem("Edit/Reset Selected Objects Position")]
    static void ResetPosition()
    {
        var transforms = Selection.gameObjects.Select(go => go.transform).ToArray();
        var so = new SerializedObject(transforms);
        // you can Shift+Right Click on property names in the Inspector to see their paths
        so.FindProperty("m_LocalPosition").vector3Value = Vector3.zero;
        so.ApplyModifiedProperties();
    }
}
```

SerializedObject opens a data stream to one or more target Unity objects at a time, which allows you to simultaneously edit serialized data that the objects share in common. For example, if you have several Behaviours of different types in the data stream, the only property they have in common may be 'm_Enabled'.

When you first create a SerializedObject instance it is up-to-date. Any changes that you make to a SerializedProperty accessed within this data stream must ultimately be flushed via the SerializedObject.ApplyModifiedProperties method. If you keep a reference to a SerializedObject instance for more than one frame, you must make sure to manually call its SerializedObject.Update method before you read any data from it, as one or more target objects may have been modified elsewhere, such as from a separate SerializedObject stream. Respectively, note that two different SerializedObject streams with the same target objects are independent from one another and you must manually synchronize them in this fashion if one or more of them is maintained over the course of several frames.

One of the most common uses of the SerializedObject and SerializedProperty classes is when creating custom Editors, where using SerializedObject is the recommended approach as opposed to modifying inspected target objects directly.

The following example script defines a component that animates an object’s local position using a sine function. Put it in a script called SineAnimation.cs:

```csharp
using UnityEngine;public class SineAnimation : MonoBehaviour
{
    public Vector3 axis { get { return m_Axis; } set { m_Axis = value; } }
    [SerializeField]
    private Vector3 m_Axis = Vector3.up;    public float period { get { return m_Period; } set { m_Period = value; } }
    [SerializeField]
    private float m_Period = 1f / Mathf.PI;    public float amplitude { get { return m_Amplitude; } set { m_Amplitude = value; } }
    [SerializeField]
    private float m_Amplitude = 1f;    public float phaseShift { get { return m_PhaseShift; } set { m_PhaseShift = Mathf.Clamp01(value); } }
    [SerializeField, Range(0f, 1f)]
    private float m_PhaseShift;    void Update()
    {
        transform.localPosition = m_Axis * m_Amplitude * Mathf.Sin((Time.time + m_PhaseShift) / m_Period);
    }    void OnValidate()
    {
        m_PhaseShift = Mathf.Clamp01(m_PhaseShift);
    }
}
```

The following example script defines a custom Editor for SineAnimation that adds a button after the default controls to randomize the sine function parameters. Put it in a file called SineAnimationEditor.cs in a folder called Editor:

```csharp
using UnityEditor;
using UnityEngine;[CustomEditor(typeof(SineAnimation)), CanEditMultipleObjects]
public class SineAnimationEditor : Editor
{
    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();
        if (GUILayout.Button("Randomize Sine Function", EditorStyles.miniButton))
        {
            serializedObject.FindProperty("m_Period").floatValue = Random.Range(0f, 10f);
            serializedObject.FindProperty("m_Amplitude").floatValue = Random.Range(0f, 10f);
            serializedObject.FindProperty("m_PhaseShift").floatValue = Random.Range(0f, 1f);
            serializedObject.ApplyModifiedProperties();
        }
    }
}
```

The Editor class has a Editor.serializedObject property that provides a stream to all of the inspected targets (SineAnimation components in this case), which makes it easy to support editing multiple objects at the same time. Because this SerializedObject instance persists for the lifetime of the Editor instance, the base implementation of OnInspectorGUI handles calling Update before drawing any controls, as well as calling ApplyModifiedProperties after any user interaction. As such, modifications made when pressing the button added to this inspector must all be flushed via ApplyModifiedProperties before the method exits, or they will be lost the next time the base implementation of Editor.OnInspectorGUI calls the SerializedObject.Update method on the Editor.serializedObject instance.

Note that flushing data to a Unity object via SerializedObject.ApplyModifiedProperties will not respect any data validation logic you may have in property setters associated with the serialized fields. In this example, the value of the 'm_PhaseShift' field is clamped between 0 and 1, both in the phaseShift property setter and in the UI (via the RangeAttribute). Because users can access 'm_PhaseShift' via SerializedProperty (as well as by editing the asset on disk) and not only via the 'phaseShift' API or the UI, it is necessary to also clamp it to the valid range in the MonoBehaviour.OnValidate callback, which will sanitize the data when the Unity object is loaded.

Also note that although SerializedObject is designed to work with multiple targets, the value getter properties on the SerializedProperty class (e.g., SerializedProperty.floatValue, SerializedProperty.vector3Value) are not multi-select friendly. As such, assigning a value to them will affect all targets, but reading a value from them only returns the value associated with the first target in the list.

Additional resources: SerializedProperty, SerializeField, Editor, MonoBehaviour.OnValidate, SerializedProperty.hasMultipleDifferentValues.

### Properties

| Property | Description |
| --- | --- |
| context | The context used to store and resolve ExposedReference types. This is set by the SerializedObject constructor. |
| forceChildVisibility | Controls the visibility of the child hidden fields. |
| hasModifiedProperties | Is true when the SerializedObject has a modified property that has not been applied. |
| isEditingMultipleObjects | Does the serialized object represents multiple objects due to multi-object editing? (Read Only) |
| maxArraySizeForMultiEditing | Defines the maximum size beyond which arrays cannot be edited when multiple objects are selected. |
| targetObject | The inspected object (Read Only). |
| targetObjects | The inspected objects (Read Only). |

### Constructors

| Constructor | Description |
| --- | --- |
| SerializedObject | Create SerializedObject for inspected object. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyModifiedProperties | Apply property modifications. |
| ApplyModifiedPropertiesWithoutUndo | Applies property modifications without registering an undo operation. |
| CopyFromSerializedProperty | Copies a value from a SerializedProperty to the corresponding serialized property on the serialized object. |
| CopyFromSerializedPropertyIfDifferent | Copies a changed value from a SerializedProperty to the corresponding serialized property on the serialized object. |
| FindProperty | Find serialized property by name. |
| GetIterator | Get the first serialized property. |
| SetIsDifferentCacheDirty | Update hasMultipleDifferentValues cache on the next /Update()/ call. |
| Update | Update serialized object's representation. |
| UpdateIfRequiredOrScript | Update serialized object's representation, only if the object has been modified since the last call to Update or if it is a script. |
