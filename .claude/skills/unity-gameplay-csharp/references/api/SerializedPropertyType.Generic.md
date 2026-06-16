<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedPropertyType.Generic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an array, list, struct or class.

The Generic type is used for compound types that are serialized in-line: 
 - Arrays and lists. 
 - Structs that are user defined (e.g. not a built in Unity type). 
 - Classes that are serialized 'by value' (e.g. referenced without the SerializeReference attribute). 
 - Certain built in Unity structs, when they do not have dedicated SerializedPropertyType enum value. For example RectOffset is Generic, but Vector3 is SerializedPropertyType.Vector3. 


 Note: The term Generic, when used as a SerializedProperty type, should not be confused with the unrelated C# feature of Generic classes and methods.

 Additional resources: SerializedProperty.isArray, SerializedPropertyType.ManagedReference, SerializedPropertyType.ObjectReference

```csharp
using System;
using System.Text;
using UnityEngine;
using UnityEditor;
using System.Collections.Generic;namespace GenericObjectTypeExample
{
    [Serializable]
    public struct ExampleStruct
    {
        public int m_Field;
    };    [Serializable]
    public class ExampleClass
    {
        public int m_Field;
    };    public class GenericTypeExample : ScriptableObject
    {
        // All these fields will be serialized
        public int[] m_ArrayOfInt;
        public List<int> m_ListOfInt;
        public ExampleStruct m_ExampleStruct = new ExampleStruct() { m_Field = 1 };
        public ExampleClass m_ExampleClass = new ExampleClass() { m_Field = 2 };        [SerializeReference]
        public ExampleClass m_ManagedClass = new ExampleClass() { m_Field = 3 };        [MenuItem("Example/SerializedPropertyType Generic Example")]
        static void GenericExample()
        {
            var scriptableObject = ScriptableObject.CreateInstance<GenericTypeExample>();
            using (var serializedObject = new SerializedObject(scriptableObject))
            {
                var report = new StringBuilder();                // Generic
                ReportType(report, serializedObject, "m_ArrayOfInt");
                ReportType(report, serializedObject, "m_ListOfInt");
                ReportType(report, serializedObject, "m_ExampleStruct");
                ReportType(report, serializedObject, "m_ExampleClass");                // Not Generic
                ReportType(report, serializedObject, "m_ManagedClass");                Debug.Log(report.ToString());                AccessGenericValues(serializedObject);
            }
        }        static void AccessGenericValues(SerializedObject serializedObject)
        {
            // "generic" type struct and objects can be retrieved directly with boxedValue
            ExampleStruct structValues = (ExampleStruct)serializedObject.FindProperty("m_ExampleStruct").boxedValue;            // Alternatively individual fields can be read
            int fieldInStruct = serializedObject.FindProperty("m_ExampleStruct.m_Field").intValue;            Debug.Log($"Value of field in struct: {structValues.m_Field}, Value of field direct read: {fieldInStruct}");            // Similarly boxedValue supports writing to an inline class
            SerializedProperty inlineClass = serializedObject.FindProperty("m_ExampleClass");            // Serialize new state in a single call
            inlineClass.boxedValue = new ExampleClass() { m_Field = 4 };            // Individual fields can also be accessed
            Debug.Log($"Value of field in class after write: {inlineClass.FindPropertyRelative("m_Field").intValue}");            serializedObject.ApplyModifiedProperties();
        }        static void ReportType(StringBuilder report, SerializedObject serializedObject, string propertyPath)
        {
            var serializedProperty = serializedObject.FindProperty(propertyPath);
            report.AppendLine($"{propertyPath} has type {serializedProperty.propertyType}");
        }
    }
}
```
