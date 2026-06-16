<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.EnumMaskField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Prefix label for this field. |
| enumValue | Enum to use for the flags. |
| style | Optional GUIStyle. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**Enum** The value modified by the user.

### Description

This method is obsolete. Use EditorGUILayout.EnumFlagsField instead.

Make a field for enum based masks.

Additional resources: EditorGUILayout.EnumFlagsField.


 *Simple window that shows the enum mask field.* Here is an example of how to implement an EnumMaskField, giving three options:

```csharp
using UnityEngine;
using UnityEditor;public class EditorEnumExample : EditorWindow
{
    public enum Example
    {
        Option_One = 1, //bits: 0000 0001
        Option_Two = 2,  //bits: 0000 0010
        Option_Three = 4     //bits: 0000 0100
    }    Example   staticFlagMask = 0;
    [MenuItem("Examples/Mask Field Usage")]
    static void Init()
    {
        // Get existing open window or if none, make a new one:
        EditorEnumExample window = (EditorEnumExample)EditorWindow.GetWindow(typeof(EditorEnumExample));
        window.Show();
    }    void OnGUI()
    {
        staticFlagMask = (Example)EditorGUILayout.EnumMaskField("Static Flags", staticFlagMask);
    }
}
```

Internally, Unity stores the enum as an int, with each value as a bitmask. Selecting "Nothing" clears all bits, resulting in an integer value of 0; selecting "Everything" will set all bits, producing an integer value of -1.

To determine whether a particular enum value has been set, you can either treat the enum as an int and perform a bitwise OR to test, or you can unset the "Everything" value by iterating through the enum values and reconstructing the enum accordingly. An example of how to do this is shown below:

```csharp
using UnityEngine;
using UnityEditor;public class EditorEnumExample : EditorWindow
{
    public enum Example
    {
        Option_One = 1, //bits: 0000 0001
        Option_Two = 2,  //bits: 0000 0010
        Option_Three = 4     //bits: 0000 0100
    }    Example   staticFlagMask = 0;
    [MenuItem("Examples/Mask Field Usage")]
    static void Init()
    {
        // Get existing open window or if none, make a new one:
        EditorEnumExample window = (EditorEnumExample)EditorWindow.GetWindow(typeof(EditorEnumExample));
        window.Show();
    }    void OnGUI()
    {
        staticFlagMask = (Example)EditorGUILayout.EnumMaskField("Static Flags", staticFlagMask);        // If "Everything" is set, force Unity to unset the extra bits by iterating through them
        if ((int)staticFlagMask < 0)
        {
            int bits = 0;
            foreach (var enumValue in System.Enum.GetValues(typeof(Example)))
            {
                int checkBit = (int)staticFlagMask & (int)enumValue;
                if (checkBit != 0)
                    bits |= (int)enumValue;
            }            staticFlagMask = (Example)bits;
        }
    }
}
```
