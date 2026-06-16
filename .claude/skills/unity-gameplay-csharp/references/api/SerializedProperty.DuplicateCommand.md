<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.DuplicateCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Duplicates the array element referenced by the SerializedProperty.

Used to insert another element in the array, initialized to the same contents as the SerializedProperty. Additional resources: InsertArrayElementAtIndex

```csharp
using UnityEditor;
using UnityEngine;public class SerializedPropertyDuplicateCommandExample : ScriptableObject
{
    public string[] m_Data;    [MenuItem("Example/SerializedProperty/DuplicateCommand Example")]
    static void MenuCallback()
    {
        SerializedPropertyDuplicateCommandExample obj = ScriptableObject.CreateInstance<SerializedPropertyDuplicateCommandExample>();
        obj.m_Data = new string[] { "A", "B", "C" };        SerializedObject serializedObject = new SerializedObject(obj);
        SerializedProperty arrayProperty = serializedObject.FindProperty("m_Data");        SerializedProperty element1 = arrayProperty.GetArrayElementAtIndex(1);
        element1.DuplicateCommand();
        element1.DuplicateCommand();        // Last entry has been shifted from index 2 to index 4
        SerializedProperty lastElement = arrayProperty.GetArrayElementAtIndex(4);
        lastElement.DuplicateCommand();        serializedObject.ApplyModifiedProperties();        // Outputs "A B B B C C"
        Debug.Log("Final array contents: " + string.Join(" ", obj.m_Data));
    }
}
```
