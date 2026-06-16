<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.DeleteCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Deletes the array element referenced by the SerializedProperty.

The serialized property can't be used anymore after calling this function. A new iterator must be created in that case.

 Additional resources: DeleteArrayElementAtIndex

```csharp
using UnityEngine;
using UnityEditor;public class SerializePropertyDeleteCommandExample : ScriptableObject
{
    public int[] m_Array = new int[] { 1, -1, -1, 3, -1, -1, 1, 3, -1 };    [MenuItem("Example/SerializedProperty/DeleteCommand Example")]
    static void MenuCallback()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializePropertyDeleteCommandExample>();        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            SerializedProperty arrayProperty = serializedObject.FindProperty("m_Array");            int remaining = arrayProperty.arraySize;
            var arrayElement = remaining > 0 ? arrayProperty.GetArrayElementAtIndex(0) : null;
            while (remaining > 0)
            {
                if (arrayElement.intValue < 0)
                {
                    // Use a copy of the SerializedProperty because it cannot be used after DeleteCommand is invoked.
                    var elementToDelete = arrayElement.Copy();
                    elementToDelete.DeleteCommand();                    // The next element, if any, is now at the index of the deleted item, and arrayElement
                    // automatically points at it, hence we don't have to move ahead
                }
                else
                {
                    arrayElement.Next(false);
                }
                --remaining;
            }            serializedObject.ApplyModifiedProperties();
            Debug.Log("Cleaned array contents: " + string.Join(" ", scriptableObject.m_Array));
        }
    }
}
```
