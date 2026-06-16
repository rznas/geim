<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-horizontalScrollbarThumb.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Style used by default for the thumb that is dragged in GUI.HorizontalScrollbar controls.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies only the horizontal scrollbar thumb of the current GUISkin
    float hSbarValue;
    GUIStyle style;    void OnGUI()
    {
        GUI.skin.horizontalScrollbarThumb = style;
        hSbarValue = GUILayout.HorizontalScrollbar(hSbarValue, 1.0f, 0.0f, 10.0f);
    }
}
```
