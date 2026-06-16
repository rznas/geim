<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.MinWidth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Option passed to a control to specify a minimum width.

**Note:** This option will override the Automatic width Layout parameter


 *Minimum allowed width for a Window.*

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Draws a window you can resize between 80px and 200px height
    // Just click the box inside the window and move your mouse
    Rect windowRect = new Rect(10, 10, 100, 100);
    bool scaling = false;    void OnGUI()
    {
        windowRect = GUILayout.Window(0, windowRect, ScalingWindow, "resizeable",
            GUILayout.MinHeight(80), GUILayout.MaxHeight(200));
    }    void ScalingWindow(int windowID)
    {
        GUILayout.Box("", GUILayout.Width(20), GUILayout.Height(20));
        if (Event.current.type == EventType.MouseUp)
        {
            scaling = false;
        }
        else if (Event.current.type == EventType.MouseDown &&
                 GUILayoutUtility.GetLastRect().Contains(Event.current.mousePosition))
        {
            scaling = true;
        }        if (scaling)
        {
            windowRect = new Rect(windowRect.x, windowRect.y,
                windowRect.width + Event.current.delta.x, windowRect.height + Event.current.delta.y);
        }
    }
}
```
