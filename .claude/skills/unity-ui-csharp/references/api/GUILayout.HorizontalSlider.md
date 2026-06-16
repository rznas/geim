<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.HorizontalSlider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | The value the slider shows. This determines the position of the draggable thumb. |
| leftValue | The value at the left end of the slider. |
| rightValue | The value at the right end of the slider. |
| slider | The GUIStyle to use for displaying the dragging area. If left out, the `horizontalSlider` style from the current GUISkin is used. |
| thumb | The GUIStyle to use for displaying draggable thumb. If left out, the `horizontalSliderThumb` style from the current GUISkin is used. |
| options | An optional list of layout options that specify extra layouting properties. Any values passed in here will override settings defined by the `style`. |

### Returns

**float** The value that has been set by the user.

### Description

A horizontal slider the user can drag to change a value between a min and a max.

*Horizontal slider in the GameView.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    float hSliderValue;    void OnGUI()
    {
        hSliderValue = GUILayout.HorizontalSlider(hSliderValue, 0.0f, 10.0f);
        GUILayout.Label("This is a text that makes space");
    }
}
```
