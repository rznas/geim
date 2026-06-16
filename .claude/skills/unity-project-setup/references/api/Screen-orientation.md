<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-orientation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies logical orientation of the screen.

The default value is taken from the Default Orientation property in Player Settings. Currently screen orientation is only relevant on mobile platforms. For example, if a mobile device has a resolution of 480x320, the horizontal orientation is treated as 480x320 resolution and vertical orientation is 320x480.

**Note:** The logical orientation affects not only screen orientation, but also touch coordinates. You should expect drastic changes in the touch positions after changing logical orientation, because touch positions are rotated clockwise or counter-clockwise to match screen coordinates.

**Web**: On Web, this property's functionality depends on the browser's `ScreenOrientation.lock()` method. For current browser compatibility information, refer to [caniuse.com/wf-screen-orientation-lock](https://caniuse.com/wf-screen-orientation-lock). Most browsers prefer to avoid locking web content and instead let the user choose the orientation in system settings.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Start in landscape mode
    void Start()
    {
        Screen.orientation = ScreenOrientation.LandscapeLeft;
    }
}
```

If the value is set to ScreenOrientation.AutoRotation then the screen selects from any of the options (enabled by autorotateToPortrait, etc) automatically as the device orientation changes.

Additional resources: ScreenOrientation.
