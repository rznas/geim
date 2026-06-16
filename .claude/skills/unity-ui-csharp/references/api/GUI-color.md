<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI-color.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Applies a global tint to the GUI. The tint affects backgrounds and text colors.

The tint is applied when Unity draws the content. It multiplies this property by the current color, and uses the resulting color to draw the content. **Note:** Because GUI.Color is a multiplier for the current text color, it has no effect on UI labels when you use the light Unity theme. In the light theme, the default color for label text is black, which has an RGB value of 0. Multiplying any GUI.Color value by 0 yields 0, so the label text color does not change. In the dark theme, the default label text color is white, which has an RGB value of 1, so whatever color you specify in GUI.color becomes the new label text color.

```csharp
// Tints all GUI drawn elements with yellow.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        GUI.color = Color.yellow;
        GUI.Label(new Rect(10, 10, 100, 20), "Hello World!");
        GUI.Box(new Rect(10, 50, 50, 50), "A BOX");
        GUI.Button(new Rect(10, 110, 70, 30), "A button");
    }
}
```
