<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.Toolbar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the toolbar. |
| selected | The index of the selected button. |
| texts | An array of strings to show on the toolbar buttons. |
| images | An array of textures on the toolbar buttons. |
| contents | An array of text, image and tooltips for the toolbar buttons. |
| style | The style to use. If left out, the `button` style from the current GUISkin is used. |
| buttonSize | Determines how toolbar button size is calculated. |

### Returns

**int** The index of the selected button.

### Description

Make a toolbar.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public int toolbarInt = 0;
    public string[] toolbarStrings = new string[] {"Toolbar1", "Toolbar2", "Toolbar3"};    void OnGUI()
    {
        toolbarInt = GUI.Toolbar(new Rect(25, 25, 250, 30), toolbarInt, toolbarStrings);
    }
}
```
