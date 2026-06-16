<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-window.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Style used by default for Window controls (Additional resources: GUI.Window).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies only the window style of the current GUISkin    GUIStyle style;
    Rect windowRect = new Rect(20, 20, 120, 50);    void OnGUI()
    {
        GUI.skin.window = style;
        windowRect = GUILayout.Window(0, windowRect, DoMyWindow, "My Window");
    }    // Make the contents of the window
    void DoMyWindow(int windowID)
    {
        // This button will size to fit the window
        if (GUILayout.Button("Hello World"))
            print("Got a click");
    }
}
```
