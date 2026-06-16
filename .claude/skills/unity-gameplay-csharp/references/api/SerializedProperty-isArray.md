<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-isArray.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is this property an array? (Read Only)

Additional resources: arraySize, GetArrayElementAtIndex.

```csharp
using System.Text;
using UnityEditor;
using UnityEngine;// Example showing the structure of SerializedProperty objects that comprise an Array property exposed by SerializedObject.
// Often this structure can be ignored and SerializedProperty.arraySize and SerializedProperty.GetArrayElementAtIndex(0)
// are convenient to jump straight to the size and data content.
// But, because the specific structure is exposed when using SerializedProperty.Next and SerializedProperty.propertyPath,
// some understanding of this structure can be useful.
public class StructureOfArrayExample : ScriptableObject
{
    // Serialized array
    // Note: The example would behave the same way if it was List<int>
    public string[] m_Data;    [MenuItem("Example/SerializedProperty/Array Structure Example")]
    static void MenuCallback()
    {
        var log = new StringBuilder();        StructureOfArrayExample obj = ScriptableObject.CreateInstance<StructureOfArrayExample>();
        obj.m_Data = new string[] { "zero", "one" };        SerializedObject serializedObject = new SerializedObject(obj);        // Top level property represents the entire array
        SerializedProperty serializedProperty = serializedObject.FindProperty("m_Data");
        ReportPropertyDetails(serializedProperty, log);        // Next element is a structural element ".Array".
        // This does not take any space in the serialized data, and acts much the same as the top level property
        bool visitChildren = true;
        serializedProperty.Next(visitChildren);
        ReportPropertyDetails(serializedProperty, log);        // First nested child is ".Array.size", which stores the number of elements of the array
        serializedProperty.Next(visitChildren);
        ReportPropertyDetails(serializedProperty, log);        // Next comes the first array element, ".Array.data[0]".
        // In this case it is the string "zero".  Strings are also represented as Arrays in SerializedObject.
        serializedProperty.Next(visitChildren);
        ReportPropertyDetails(serializedProperty, log);        // Skip past the nested content of the first string to get to the next string ("one")
        visitChildren = false;
        serializedProperty.Next(visitChildren);
        ReportPropertyDetails(serializedProperty, log);        //Will log:
        //Property path: 'm_Data' type: 'Generic' isArray: True depth: 0
        //Property path: 'm_Data.Array' type: 'Generic' isArray: True depth: 0
        //Property path: 'm_Data.Array.size' type: 'ArraySize' isArray: False depth: 1
        //Property path: 'm_Data.Array.data[0]' type: 'String' isArray: True depth: 1
        //Property path: 'm_Data.Array.data[1]' type: 'String' isArray: True depth: 1
        Debug.Log(log.ToString());
    }    static void ReportPropertyDetails(SerializedProperty prop, StringBuilder log)
    {
        log.AppendLine($"Property path: \'{prop.propertyPath}\' type: \'{prop.propertyType}\' isArray: {prop.isArray} depth: {prop.depth}");
    }
}
```
