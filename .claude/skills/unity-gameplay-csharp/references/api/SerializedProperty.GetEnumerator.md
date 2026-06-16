<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.GetEnumerator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retrieves an iterator for enumerating over the visible child properties of the current property. If the property is an array it will enumerate over the array elements.

Additional resources: NextVisible, GetEndProperty, GetArrayElementAtIndex

```csharp
using UnityEditor;
using UnityEngine;public class EnumerateExample : ScriptableObject
{
    public Vector3 m_vector3 = new Vector3(1.0f, 2.0f, 3.0f);
    public int m_anotherField = 2;    [MenuItem("Example/SerializedProperty GetEnumerator Example")]
    static void Example()
    {
        EnumerateExample obj = ScriptableObject.CreateInstance<EnumerateExample>();
        SerializedObject serializedObject = new SerializedObject(obj);
        SerializedProperty property = serializedObject.FindProperty("m_vector3");        // Visit the x, y, z values of the vector, stopping once m_anotherField is reached
        var enumerator = property.GetEnumerator();
        while (enumerator.MoveNext())
        {
            property = enumerator.Current as SerializedProperty;
            Debug.Log(property.propertyPath + " : " + property.floatValue);
        }
    }
}
```
