<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.GetLogicalDpi.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**float** The logical DPI as a float.

### Description

Gets the logical DPI of the window.

Note that the logical DPI defaults to 0 if it's not supported by the platform.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class LogicalDpiExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        float dpi = window.GetLogicalDpi();
        Debug.Log($"Logical DPI: {dpi}");
    }
}
```
