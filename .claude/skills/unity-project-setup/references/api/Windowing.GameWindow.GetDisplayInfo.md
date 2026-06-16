<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.GetDisplayInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**DisplayInfo** A DisplayInfo object with the display details.

### Description

Gets the display information of the display that holds the window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class DisplayInfoExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        DisplayInfo info = window.GetDisplayInfo();
        Debug.Log($"Display: {info.name}, Resolution: {info.width}x{info.height}");
    }
}
```
