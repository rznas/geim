<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-toggle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Style used by default for GUI.Toggle controls.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies only the toggle style of the current GUISkin    GUIStyle style;
    public bool val = false;    void OnGUI()
    {
        GUI.skin.toggle = style;
        val = GUILayout.Toggle(val, "A Toggle control");
    }
}
```
