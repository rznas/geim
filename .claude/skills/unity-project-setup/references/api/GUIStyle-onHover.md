<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-onHover.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rendering settings for when the control is turned on and the mouse is hovering it.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        GUI.skin.button.onHover.textColor = Color.cyan;
    }
}
```
