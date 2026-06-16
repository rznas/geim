<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.PropertyField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| property | The SerializedProperty to make a field for. |
| label | Optional label to use. If not specified the label of the property itself is used. Use GUIContent.none to not display a label at all. |
| includeChildren | If `true` the property including children is drawn; otherwise only the control itself (such as only a foldout but nothing below it). |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**bool** True if the property has children, is expanded, and `includeChildren` is set to false; otherwise false. You can use it to determine the `isExpanded` state of the property and customize the rendering of children if necessary.

### Description

Make a field for SerializedProperty.

Use this when you want to customise the look of the options for a GameObject in the Inspector. Use this to create fields for Serialized Properties. More information on changing the Editor is available in the Editor section.

Additional resources: SerializedProperty, SerializedObject.

```csharp
//The scripts below show how to use a propertyField to change your editor.
//Attach this first script to the GameObject that you would like to control. Add code in this script for any of the actions you require.using UnityEngine;public class MyGameObjectScript : MonoBehaviour
{
    public int m_MyInt = 75;
    public Vector3 m_MyVector = new Vector3(20, 1, 0);
    public GameObject m_MyGameObject;
}
```

```csharp
//This next script shows how to call upon variables from the "MyGameObject" Script (the first script) to make custom fields in the Inspector for these variables.using UnityEngine;
using UnityEditor;// Custom Editor using SerializedProperties.
// Automatic handling of multi-object editing, undo, and Prefab overrides.
[CustomEditor(typeof(MyGameObjectScript))]
[CanEditMultipleObjects]
public class EditorGUILayoutPropertyField : Editor
{
    SerializedProperty m_IntProp;
    SerializedProperty m_VectorProp;
    SerializedProperty m_GameObjectProp;    void OnEnable()
    {
        // Fetch the objects from the GameObject script to display in the inspector
        m_IntProp = serializedObject.FindProperty("m_MyInt");
        m_VectorProp = serializedObject.FindProperty("m_MyVector");
        m_GameObjectProp = serializedObject.FindProperty("m_MyGameObject");
    }    public override void OnInspectorGUI()
    {
        //The variables and GameObject from the MyGameObject script are displayed in the Inspector with appropriate labels
        EditorGUILayout.PropertyField(m_IntProp, new GUIContent("Int Field"), GUILayout.Height(20));
        EditorGUILayout.PropertyField(m_VectorProp, new GUIContent("Vector Object"));
        EditorGUILayout.PropertyField(m_GameObjectProp, new GUIContent("Game Object"));        // Apply changes to the serializedProperty - always do this at the end of OnInspectorGUI.
        serializedObject.ApplyModifiedProperties();
    }
}
```
