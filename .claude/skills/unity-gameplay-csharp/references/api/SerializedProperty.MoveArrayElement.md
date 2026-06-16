<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.MoveArrayElement.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Move an array element from srcIndex to dstIndex.

Additional resources: isArray, InsertArrayElementAtIndex, DeleteArrayElementAtIndex

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;public class MoveArrayElementExample : ScriptableObject
{
    public List<string> m_Data;    [MenuItem("Example/SerializedProperty/MoveArrayElementExample Example")]
    static void MenuCallback()
    {
        MoveArrayElementExample obj = ScriptableObject.CreateInstance<MoveArrayElementExample>();
        obj.m_Data = new List<string>() { "cat", "The", "jumped.", "big" };        SerializedObject serializedObject = new SerializedObject(obj);
        SerializedProperty arrayProperty = serializedObject.FindProperty("m_Data");        arrayProperty.MoveArrayElement(0, 1);
        arrayProperty.MoveArrayElement(3, 1);        serializedObject.ApplyModifiedProperties();        // Outputs "The big cat jumped."
        Debug.Log("Final array contents: " + string.Join(" ", obj.m_Data));
    }
}
```
