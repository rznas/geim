<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-verticalScrollbar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Style used by default for the background part of GUI.VerticalScrollbar controls.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies only the default background of the
    // vertical scrollbar of the current GUISkin    float hSbarValue;
    GUIStyle style;    void OnGUI()
    {
        GUI.skin.verticalScrollbar = style;
        hSbarValue = GUILayout.VerticalScrollbar(hSbarValue, 1.0f, 0.0f, 10.0f);
    }
}
```
