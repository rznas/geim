<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedObject.GetIterator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the first serialized property.

You can use this to go over all properties of the target object. Typically, when the desired field name is known, it is better to use FindProperty to retrieve the associated SerializedProperty more quickly. However this method can be useful for more general code that needs to scan different types of objects, e.g. when the names of desired properties is not known in advance.

 Additional resources: FindProperty, SerializedProperty.NextVisible, SerializedProperty.Reset.

```csharp
using System;
using System.Text;
using UnityEngine;
using UnityEditor;public class SerializeObjectGetIteratorExample : ScriptableObject
{
    public bool m_FirstField;    [MenuItem("Example/SerializedObject GetIterator")]
    static void GetIteratorExample()
    {
        // Each Unity Object has some internal properties that will be serialized.
        // Some of these are visible in the inspector, others are hidden.
        // Typically they can be ignored, but when using SerializedObject.GetIterator() they
        // appear prior to the C# fields.
        var scriptableObject = ScriptableObject.CreateInstance<SerializeObjectGetIteratorExample>();        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            SerializedProperty iterator = serializedObject.GetIterator();            var sb = new StringBuilder();
            sb.AppendLine("Visible Internal Properties:");            // GetIterator returns a root that is above all others (depth -1)
            // so first property is found by stepping into the children
            bool visitChildren = true;
            iterator.NextVisible(visitChildren);            // For rest of scan stay at the same level (depth 0)
            visitChildren = false;            do
            {
                if (iterator.name == "m_FirstField")
                    break; // Found first field from the C# object                sb.AppendLine($"\t{iterator.name}");
            }
            while (iterator.NextVisible(visitChildren));            // Repeat, using "Next" to show the hidden properties as well as visible
            sb.AppendLine("All Internal Properties:");            iterator.Reset();
            visitChildren = true;
            iterator.Next(visitChildren);
            visitChildren = false;            do
            {
                if (iterator.name == "m_FirstField")
                    break;
                sb.AppendLine($"\t{iterator.name}");
            }
            while (iterator.Next(visitChildren));            Debug.Log(sb.ToString());
        }
    }
}
```
