<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.SelectionGrid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| selected | The index of the selected button. |
| texts | An array of strings to show on the buttons. |
| images | An array of textures on the buttons. |
| contents | An array of text, image and tooltips for the button. |
| xCount | How many elements to fit in the horizontal direction. The elements will be scaled to fit unless the style defines a fixedWidth to use. The height of the control will be determined from the number of elements. |
| style | The style to use. If left out, the `button` style from the current GUISkin is used. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`.  Additional resources: GUILayout.Width, GUILayout.Height, GUILayout.MinWidth, GUILayout.MaxWidth, GUILayout.MinHeight, GUILayout.MaxHeight, GUILayout.ExpandWidth, GUILayout.ExpandHeight. |

### Returns

**int** The index of the selected button.

### Description

Make a Selection Grid.

*Selection grid in the Game View.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    int selGridInt = 0;
    string[] selStrings = {"radio1", "radio2", "radio3"};    void OnGUI()
    {
        GUILayout.BeginVertical("Box");
        selGridInt = GUILayout.SelectionGrid(selGridInt, selStrings, 1);
        if (GUILayout.Button("Start"))
        {
            Debug.Log("You chose " + selStrings[selGridInt]);
        }
        GUILayout.EndVertical();
    }
}
```
