<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty.Next.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Move to next property.

Update the SerializedProperty so that it points to the next property, in the order of serialization.

This is can be used to traverse the state of objects without prior knowledge of their data structures. It is also an efficient way to iterate through arrays.

If the current property is a compound type, such as an struct, array, string, or inline Unity struct such as Vector3, then the enterChildren parameter determines whether to either visit the nested properties or to skip to the property immediately after the compound type.

Next will never move to a different Object, so when the current property is of type SerializedPropertyType.ObjectReference then calling Next(true) will not visit the properties of that referenced object. One way to visit a referenced object is to retrieve the object with SerializedProperty.objectReferenceValue and construct a new SerializedObject instance for that target.

If there are no further properties in the SerializedObject, this method will return false, and the SerializedProperty is set to an invalid state that not longer references a property.

```csharp
using System;
using System.Collections.Generic;
using System.Text;
using UnityEngine;
using UnityEditor;public class SerializePropertyNextExample : ScriptableObject
{
    public long m_dataFirst = 45;
    public string m_data2 = "hi";    [Serializable]
    class NestedInline
    {
        public long[] m_data3 = new long[] {1, 2};
        public bool m_data4 = true;
    }
    [SerializeField]
    NestedInline m_nested;    [MenuItem("Example/SerializedProperty Next Example")]
    static void NextExample()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializePropertyNextExample>();        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            var sb = new StringBuilder();            // Visit the top level (depth 0) properties: m_dataFirst, m_data2 and m_nested
            VisitAll(serializedObject, false, sb);            // Visit each property, down to the granularity of individual string and array elements
            VisitAll(serializedObject, true, sb);
            Debug.Log(sb.ToString());
        }
    }    static void VisitAll(SerializedObject serializedObject, bool visitChildren, StringBuilder report)
    {
        report.AppendLine($"Traversal result (visitChildren: {visitChildren})");        // Start at the first field, instead of using GetIterator(), in order to skip past the internal properties
        var serializedProperty = serializedObject.FindProperty("m_dataFirst");
        do
        {
            report.AppendLine($"\tFound {serializedProperty.propertyPath} (depth {serializedProperty.depth})");
        }
        while (serializedProperty.Next(visitChildren));
    }
}
```

```csharp
using System;
using System.Text;
using UnityEngine;
using UnityEditor;public class SerializePropertyArrayEnumerationWithNextExample : ScriptableObject
{
    // Example of enumerating the elements of an array of struct using Next()
    [Serializable]
    public struct Data
    {
        public int m_Data1;
        public string m_Data2;
    }    public Data[] m_Data;
    public bool m_BeyondData;    [MenuItem("Example/SerializedProperty Array Enumeration Using Next")]
    static void TestArrayEnumeration()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializePropertyArrayEnumerationWithNextExample>();
        scriptableObject.m_Data = new Data[]
        {
            new Data() { m_Data1 = 0, m_Data2 = "zero" },
            new Data() { m_Data1 = 1, m_Data2 = "one" },
            new Data() { m_Data1 = 2, m_Data2 = "two" }
        };        var report = new StringBuilder();        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            var arrayProperty = serializedObject.FindProperty("m_Data");            var arrayElement = arrayProperty.GetArrayElementAtIndex(0);
            var arraySize = arrayProperty.arraySize;            for (int i = 0; i < arraySize; i++)
            {
                ReportElement(arrayElement, i, report);
                arrayElement.Next(false);
            }
        }
        Debug.Log(report.ToString());
    }    static void ReportElement(SerializedProperty arrayElement, int index, StringBuilder report)
    {
        var data1 = arrayElement.FindPropertyRelative("m_Data1").intValue;
        var data2 = arrayElement.FindPropertyRelative("m_Data2").stringValue;
        report.AppendLine($"Visiting Index {index}: {data1}, {data2}");
    }
}
```

If a SerializedProperty is referencing a ManagedReference, e.g. a field with the SerializeReference attribute, and Next is called with enterChildren set to true, then the SerializedProperty will move to the first property inside the managed object. Because managed references can form cyclical graphs, calling Next(true) blindly could potentially cause an endless loop. The following example demonstrates a technique to avoid that.

```csharp
using System;
using System.Collections.Generic;
using System.Text;
using UnityEngine;
using UnityEditor;[CreateAssetMenu]
public class SerializePropertyNextSerializeReferenceExample : ScriptableObject
{
    [Serializable]
    public class Node
    {
        public int m_Data;
        public string m_Data2;        [SerializeReference]
        public Node m_Child1 = null;        [SerializeReference]
        public Node m_Child2 = null;
    }    [SerializeReference]
    public Node m_Front = null;    [MenuItem("Example/SerializedProperty Next Cyclic Graph Example")]
    static void TestNextOnCyclicGraph()
    {
        var scriptableObject = ScriptableObject.CreateInstance<SerializePropertyNextSerializeReferenceExample>();        // Setup a graph of 3 nodes that has several cycles
        scriptableObject.m_Front = new Node() { m_Data = 1, m_Data2 = "First Node" };        var node2 = new Node() { m_Data = 2, m_Data2 = "Second Node", m_Child1 = scriptableObject.m_Front };
        scriptableObject.m_Front.m_Child1 = node2;        var node3 = new Node() { m_Data = 3, m_Data2 = "Third Node" };
        scriptableObject.m_Front.m_Child2 = node3;
        node2.m_Child2 = node3;
        node3.m_Child1 = scriptableObject.m_Front;        using (var serializedObject = new SerializedObject(scriptableObject))
        {
            var serializedProperty = serializedObject.FindProperty("m_Front");            var sb = new StringBuilder();
            sb.AppendLine("Graph traversal result:");            // Track visited Node objects by managed reference id to prevent endless looping
            var visitedNodes = new HashSet<long>();            bool visitChild;
            do
            {
                // default is false so we don't enumerate each character of each string,
                visitChild = false;                if (serializedProperty.propertyType == SerializedPropertyType.ManagedReference)
                {
                    long refId = serializedProperty.managedReferenceId;
                    if (visitedNodes.Add(refId))
                        visitChild = true; // First time seeing node, so visit it
                }
                else if (serializedProperty.propertyType == SerializedPropertyType.String)
                {
                    sb.AppendLine($"Found {serializedProperty.propertyPath} : {serializedProperty.stringValue}");
                }
                else if (serializedProperty.propertyType == SerializedPropertyType.Integer)
                {
                    sb.AppendLine($"Found {serializedProperty.propertyPath} : {serializedProperty.intValue}");
                }
            }
            while (serializedProperty.Next(visitChild));            /*Expected output
            Graph traversal result:
            Found m_Front.m_Data : 1
            Found m_Front.m_Data2 : First Node
            Found m_Front.m_Child1.m_Data : 2
            Found m_Front.m_Child1.m_Data2 : Second Node
            Found m_Front.m_Child1.m_Child2.m_Data : 3
            Found m_Front.m_Child1.m_Child2.m_Data2 : Third Node
            */
            Debug.Log(sb.ToString());
        }
    }
}
```

Additional resources: NextVisible, hasChildren, Reset, depth, SerializedObject.GetIterator, GetEndProperty.
