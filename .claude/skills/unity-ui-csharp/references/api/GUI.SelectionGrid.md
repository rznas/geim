<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.SelectionGrid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the grid. |
| selected | The index of the selected grid button. |
| texts | An array of strings to show on the grid buttons. |
| images | An array of textures on the grid buttons. |
| contents | An array of text, image and tooltips for the grid button. |
| xCount | How many elements to fit in the horizontal direction. The controls will be scaled to fit unless the style defines a fixedWidth to use. |
| style | The style to use. If left out, the `button` style from the current GUISkin is used. |

### Returns

**int** The index of the selected button.

### Description

Make a grid of buttons.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public int selGridInt = 0;
    public string[] selStrings = new string[] {"Grid 1", "Grid 2", "Grid 3", "Grid 4"};    void OnGUI()
    {
        // use 2 elements in the horizontal direction
        selGridInt = GUI.SelectionGrid(new Rect(25, 25, 100, 30), selGridInt, selStrings, 2);
    }
}
```
