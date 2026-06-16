<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-longValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Value of an integer property as a long.

Contains a valid value when propertyType is SerializedPropertyType.Integer. Most appropriate for long properties (SerializedPropertyNumericType.Int64), but can be used with all integer types of 64 bits or less, although ulongValue is recommended for SerializedPropertyNumericType.UInt64. 
 
 When assigning a value to longValue, the value is clamped in the range of the property's declared type. For example, a property that is declared as a ushort is clamped between 0 and 65,535.

 Additional resources: intValue, ulongValue, propertyType, SerializedPropertyType.Integer.
