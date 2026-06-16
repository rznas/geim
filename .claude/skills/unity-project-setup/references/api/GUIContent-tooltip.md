<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIContent-tooltip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The tooltip of this element.

The tooltip associated with this content. Read GUItooltip to get the tooltip of the gui element the user is currently over.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnGUI()
    {
        GUI.Button(new Rect(0, 0, 100, 20), new GUIContent("A Button", "This is the tooltip"));
        // If the user hovers the mouse over the button, the global tooltip gets set
        GUI.Label(new Rect(0, 40, 100, 40), GUI.tooltip);
    }
}
```
