<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScreenCapture.CaptureScreenshotIntoRenderTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderTexture | RenderTexture that will get filled with the screen content. |

### Description

Captures a screenshot of the game view into a RenderTexture object.

This variant of screen capture make it possible to read pixels asynchronously using AsyncGPUReadback, making the process consume less time on the main thread.

**Important**: To ensure reliable results, always wait until the frame rendering process is complete before calling this method. To guarantee this, you can call it from a coroutine that yields on WaitForEndOfFrame.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Rendering;public class ScreenCaptureIntoRenderTexture : MonoBehaviour
{
    private RenderTexture renderTexture;    IEnumerator Start()
    {
        yield return new WaitForEndOfFrame();        renderTexture = new RenderTexture(Screen.width, Screen.height, 0);
        ScreenCapture.CaptureScreenshotIntoRenderTexture(renderTexture);
        AsyncGPUReadback.Request(renderTexture, 0, TextureFormat.RGBA32, ReadbackCompleted);
    }    void ReadbackCompleted(AsyncGPUReadbackRequest request)
    {
        // Render texture no longer needed, it has been read back.
        DestroyImmediate(renderTexture);        using (var imageBytes = request.GetData<byte>())
        {
            // do something with the pixel data.
        }
    }
}
```

To capture each display when you use multiple displays, capture each at the end of the camera rendering. The following example demonstrates how to do this:

```csharp
using System.IO;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;
using UnityEngine.Rendering;
using System.Security.Cryptography;public class CaptureScreen : MonoBehaviour
{
    private Camera cameraToCapture;
    private RenderTexture renderTexture;    public void CaptureCamera(Camera camera)
    {
        cameraToCapture = camera;
        if (cameraToCapture != null)
        {
            if (cameraToCapture.targetDisplay >= Display.displays.Length)
            {
                Debug.LogWarning("Invalid targetDisplay index, make sure you have activated the targetDisplay (i.e.: Display.displays[" + cameraToCapture.targetDisplay + "].Activate()).");
            }
            else
            {
                Camera.onPostRender += OnPostRenderCallback;
            }
        }
        else
        {
            Debug.LogWarning("Unable to capture, cameraToCapture is null");
        }
    }    void OnPostRenderCallback(Camera cam)
    {
        if (cameraToCapture != null && (cam == cameraToCapture))
        {
            if (cameraToCapture.targetDisplay < Display.displays.Length)
            {
                List<DisplayInfo> displayLayout = new List<DisplayInfo>();
                Screen.GetDisplayLayout(displayLayout);
                renderTexture = new RenderTexture(
                    displayLayout[cameraToCapture.targetDisplay].width,
                    displayLayout[cameraToCapture.targetDisplay].height,
                    0);                ScreenCapture.CaptureScreenshotIntoRenderTexture(renderTexture);
                AsyncGPUReadback.Request(renderTexture, 0, TextureFormat.RGBA32, ReadbackCompleted);                Debug.Log("Capturing " + cameraToCapture.targetDisplay + " " +
                    displayLayout[cameraToCapture.targetDisplay].width + "x" +
                    displayLayout[cameraToCapture.targetDisplay].height);
            }            Camera.onPostRender -= OnPostRenderCallback;
        }
    }
    void ReadbackCompleted(AsyncGPUReadbackRequest request)
    {
        DestroyImmediate(renderTexture);
        using (var imageBytes = request.GetData<byte>())
        {
            byte[] bytes = ImageConversion.EncodeArrayToPNG(imageBytes.ToArray(),
                UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8A8_UNorm,
                (uint)request.width,
                (uint)request.height, 0);
            File.WriteAllBytes(Application.dataPath + "/../SavedScreen" + cameraToCapture.targetDisplay + ".png", bytes);
            Debug.Log("Capture done, saved to png");
        }
    }
}
```
