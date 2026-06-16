<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-arrayElementType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Type name of the element in an array property. (Read Only)

Returns the C# type name of the element in an array property. In the case of SerializedPropertyType.ObjectReference and other internal values of SerializedPropertyType, the internal serialization type name is returned.

```csharp
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class SerializePropertyArrayElementTypeExample : ScriptableObject
{
    // Various kinds of lists/arrays
    public List<string> m_strings;
    public int[] m_ints;
    public List<Vector3> m_vectors;
    public GameObject[] m_gameObjects;    [MenuItem("Example/SerializedProperty arrayElementType Example")]
    static void ArrayElementTypeExample()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializePropertyArrayElementTypeExample>();        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            LogType(serializedObject, "m_strings");
            LogType(serializedObject, "m_ints");
            LogType(serializedObject, "m_vectors");
            LogType(serializedObject, "m_gameObjects");
        }
    }    static void LogType(SerializedObject serializedObject, string arrayFieldName)
    {
        var arrayType = serializedObject.FindProperty(arrayFieldName).arrayElementType;
        Debug.Log($"{arrayFieldName} array type: {arrayType}");
    }
}
```
