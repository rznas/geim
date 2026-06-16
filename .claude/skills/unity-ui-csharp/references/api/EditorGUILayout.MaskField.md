<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUILayout.MaskField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| label | Prefix label of the field. |
| mask | The current mask to display. |
| displayedOption | A string array containing the labels for each flag. |
| options | An optional list of layout options that specify extra layout properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**int** The value modified by the user.

### Description

Make a field for masks.

*Simple window that shows the mask field.*

```csharp
using UnityEngine;
using UnityEditor;public class MaskFieldExample : EditorWindow
{
    static int flags = 0;
    static string[] options = new string[] {"CanJump", "CanShoot", "CanSwim"};    [MenuItem("Examples/Mask Field usage")]
    static void Init()
    {
        MaskFieldExample window = (MaskFieldExample)GetWindow(typeof(MaskFieldExample));
        window.Show();
    }    void OnGUI()
    {
        flags = EditorGUILayout.MaskField("Player Flags", flags, options);        // Display the flags in disabled toggles
        GUI.enabled = false;
        for (var i = 0; i < options.Length; i++)
        {
            var value = (flags & (1 << i)) != 0;
            EditorGUILayout.Toggle(options[i], value);
        }
        GUI.enabled = true;
    }
}
```
