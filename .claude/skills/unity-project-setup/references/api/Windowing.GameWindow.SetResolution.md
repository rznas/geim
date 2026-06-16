<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windowing.GameWindow.SetResolution.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | The new width of the window in pixels. |
| height | The new height of the window in pixels. |

### Returns

**AsyncOperation** An AsyncOperation that represents the operation.

### Description

Sets the resolution of the window.

If the window's FullScreenMode is Windowed, the window is resized to match the specified resolution, and the rendering resolution is set accordingly. If the FullScreenMode is maximized or fullscreen, the window occupies the entire screen and the rendering resolution is set to the specified values, which may cause the image to be upscaled or downscaled if the resolution does not match the screen size.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class SetResolutionExample : MonoBehaviour
{
    AsyncOperation asyncOperation = null;    void Start()
    {
        var window = GameWindow.Main;
        asyncOperation = window.SetResolution(1280, 720);
    }    void Update()
    {
        if (asyncOperation != null && asyncOperation.isDone)
        {
            Debug.Log("Window resolution set successfully.");
            asyncOperation = null;
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| width | The new width of the window in pixels. |
| height | The new height of the window in pixels. |
| fullScreenMode | The new FullScreenMode for the window. |

### Returns

**AsyncOperation** An AsyncOperation that represents the operation.

### Description

Sets the resolution and full-screen mode of the window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class SetResolutionFullScreenExample : MonoBehaviour
{
    AsyncOperation asyncOperation = null;    void Start()
    {
        var window = GameWindow.Main;
        asyncOperation = window.SetResolution(1920, 1080, FullScreenMode.FullScreenWindow);
    }    void Update()
    {
        if (asyncOperation != null && asyncOperation.isDone)
        {
            Debug.Log("Window resolution and full-screen mode set successfully.");
            asyncOperation = null;
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| width | The new width of the window in pixels. |
| height | The new height of the window in pixels. |
| fullScreenMode | The new for the window. |
| preferredRefreshRate | The preferred refresh rate for the window. |

### Returns

**AsyncOperation** An AsyncOperation that represents the operation.

### Description

Sets the resolution, full-screen mode, and preferred refresh rate of the window.

```csharp
using UnityEngine;
using UnityEngine.Windowing;public class SetResolutionRefreshRateExample : MonoBehaviour
{
    AsyncOperation asyncOperation = null;    void Start()
    {
        var window = GameWindow.Main;
        asyncOperation = window.SetResolution(1920, 1080, FullScreenMode.ExclusiveFullScreen, new RefreshRate{ numerator = 60, denominator = 1 });
    }    void Update()
    {
        if (asyncOperation != null && asyncOperation.isDone)
        {
            Debug.Log("Window resolution, full-screen mode, and refresh rate set successfully.");
            asyncOperation = null;
        }
    }
}
```
