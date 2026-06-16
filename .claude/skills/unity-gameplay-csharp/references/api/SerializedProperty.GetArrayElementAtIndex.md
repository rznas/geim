<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.GetArrayElementAtIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the element at the specified index in the array.

Additional resources: isArray, arraySize, Next.

```csharp
using UnityEditor;
using UnityEngine;public class ArrayExample : ScriptableObject
{
    public int[] m_data;    [MenuItem("Example/SerializedProperty GetArrayElementAtIndex Example")]
    static void Example()
    {
        ArrayExample obj = ScriptableObject.CreateInstance<ArrayExample>();
        obj.m_data = new int[] { 3, 2, 1 };        SerializedObject serializedObject = new SerializedObject(obj);
        SerializedProperty property = serializedObject.FindProperty("m_data");        for (int i = 0; i < property.arraySize; i++)
        {
            SerializedProperty element = property.GetArrayElementAtIndex(i);            //Will print
            //m_data.Array.data[0] : 3
            //m_data.Array.data[1] : 2
            //m_data.Array.data[2] : 1
            Debug.Log(element.propertyPath + " : " + element.intValue);
        }
    }
}
```
