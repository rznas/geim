<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-minArraySize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The smallest number of elements in the array across all target objects. (Read Only)

If the SerializedObject contains multiple objects, this property returns the smallest number of elements. Unlike SerializedProperty.arraySize the minimum size is returned even if it is larger than SerializedObject.maxArraySizeForMultiEditing. In that case SerializedObject.maxArraySizeForMultiEditing could be increased to permit access to the array contents.

When the SerializedObject contains only a single object, this property behaves in the same way as SerializedProperty.arraySize and returns the true array size.

Additional resources: arraySize, isArray, SerializedObject.targetObjects.

```csharp
using UnityEditor;
using UnityEngine;public class MinArraySizeExample : ScriptableObject
{
    public int[] m_data;    [MenuItem("Example/SerializedProperty MinArraySize Example")]
    static void TestMethod()
    {
        const int largeArraySize = 100; // Larger than the default maxArraySizeForMultiEditing value of 64        MinArraySizeExample obj1 = ScriptableObject.CreateInstance<MinArraySizeExample>();
        obj1.m_data = new int[largeArraySize];        for (int i = 0; i < largeArraySize; i++)
            obj1.m_data[i] = i;        // Second object with its own copy of the large array
        MinArraySizeExample obj2 = ScriptableObject.CreateInstance<MinArraySizeExample>();
        obj2.m_data = obj1.m_data;        // Create serialized object for manipulating both objects
        SerializedObject serializedObject = new SerializedObject(new Object[] { obj1, obj2 });
        SerializedProperty property = serializedObject.FindProperty("m_data");        // arraySize returns 0 but minArraySize returns largeArraySize
        Debug.LogFormat("Array Size: {0}\nMin Array Size: {1}\nMax Array Size: {2}",
            property.arraySize, property.minArraySize, serializedObject.maxArraySizeForMultiEditing);        // Any call to GetArrayElementAtIndex() at this point would fail        // Extend the max permitted array size
        serializedObject.maxArraySizeForMultiEditing = property.minArraySize;        // Now arraySize returns largeArraySize, and the elements can be retrieved
        Debug.LogFormat("New Array Size: {0}, Last element: {1}", property.arraySize, property.GetArrayElementAtIndex(largeArraySize - 1).intValue);
    }
}
```
