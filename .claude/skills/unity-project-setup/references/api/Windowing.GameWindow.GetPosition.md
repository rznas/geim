<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.GetPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Vector2Int** A Vector2Int that represents the position of the window.

### Description

Gets the position of the window relative to the top-left corner of the screen.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class WindowPositionExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        Vector2Int pos = window.GetPosition();
        Debug.Log($"Window position: {pos.x}, {pos.y}");
    }
}
```
