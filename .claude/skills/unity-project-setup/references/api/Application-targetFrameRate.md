<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-targetFrameRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the target frame rate at which Unity tries to render your application.

Accepts an integer > 0, or special value -1 (default).

**Desktop**

- If QualitySettings.vSyncCount is set to `0`, then `Application.targetFrameRate` chooses a target frame rate for the application. If `vSyncCount != 0`, then `targetFrameRate` is ignored.
- When `QualitySettings.vSyncCount = 0` and `Application.targetFrameRate = -1`, content is rendered unsynchronized as fast as possible.
- It's recommended to use `QualitySettings.vSyncCount` over `Application.targetFrameRate` because `vSyncCount` implements a hardware-based synchronization mechanism, whereas `targetFrameRate` is a software-based timing method and is subject to microstuttering.
- Setting `vSyncCount = 0` and using `targetFrameRate` will not produce a completely stutter-free output. Always use `vSyncCount > 0` when smooth frame pacing is needed.

**Web**

- If QualitySettings.vSyncCount is set to `0`, then `Application.targetFrameRate` chooses a target frame rate for the application. If `vSyncCount != 0`, then `targetFrameRate` is ignored.
- When `QualitySettings.vSyncCount = 0` and `Application.targetFrameRate = -1`, content is rendered at the native display refresh rate.
- It's recommended to use QualitySettings.vSyncCount over `Application.targetFrameRate` because `vSyncCount` implements a hardware-based synchronization mechanism, whereas `targetFrameRate` is a software-based timing method and is subject to microstuttering.
- Setting `vSyncCount = 0` and using `targetFrameRate` will not produce a completely stutter-free output. Always use `vSyncCount > 0` when smooth frame pacing is needed.
- Rendering is always limited by the maximum refresh rate of the display. Setting `vSyncCount = 0` and `targetFrameRate` to an arbitrarily high value will not exceed the display's native refresh rate, even if the rendering workload is sufficiently low.

**Android**

- Use `targetFrameRate` to control the frame rate of your application. This is useful for capping your application's frame rate to make sure your application displays smoothly and consistently under heavy rendering workloads. You can reduce your application's frame rate to conserve battery life and avoid overheating on mobile devices.
- When `QualitySettings.vSyncCount = 0` and `Application.targetFrameRate = -1`, content is rendered at a fixed 30 fps to conserve battery power, independent of the native refresh rate of the display. `QualitySettings.vSyncCount > 0` are ignored.
- Rendering is always limited by the maximum refresh rate of the display. Setting `vSyncCount = 0` and `targetFrameRate` to an arbitrarily high value will not exceed the display's native refresh rate, even if the rendering workload is sufficiently low.
- To render at the native refresh rate of the display, set `Application.targetFrameRate` to the value from the Resolution.refreshRateRatio field of the Screen.currentResolution property.
- If the specified rate doesn't evenly divide the current refresh rate of the display, then the value of `Application.targetFrameRate` is rounded down to the nearest number that does. For example, when running on a 60 Hz Android display, and `Application.targetFrameRate = 25`, content is rendered at 20 fps as 20 is the highest number below 25 that divides 60 evenly.

**iOS**

- Use `targetFrameRate` to control the frame rate of your application. This is useful for capping your application's frame rate to make sure your application displays smoothly and consistently under heavy rendering workloads. You can also reduce your application's frame rate to conserve battery life and avoid overheating on mobile devices.
- When `QualitySettings.vSyncCount = 0` and `Application.targetFrameRate = -1`, content is rendered at a fixed 30 fps to conserve battery power, independent of the native refresh rate of the display. `QualitySettings.vSyncCount > 0` are ignored.
- Rendering is always limited by the maximum refresh rate of the display. Setting `vSyncCount = 0` and `targetFrameRate` to an arbitrarily high value will not exceed the display's native refresh rate, even if the rendering workload is sufficiently low.
- To render at the native refresh rate of the display, set `Application.targetFrameRate` to the integer representation of the screen's refresh rate. This can be retrieved from the value of the `Screen.currentResolution.refreshRateRatio` property. For example, `Application.targetFrameRate = (int)Screen.currentResolution.refreshRateRatio.value;`.
- The native refresh rate of the display is controlled by the Apple ProMotion feature. When ProMotion is disabled in the project (default for new projects), the native refresh rate is 60 Hz. When ProMotion is enabled, the native refresh rate is 120 Hz on the iOS displays that support ProMotion, 60 Hz otherwise.
- If the specified rate doesn't evenly divide the current refresh rate of the display, then the value of `Application.targetFrameRate` is rounded down to the nearest number that does.

**XR platforms** 
 
XR platforms ignore both QualitySettings.vSyncCount and `Application.targetFrameRate`. Instead, the XR SDK controls the frame rate.

**Unity Editor**

In the Editor, `Application.targetFrameRate` affects only the Game view. It has no effect on other Editor windows.

Additional resources: QualitySettings.vSyncCount, Screen.currentResolution.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Limit framerate to cinematic 24fps.
        QualitySettings.vSyncCount = 0; // Set vSyncCount to 0 so that using .targetFrameRate is enabled.
        Application.targetFrameRate = 24;
    }
}
```
