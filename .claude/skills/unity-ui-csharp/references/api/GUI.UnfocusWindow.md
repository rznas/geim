<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.UnfocusWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Remove focus from all windows.

Additional resources: GUI.FocusWindow.

```csharp
// Draws 2 windows. When one button is clicked unfocus the window.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    private Rect windowRect = new Rect(20, 20, 120, 50);
    private Rect windowRect2 = new Rect(20, 80, 120, 50);    void OnGUI()
    {
        windowRect = GUI.Window(0, windowRect, DoMyFirstWindow, "First");
        windowRect2 = GUI.Window(1, windowRect2, DoMySecondWindow, "Second");
    }    void DoMyFirstWindow(int windowID)
    {
        if (GUI.Button(new Rect(10, 20, 100, 20), "UnFocus"))
        {
            GUI.UnfocusWindow();
        }
    }    void DoMySecondWindow(int windowID)
    {
        if (GUI.Button(new Rect(10, 20, 100, 20), "UnFocus"))
        {
            GUI.UnfocusWindow();
        }
    }
}
```
