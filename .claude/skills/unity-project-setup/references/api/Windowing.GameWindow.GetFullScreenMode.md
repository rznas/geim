<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.GetFullScreenMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**FullScreenMode** The FullScreenMode of the window.

### Description

Gets the full-screen mode of the window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class FullScreenModeExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        FullScreenMode mode = window.GetFullScreenMode();
        Debug.Log($"Fullscreen mode: {mode}");
    }
}
```
