<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-intValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Value of an integer property.

Contains a valid value when propertyType is SerializedPropertyType.Integer and the underlying type is signed 32 bit or smaller (e.g. sbyte, short and int). It is also appropriate for small unsigned types (ushort and byte). For 32 bit unsigned fields use uintValue instead. And if you are accessing 64 bit integers use longValue or ulongValue instead. 
 
 When assigning a value to intValue, the value is clamped in the range of the property's declared type. For example, a property that is declared as a byte is clamped between 0 and 255.

 Additional resources: intValue, uintValue, longValue, propertyType, SerializedPropertyType.Integer.

```csharp
using System;
using System.Text;
using UnityEditor;
using UnityEngine;public class IntegerTypeExample : ScriptableObject
{
    public sbyte m_sbyte = SByte.MinValue;
    public byte m_byte = Byte.MaxValue;
    public short m_short = Int16.MinValue;
    public ushort m_ushort = UInt16.MaxValue;
    public int m_int = Int32.MinValue;
    public uint m_uint = UInt32.MaxValue;
    public long m_long = Int64.MinValue;
    public ulong m_ulong  = UInt64.MaxValue;    [MenuItem("Example/SerializedProperty Integer Access APIs")]
    static void TestMethod()
    {
        // This example demonstrates how to access the full range of each C# integer type via SerializedProperty        IntegerTypeExample obj = ScriptableObject.CreateInstance<IntegerTypeExample>();
        SerializedObject sObj = new SerializedObject(obj);        var sb = new StringBuilder();
        sb.AppendLine($"m_sbyte  : {sObj.FindProperty("m_sbyte").intValue}");
        sb.AppendLine($"m_byte   : {sObj.FindProperty("m_byte").uintValue}"); // or intValue
        sb.AppendLine($"m_short  : {sObj.FindProperty("m_short").intValue}");
        sb.AppendLine($"m_ushort : {sObj.FindProperty("m_ushort").uintValue}"); // or intValue
        sb.AppendLine($"m_int    : {sObj.FindProperty("m_int").intValue}");
        sb.AppendLine($"m_uint   : {sObj.FindProperty("m_uint").uintValue}");
        sb.AppendLine($"m_long   : {sObj.FindProperty("m_long").longValue}");
        sb.AppendLine($"m_ulong  : {sObj.FindProperty("m_ulong").ulongValue}");        Debug.Log(sb.ToString());
    }
}
```
