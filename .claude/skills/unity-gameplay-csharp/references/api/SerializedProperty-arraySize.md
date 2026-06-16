<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-arraySize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of elements in the array.

If the SerializedObject contains a single object, this property returns the number of elements in the array.

If the SerializedObject contains multiple objects, this property returns the smallest number of elements. This is done so that iteration of the SerializedObject only exposes properties found in all objects.

If there are multiple objects and the smallest array size is larger than SerializedObject.maxArraySizeForMultiEditing then this property returns 0 and the elements cannot be retrieved with SerializedProperty.GetArrayElementAtIndex.

Setting this property to a size smaller than the current size discards elements from the end, retaining the existing element content for the remaining elements. Setting this property to a larger size increases the array size by appending new elements at the end. The values of those new elements are undefined until explicitly assigned some desired content, as demonstrated in the second example below.

Additional resources: isArray, minArraySize, GetArrayElementAtIndex, InsertArrayElementAtIndex, DeleteArrayElementAtIndex, ClearArray, SerializedObject.targetObjects.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class SerializePropertyArraySizeExample : ScriptableObject
{
    public List<string> m_ListOfStrings = new List<string> { "zero", "one", "two" };
    public string m_NotInArray = "blah";    [MenuItem("Example/SerializedProperty/ArraySize Example")]
    static void ArraySizeExample()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializePropertyArraySizeExample>();        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            var arrayProperty = serializedObject.FindProperty("m_ListOfStrings");
            var arraySize = arrayProperty.arraySize;
            var arrayElement = arrayProperty.GetArrayElementAtIndex(0);            var concatenated = "Combined array contents: ";
            for (int i = 0; i < arraySize; i++, arrayElement.Next(false))
            {
                concatenated += arrayElement.stringValue + " ";
            }
            Debug.Log(concatenated);
        }
    }
}
```

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class SerializePropertyArrayResizeExample : ScriptableObject
{
    public List<string> m_ListOfStrings;    [MenuItem("Example/SerializedProperty/ArraySize Example 2")]
    static void MenuCallback()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializePropertyArrayResizeExample>();        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            var arrayProperty = serializedObject.FindProperty("m_ListOfStrings");            // Allocate an initial size of the array
            arrayProperty.arraySize = 2;            // Set the desired initial content for the new elements
            arrayProperty.GetArrayElementAtIndex(0).stringValue = "zero";
            arrayProperty.GetArrayElementAtIndex(1).stringValue = "one";            // Append another element
            arrayProperty.arraySize++;
            arrayProperty.GetArrayElementAtIndex(arrayProperty.arraySize - 1).stringValue = "two";            serializedObject.ApplyModifiedProperties();
            Debug.Log("Combined array contents: " + string.Join(" ", scriptableObject.m_ListOfStrings));
        }
    }
}
```
