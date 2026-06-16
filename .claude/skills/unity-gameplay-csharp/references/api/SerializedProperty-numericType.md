<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-numericType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Return the precise type for Integer and Floating point properties. (Read Only)

The propertyType property classifies all supported Integer types as SerializedPropertyType.Integer, and both single and double precision Float types as SerializedPropertyType.Float. This property exposes the precise type, for example SerializedPropertyNumericType.UInt8 and SerializedPropertyNumericType.Double, and is more efficient than using the string-based type property. For enum properties (SerializedPropertyType.Enum) it returns the underlying type. For non-numeric types it returns SerializedPropertyNumericType.Unknown.

```csharp
using System;
using System.Text;
using UnityEditor;
using UnityEngine;public class NumericTypeExample : ScriptableObject
{
    public byte m_byte;
    public int m_int;
    public long m_long;
    public float m_float;
    public double m_double;    [Flags]
    public enum UIntFlags : uint
    {
        None = 0,
        Flag31 = 1 << 30,
        Flag32 = 1u << 31,
    }
    public UIntFlags m_uintFlags;
    public string m_string;    [MenuItem("Example/SerializedProperty NumericType API")]
    static void TestMethod()
    {
        // This example demonstrates how numericType exposes more precise details of the type
        NumericTypeExample obj = ScriptableObject.CreateInstance<NumericTypeExample>();
        SerializedObject serializedObject = new SerializedObject(obj);        var serializedProperty = serializedObject.FindProperty("m_byte");
        var sb = new StringBuilder();
        do
        {
            sb.AppendLine(String.Format("Name: {0,-11} propertyType: {1,-7} numericType: {2}",
                serializedProperty.name, serializedProperty.propertyType, serializedProperty.numericType));
        }
        while (serializedProperty.Next(false));        //Expected output:
        //Name: m_byte      propertyType: Integer numericType: UInt8
        //Name: m_int       propertyType: Integer numericType: Int32
        //Name: m_long      propertyType: Integer numericType: Int64
        //Name: m_float     propertyType: Float   numericType: Float
        //Name: m_double    propertyType: Float   numericType: Double
        //Name: m_uintFlags propertyType: Enum    numericType: UInt32
        //Name: m_string    propertyType: String  numericType: Unknown
        Debug.Log(sb.ToString());
    }
}
```
