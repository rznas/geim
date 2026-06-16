<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScreenCapture.CaptureScreenshot.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| filename | The path to save the screenshot file to. |
| superSize | The factor to increase resolution with. |
| stereoCaptureMode | The eye texture to capture when stereo rendering is enabled. |

### Description

Captures a screenshot and saves it as a .png file to a specified path.

Captures the current rendered screen output and saves it as an image file. This is a screenshot of the final frame presented to the user, not a capture from a specific Camera. If multiple cameras render to the screen, their combined result is captured. In split-screen or local multiplayer setups, the entire composed screen is saved.

If the screenshot exists already, `ScreenCapture.CaptureScreenshot` overwrites it with a new screenshot.

Add `.png` to the end of `filename` to save the screenshot as a .png file.

 **Mobile platforms (such as Android and iOS)**: `filename` is appended to the persistent data path. For more information, refer to Application.persistentDataPath.

**Windows Editor, macOS Editor, and other non-mobile platforms**: `filename` is interpreted relative to the project directory (the folder containing the `Assets` folder), not relative to Application.persistentDataPath. Therefore, a relative path such as `SomeLevel.png` is saved in the project folder, not in `%userprofile%\AppData\LocalLow\...` on Windows.

To save screenshots to the persistent data path (for example, `%userprofile%\AppData\LocalLow\<companyname>\<productname>` on Windows Editor), pass a full path: `System.IO.Path.Combine(Application.persistentDataPath, "screenshot.png")`.

When the `superSize` parameter is more than 1, a larger resolution screenshot is produced. For example, if you pass 4, you create a screenshot 4x4 larger than normal. This is useful to produce screenshots you want to print.

```csharp
using UnityEngine;// Generate a screenshot and save it to disk with the name SomeLevel.png.public class ExampleScript : MonoBehaviour
{
    void OnMouseDown()
    {
        ScreenCapture.CaptureScreenshot("SomeLevel.png");
    }
}
```

The CaptureScreenshot returns immediately on Android. The screen capture continues in the background. The resulting screen shot is saved in the file system after a few seconds.
