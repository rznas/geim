<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.EqualContents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

See if contained serialized properties are equal.

```csharp
using UnityEditor;
using UnityEngine;public class EqualContentsExample : ScriptableObject
{
    public int m_A = 4;
    public int m_B = 4;    [MenuItem("Example/SerializedProperty EqualContents Example")]
    static void Example()
    {
        EqualContentsExample obj = ScriptableObject.CreateInstance<EqualContentsExample>();
        SerializedObject serializedObject = new SerializedObject(obj);        SerializedProperty propertyA = serializedObject.FindProperty("m_A");
        SerializedProperty propertyB = serializedObject.FindProperty("m_B");        // False because pointing to different properties
        Debug.Log("EqualContents : " + SerializedProperty.EqualContents(propertyA, propertyB));        // True because both have value 4
        Debug.Log("DataEquals : " + SerializedProperty.DataEquals(propertyA, propertyB));
    }
}
```
