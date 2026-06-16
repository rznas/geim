<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-box.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Style used by default for GUI.Box controls.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies only the box style of the current GUISkin    GUIStyle style;    void OnGUI()
    {
        GUI.skin.box = style;
        GUILayout.Box("This is a box.");
    }
}
```
