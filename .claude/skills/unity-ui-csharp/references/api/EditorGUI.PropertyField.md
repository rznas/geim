<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.PropertyField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the property field. |
| property | The SerializedProperty to make a field for. |
| label | Optional label to use. If not specified the label of the property itself is used. Use GUIContent.none to not display a label at all. |
| includeChildren | If `true` the property including children is drawn; otherwise only the control itself (such as only a foldout but nothing below it). |

### Returns

**bool** True if the property has children and is expanded and includeChildren was set to false; otherwise false.

### Description

Use this to make a field for a SerializedProperty in the Editor.

Additional resources: SerializedProperty, SerializedObject.

```csharp
//Attach a script like this to the GameObject you would like to have a custom Editor window.using UnityEngine;public class MyScript : MonoBehaviour
{
    public int myInt = 90;
}
```

```csharp
//Create a folder and name it “Editor” and place this second script within it. To do this right click within the Assets directory and go to Create>Folder
//Ensure you insert your first script’s name as a parameter in the CustomEditor e.g. [CustomEditor(typeof(MyScript))]using UnityEngine;
using UnityEditor;// Custom Editor using SerializedProperties.
// Make sure to put the name of the script on your GameObject in here
[CustomEditor(typeof(MyScript))]
// Automatic handling of multi-object editing, undo, and Prefab overrides.
[CanEditMultipleObjects]public class EditorGUIPropertyField : Editor
{
    SerializedProperty m_IntProperty;    void OnEnable()
    {
        // Fetch the objects from the MyScript script to display in the inspector
        m_IntProperty = serializedObject.FindProperty("myInt");
    }    public override void OnInspectorGUI()
    {
        //The variables and GameObject from the GameObject script are displayed in the Inspector and have the appropriate label
        EditorGUI.PropertyField(new Rect(0, 300, 500, 30), m_IntProperty, new GUIContent("Int : "));        // Apply changes to the serializedProperty - always do this in the end of OnInspectorGUI.
        serializedObject.ApplyModifiedProperties();
    }
}
```
