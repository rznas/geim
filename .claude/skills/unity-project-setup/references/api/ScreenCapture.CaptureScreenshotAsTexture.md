<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScreenCapture.CaptureScreenshotAsTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| superSize | Factor by which to increase resolution. |
| stereoCaptureMode | Specifies the eye texture to capture when stereo rendering is enabled. |

### Description

Captures a screenshot of the game view into a Texture2D object.

When `superSize` parameter is larger than 1, a larger resolution screenshot will be produced. For example, passing 4 will make the screenshot be 4x4 larger than it normally would. This is useful to produce screenshots for printing.

**Important**: To ensure reliable results, always wait until the frame rendering process is complete before calling this method. To guarantee this, you can call it from a coroutine that yields on WaitForEndOfFrame.

```csharp
using UnityEngine;
using System.Collections;public class ScreenShotter : MonoBehaviour
{
    IEnumerator RecordFrame()
    {
        yield return new WaitForEndOfFrame();
        var texture = ScreenCapture.CaptureScreenshotAsTexture();
        // do something with texture        // cleanup
        Object.Destroy(texture);
    }    public void LateUpdate()
    {
        StartCoroutine(RecordFrame());
    }
}
```
