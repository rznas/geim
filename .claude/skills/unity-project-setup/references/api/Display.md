<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Display.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides access to a display or screen for rendering operations.

Unity supports multi-display rendering on the following platforms:

- Desktop platforms (Windows, macOS, and Linux)
- Android (OpenGL ES and Vulkan)
- iOS
- Embedded Linux
- QNX

Some features in the `Display` class only work on some of the supported platforms. For more information about platform compatibility, refer to the individual properties and methods.

Use the `Display` class to operate on the displays and Camera.targetDisplay to set up cameras for rendering to individual displays.

Additional resources: Camera.targetDisplay, Canvas.targetDisplay.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Camera extCam;
    Camera cam;    void Start()
    {
        // GUI is rendered with last camera.
        // As we want it to end up in the main screen, make sure main camera is the last one drawn.
        extCam.depth = cam.depth - 1;        cam.SetTargetBuffers(Display.main.colorBuffer, Display.main.depthBuffer);
        extCam.enabled = false;
    }    void Update()
    {
        if (Display.displays.Length > 1 && !extCam.enabled)
        {
            Display.displays[1].SetRenderingResolution(256, 256);
            extCam.SetTargetBuffers(Display.displays[1].colorBuffer, Display.displays[1].depthBuffer);
        }
        extCam.enabled = Display.displays.Length > 1;
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| activeEditorGameViewTarget | Get the Editors active GameView display target. |
| displays | The list of connected displays. |
| main | Main Display. |

### Properties

| Property | Description |
| --- | --- |
| active | Gets the state of the display and returns true if the display is active and false if otherwise. |
| colorBuffer | Color RenderBuffer. |
| depthBuffer | Depth RenderBuffer. |
| renderingHeight | Vertical resolution that the display is rendering at. |
| renderingWidth | Horizontal resolution that the display is rendering at in the viewport. |
| requiresBlitToBackbuffer | True when the back buffer requires an intermediate texture to render. |
| requiresSrgbBlitToBackbuffer | True when doing a blit to the back buffer requires manual color space conversion. |
| systemHeight | Vertical native display resolution. |
| systemWidth | Horizontal native display resolution. |

### Public Methods

| Method | Description |
| --- | --- |
| Activate | Activates an external display. For example, a secondary monitor connected to the system. |
| SetParams | Windows platforms only. Sets rendering size and position on screen. |
| SetRenderingResolution | Sets rendering resolution for the display. |

### Static Methods

| Method | Description |
| --- | --- |
| RelativeMouseAt | Query relative mouse coordinates. |
