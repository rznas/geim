<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.GetWidth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** The width of the window in pixels.

### Description

Gets the width of the window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class WindowWidthExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        int width = window.GetWidth();
        Debug.Log($"Window width: {width}");
    }
}
```
