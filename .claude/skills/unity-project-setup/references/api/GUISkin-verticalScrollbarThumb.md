<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-verticalScrollbarThumb.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Style used by default for the thumb that is dragged in GUI.VerticalScrollbar controls.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies only the vertical scrollbar thumb of the current GUISkin    float hSbarValue;
    GUIStyle style;    void OnGUI()
    {
        GUI.skin.verticalScrollbarThumb = style;
        hSbarValue = GUILayout.VerticalScrollbar(hSbarValue, 1.0f, 0.0f, 10.0f);
    }
}
```
