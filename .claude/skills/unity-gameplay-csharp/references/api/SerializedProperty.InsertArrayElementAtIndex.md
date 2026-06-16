<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.InsertArrayElementAtIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Insert an new element at the specified index in the array.

The value of the inserted element is undefined and should be explicitly set after calling this function. 
 Additional resources: isArray, arraySize, GetArrayElementAtIndex.

```csharp
using UnityEditor;
using UnityEngine;public class InsertArrayElementAtIndexExample : ScriptableObject
{
    public string[] m_Data;    [MenuItem("Example/SerializedProperty/InsertArrayElementAtIndex Example")]
    static void MenuCallback()
    {
        InsertArrayElementAtIndexExample obj = ScriptableObject.CreateInstance<InsertArrayElementAtIndexExample>();
        obj.m_Data = new string[] { "The", "cat" };        SerializedObject serializedObject = new SerializedObject(obj);
        SerializedProperty arrayProperty = serializedObject.FindProperty("m_Data");        arrayProperty.InsertArrayElementAtIndex(1);
        arrayProperty.GetArrayElementAtIndex(1).stringValue = "big";        arrayProperty.InsertArrayElementAtIndex(arrayProperty.arraySize);
        arrayProperty.GetArrayElementAtIndex(arrayProperty.arraySize - 1).stringValue = "jumped.";        serializedObject.ApplyModifiedProperties();        // Outputs "The big cat jumped."
        Debug.Log("Final array contents: " + string.Join(" ", obj.m_Data));
    }
}
```
