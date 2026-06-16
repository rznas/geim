<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-hover.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rendering settings for when the mouse is hovering over the control.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints the text color that button is using
    // when the mouse is hovering over a control    void OnGUI()
    {
        Debug.Log(GUI.skin.button.hover.textColor);
    }
}
```
