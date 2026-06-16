<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-horizontalSlider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Style used by default for the background part of GUI.HorizontalSlider controls.

The padding property is used to determine the size of the area the thumb can be dragged within.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies only the horizontal slider style of the current GUISkin    float hSliderValue = 0.0f;
    GUIStyle style;    void OnGUI()
    {
        GUI.skin.horizontalSlider = style;
        hSliderValue = GUILayout.HorizontalSlider(hSliderValue, 0.0f, 10.0f);
    }
}
```
