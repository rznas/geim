<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.VerticalSlider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the slider. |
| value | The value the slider shows. This determines the position of the draggable thumb. |
| topValue | The value at the top end of the slider. |
| bottomValue | The value at the bottom end of the slider. |
| slider | The GUIStyle to use for displaying the dragging area. If left out, the `horizontalSlider` style from the current GUISkin is used. |
| thumb | The GUIStyle to use for displaying draggable thumb. If left out, the `horizontalSliderThumb` style from the current GUISkin is used. |

### Returns

**float** The value that has been set by the user.

### Description

A vertical slider the user can drag to change a value between a min and a max.

```csharp
// Draws a vertical slider control that goes from  10 (top) to 0 (bottom)using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float vSliderValue = 0.0f;    void OnGUI()
    {
        vSliderValue = GUI.VerticalSlider(new Rect(25, 25, 100, 30), vSliderValue, 10.0f, 0.0f);
    }
}
```
