<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.Main.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**GameWindow** The main GameWindow instance.

### Description

Gets the main window of the application.

Returns the main window without allocating memory on repeated calls. This property is not thread-safe; use only from the main thread.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class MainWindowExample : MonoBehaviour
{
    void Start()
    {
        GameWindow mainWindow = GameWindow.Main;
        Debug.Log(mainWindow != null ? "Main window acquired." : "No main window.");
    }
}
```
