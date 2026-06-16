<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.FindPropertyRelative.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retrieves the SerializedProperty at a relative path to the current property.

When the SerializedProperty references a compound type, such as a struct, class or array, then this method can be used to lookup a child property by name.

```csharp
using UnityEngine;
using UnityEditor;public class SerializePropertyFindPropertyRelative : ScriptableObject
{
    [System.Serializable]
    public struct NestedData
    {
        public int x;
        public int y;
    };
    public NestedData m_data;    [MenuItem("Example/SerializedProperty FindPropertyRelative Example")]
    static void FindPropertyRelativeExample()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializePropertyFindPropertyRelative>();        // Change the values of the struct using SerializedObject
        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            var data = serializedObject.FindProperty("m_data");            SerializedProperty x = data.FindPropertyRelative("x");
            x.intValue = 1;            SerializedProperty y = data.FindPropertyRelative("y");
            y.intValue = 2;            serializedObject.ApplyModifiedProperties();
        }        Debug.Log($"Value of data after update: {scriptableObject.m_data.x}, {scriptableObject.m_data.y}");
    }
}
```
