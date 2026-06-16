<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-enumNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Names of enumeration of an enum property.

Additional resources: enumDisplayNames, propertyType, SerializedPropertyType.Enum, enumValueIndex.

```csharp
using UnityEditor;
using UnityEngine;public enum ExampleEnum
{
    ValueFirst = 1,
    ValueSecond = 2,
    ValueThird = 3,
}public class EnumExample : ScriptableObject
{
    public ExampleEnum MyEnum = ExampleEnum.ValueSecond;    [MenuItem("Example/SerializedProperty Enum API")]
    static void Example()
    {
        EnumExample obj = ScriptableObject.CreateInstance<EnumExample>();
        SerializedObject serializedObject = new SerializedObject(obj);
        SerializedProperty enumProperty = serializedObject.FindProperty("MyEnum");        //MyEnum value: 2
        //Name of current value: ValueSecond
        //DisplayName: Value Second
        Debug.Log("MyEnum value: " + enumProperty.intValue +
            "\nName of current value: " + enumProperty.enumNames[enumProperty.enumValueIndex] +
            "\nDisplayName: " + enumProperty.enumDisplayNames[enumProperty.enumValueIndex]);
    }
}
```
