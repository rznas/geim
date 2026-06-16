<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.GetHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** The height of the window in pixels.

### Description

Gets the height of the window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class WindowHeightExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        int height = window.GetHeight();
        Debug.Log($"Window height: {height}");
    }
}
```
