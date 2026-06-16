<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.HorizontalSlider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the slider. |
| value | The value the slider shows. This determines the position of the draggable thumb. |
| leftValue | The value at the left end of the slider. |
| rightValue | The value at the right end of the slider. |
| slider | The GUIStyle to use for displaying the dragging area. If left out, the `horizontalSlider` style from the current GUISkin is used. |
| thumb | The GUIStyle to use for displaying draggable thumb. If left out, the `horizontalSliderThumb` style from the current GUISkin is used. |

### Returns

**float** The value that has been set by the user.

### Description

A horizontal slider the user can drag to change a value between a min and a max.

```csharp
// Draws a horizontal slider control that goes from 0 to 10.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float hSliderValue = 0.0F;    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 25, 100, 30), hSliderValue, 0.0F, 10.0F);
    }
}
```
