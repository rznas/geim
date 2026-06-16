<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.TextArea.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the text field. |
| text | Text to edit. The return value of this function should be assigned back to the string as shown in the example. |
| maxLength | The maximum length of the string. If left out, the user can type for ever and ever. |
| style | The style to use. If left out, the `textArea` style from the current GUISkin is used. |

### Returns

**string** The edited string.

### Description

Make a Multi-line text area where the user can edit a string.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string stringToEdit = "Hello World\nI've got 2 lines...";    void OnGUI()
    {
        // Make a multiline text area that modifies stringToEdit.
        stringToEdit = GUI.TextArea(new Rect(10, 10, 200, 100), stringToEdit, 200);
    }
}
```
