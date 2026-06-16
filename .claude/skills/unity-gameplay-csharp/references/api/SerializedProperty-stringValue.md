<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-stringValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Value of a string property.

Contains a valid value only if propertyType is SerializedPropertyType.String, otherwise accessing it results in an error logged.

Additional resources: propertyType, SerializedPropertyType.String.

```csharp
using UnityEngine;
using UnityEditor;public class SerializedPropertyStringExample : ScriptableObject
{
    public string m_string;    [MenuItem("Example/SerializedProperty stringValue Set Example")]
    static void StringValueExample()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializedPropertyStringExample>();
        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            SerializedProperty stringField = serializedObject.FindProperty("m_string");
            stringField.stringValue = "Hello World";
            serializedObject.ApplyModifiedProperties();
        }        // Save the ScriptableObject into the Project.
        // Viewing this Asset in the inspector will show the value of m_string as "Hello World"
        AssetDatabase.CreateAsset(scriptableObject, "Assets/Editor/SerializedPropertyStringExample.asset");
    }
}
```

```csharp
using UnityEditor;
using UnityEngine;public class SerializedPropertyStringExample2
{
    [MenuItem("Example/SerializedProperty stringValue Get Example")]
    public static void PrintStringProperties()
    {
        // Retrieve the currently selected Scene object in the Hierarchy Window,
        // or Asset selected in the project view
        var selectedObject = Selection.activeObject;
        if (selectedObject == null)
        {
            Debug.Log("No object selected.");
            return;
        }        SerializedObject serializedObject = new SerializedObject(selectedObject);        // Get the base property
        SerializedProperty property = serializedObject.GetIterator();        // Move to the first property
        bool visitChildren = true;
        property.NextVisible(visitChildren);        visitChildren = false;        // Iterate through all the top level properties (not recursive)
        do
        {
            if (property.propertyType == SerializedPropertyType.String)
            {
                Debug.Log($"Property: {property.name}, Value: {property.stringValue}");
            }
        }
        while (property.NextVisible(false));
    }
}
```
