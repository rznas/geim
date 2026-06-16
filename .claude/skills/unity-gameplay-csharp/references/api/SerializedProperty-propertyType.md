<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-propertyType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Type of this property (Read Only).

Property type determines which of the "value" variable accessors are valid. For example, only boolValue is valid for SerializedPropertyType.Boolean 
 
 For numeric types SerializedPropertyType.Float and SerializedPropertyType.Integer, the best accessor can be determined with numericType, for example floatValue should be used for SerializedPropertyNumericType.Float and doubleValue should be used for SerializedPropertyNumericType.Double.

Additional resources: SerializedPropertyType, numericType.
