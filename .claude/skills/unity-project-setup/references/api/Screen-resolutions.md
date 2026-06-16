<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-resolutions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns all full-screen resolutions that the monitor supports (Read Only).

Unity dynamically returns the supported resolutions for the monitor on which the application window is currently displayed, sorting them first by width and then by ascending resolution. **Important:** When using FullScreenMode.ExclusiveFullScreen, use `Screen.resolutions` to determine which resolution to pass to Screen.SetResolution, because `FullScreenMode.ExclusiveFullScreen` only works with supported resolutions. Passing an unsupported resolution can severely impact performance. All other full-screen modes support arbitrary resolutions without performance impact.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        Resolution[] resolutions = Screen.resolutions;        // Print the resolutions
        foreach (var res in resolutions)
        {
            Debug.Log(res.width + "x" + res.height + " : " + res.refreshRateRatio);
        }
    }
}
```

**Note:** On MacOS devices that have a notch area, the resolution array contains resolutions that don't fit under the notch area and will be resized when applied. 

Additional resources: Resolution structure, SetResolution.
