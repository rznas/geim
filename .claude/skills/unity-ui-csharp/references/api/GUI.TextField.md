<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.TextField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the text field. |
| text | Text to edit. The return value of this function should be assigned back to the string as shown in the example. |
| maxLength | The maximum length of the string. If left out, the user can type for ever and ever. |
| style | The style to use. If left out, the `textField` style from the current GUISkin is used. |

### Returns

**string** The edited string.

### Description

Make a single-line text field where the user can edit a string.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public string stringToEdit = "Hello World";    void OnGUI()
    {
        // Make a text field that modifies stringToEdit.
        stringToEdit = GUI.TextField(new Rect(10, 10, 200, 20), stringToEdit, 25);
    }
}
```
