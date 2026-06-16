<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen.SetResolution.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Switches the screen resolution and refresh rate if supported.

A `width` by `height` resolution is used. If no matching resolution is supported, the closest one is set. 
 If the `preferredRefreshRate` parameter is specified but no matching refresh rate is supported, the highest available is set. Changing the refresh rate is only supported when using exclusive full-screen mode.

**Android**:

- **Android 10 and older:** The `fullscreen` parameter controls the `SYSTEM_UI_FLAG_IMMERSIVE_STICKY`, `SYSTEM_UI_FLAG_LAYOUT_STABLE`, `SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN`, `SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION`, `SYSTEM_UI_FLAG_HIDE_NAVIGATION`, and `SYSTEM_UI_FLAG_FULLSCREEN` flags using [View.setSystemUiVisibility](https://developer.android.com/reference/android/view/View#setSystemUiVisibility(int)) method.
- **Android 11 and newer:** When `fullscreen` is true, `WindowInsetsController.hide(WindowInsets.Type.navigationBars())` is called and when `fullscreen` is false, `WindowInsetsController.show(WindowInsets.Type.navigationBars())` is called. For more information, refer to Android documentation on [WindowInsetsController](https://developer.android.com/reference/android/view/WindowInsetsController).

**Usage details**:

- To set a specific full-screen mode on a desktop platform, use the method overload that accepts the `FullScreenMode` parameter. Exclusive full-screen mode is only supported on Windows standalone Player.
- If you use multi-display, you can only use `Screen.SetResolution` to set the resolution of the primary screen.
- A resolution change is applied at the end of the current frame and not immediately.
- In the Editor, it affects only the Game view's resolution.

Examples:

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // Switch to 640 x 480 full-screen
        Screen.SetResolution(640, 480, true);
    }
}
```

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // Switch to 640 x 480 full-screen at 60 hz
        Screen.SetResolution(640, 480, FullScreenMode.ExclusiveFullScreen, new RefreshRate() { numerator = 60, denominator = 1 });
    }
}
```

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // Switch to 800 x 600 windowed
        Screen.SetResolution(800, 600, false);
    }
}
```

Additional resources: resolutions property.
