<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.GetResolution.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Resolution** A Resolution object that represents the current resolution of the window.

### Description

Gets the resolution of the window.

If the window is running in windowed mode, this function retrieves the window’s resolution, in contrast to Screen.currentResolution, which returns the resolution of the display. Note that the fetched resolution refresh rate defaults to 0 if retrieving the window's refresh rate isn't supported on the current platform.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class WindowResolutionExample : MonoBehaviour
{
    void Start()
    {
        var window = GameWindow.Main;
        Resolution res = window.GetResolution();
        Debug.Log($"Resolution: {res.width}x{res.height} @ {res.refreshRate}Hz");
    }
}
```
