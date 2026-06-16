<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-enumDisplayNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Display-friendly names of enumeration of an enum property.

Similar to enumNames, but formatted with spaces and capitalization.

Additional resources: enumNames, propertyType, SerializedPropertyType.Enum, enumValueIndex, InspectorNameAttribute.

```csharp
using UnityEditor;
using UnityEngine;public enum OptionEnum
{
    ValueFirst = 1,
    ValueSecond = 2,
    ValueThird = 3,    [InspectorName("Value 4 - Best choice")]
    ValueForth = 4,    [InspectorName("Value 5 - Avoid")]
    ValueFifth = 5,    None = 0
}public class EnumDisplayNameExample : ScriptableObject
{
    public OptionEnum MyEnum = OptionEnum.ValueForth;    [MenuItem("Example/SerializedProperty enumDisplayName Example")]
    static void MenuCallbackup()
    {
        EnumDisplayNameExample obj = ScriptableObject.CreateInstance<EnumDisplayNameExample>();
        SerializedObject serializedObject = new SerializedObject(obj);
        SerializedProperty enumProperty = serializedObject.FindProperty("MyEnum");        // Print the members of the enum, sorted by value
        // Will output:
        // Names: None,ValueFirst,ValueSecond,ValueThird,ValueForth,ValueFifth
        Debug.Log("Names: " + string.Join(",", enumProperty.enumNames));        //The display names show the InspectorName string when specified,
        //otherwise a more human readable version of the enum member name
        //Will output:
        //Display names: None,Value First,Value Second,Value Third,Value 4 - Best choice,Value 5 - Avoid
        Debug.Log("Display names: " + string.Join(",", enumProperty.enumDisplayNames));        //Will output:
        //Current value: Value 4 - Best choice
        Debug.Log("Current value: " + enumProperty.enumDisplayNames[enumProperty.enumValueIndex]);
    }
}
```
