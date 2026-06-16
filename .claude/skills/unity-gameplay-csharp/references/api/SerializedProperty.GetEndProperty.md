<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.GetEndProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retrieves the SerializedProperty that defines the end range of this property.

It's the first property that's not a child or grandchild of this property. The end property can be used to iterate over all children of a property by using EqualContents.

```csharp
using UnityEditor;
using UnityEngine;public class GetEndPropertyExample : ScriptableObject
{
    public Vector2 m_vector2 = new Vector2(1.0f, 2.0f);
    public bool m_bool = false;    [MenuItem("Example/SerializedProperty GetEndProperty Example")]
    static void Example()
    {
        GetEndPropertyExample obj = ScriptableObject.CreateInstance<GetEndPropertyExample>();
        SerializedObject serializedObject = new SerializedObject(obj);
        SerializedProperty property = serializedObject.FindProperty("m_vector2");        // Visit the x, y values of the vector, stopping once m_bool is reached
        var endOfChildrenIteration = property.GetEndProperty();
        while (property.NextVisible(true) && !SerializedProperty.EqualContents(property, endOfChildrenIteration))
        {
            Debug.Log(property.propertyPath + " : " + property.floatValue);
        }
    }
}
```
