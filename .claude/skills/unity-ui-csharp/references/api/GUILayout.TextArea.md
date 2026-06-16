<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.TextArea.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| text | Text to edit. The return value of this function should be assigned back to the string as shown in the example. |
| maxLength | The maximum length of the string. If left out, the user can type for ever and ever. |
| style | The style to use. If left out, the `textField` style from the current GUISkin is used. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`.&amp;lt;br&amp;gt; Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**string** The edited string.

### Description

Make a multi-line text field where the user can edit a string.

*Text area in the Game View.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    string stringToEdit = "Hello World\nI've got 2 lines...";    void OnGUI()
    {
        // Make a multiline text area that modifies stringToEdit.
        stringToEdit = GUILayout.TextArea(stringToEdit, 200);
    }
}
```
