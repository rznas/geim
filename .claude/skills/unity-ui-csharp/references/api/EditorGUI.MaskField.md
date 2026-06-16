<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.MaskField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for this control. |
| label | Label for the field. |
| mask | The current mask to display. |
| displayedOption | A string array containing the labels for each flag. |
| style | Optional GUIStyle. |
| displayedOptions | A string array containing the labels for each flag. |

### Returns

**int** The value modified by the user.

### Description

Makes a field for masks.

**Note:** The mask values for the flags associated with each option in the menu will be consecutive powers of 2 starting with 1, i.e. 1, 2, 4, 8, 16, and so on.


 *Simple window that shows the mask field.*

```csharp
using UnityEngine;
using UnityEditor;class SimpleMaskUsage : EditorWindow
{
    int flags = 0;
    string[] options = { "CanJump", "CanShoot", "CanSwim" };    [MenuItem("Examples/Mask Field Usage")]
    static void Init()
    {
        var window = GetWindow<SimpleMaskUsage>();
        window.Show();
    }    void OnGUI()
    {
        flags = EditorGUI.MaskField(new Rect(0, 0, 300, 20), "Player Flags", flags, options);
    }
}
```
