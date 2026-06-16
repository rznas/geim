<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.GetTitle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The title of the window as a string.

### Description

Gets the title of the window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class WindowTitleExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        string title = window.GetTitle();
        Debug.Log($"Window title: {title}");
    }
}
```
