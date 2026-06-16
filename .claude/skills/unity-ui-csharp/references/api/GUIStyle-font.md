<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-font.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The font to use for rendering. If null, the default font for the current GUISkin is used instead.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints name of the font that button is using.    void OnGUI()
    {
        Debug.Log("Font name: " + GUI.skin.button.font.name);
    }
}
```
