<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.IsMain.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if this window is the main application window.

### Description

Returns true if this window is the main application window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class IsMainWindowExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        bool isMain = window.IsMain();
        Debug.Log($"Is main window: {isMain}");
    }
}
```
