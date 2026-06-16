<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.ScreenToWorldPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | A 2D screen space point in pixels, plus a z coordinate for the distance from the camera in world units. The lower left pixel of the screen is (0,0). The upper right pixel of the screen is (screen width in pixels - 1, screen height in pixels - 1). |
| eye | By default, Camera.MonoOrStereoscopicEye.Mono. Can be set to Camera.MonoOrStereoscopicEye.Left or Camera.MonoOrStereoscopicEye.Right for use in stereoscopic rendering (e.g., for VR). |

### Returns

**Vector3** The world space point created by converting the screen space point at the provided distance z from the camera plane.

### Description

Transforms a point from screen space into world space, where world space is defined as the coordinate system at the very top of your game's hierarchy.

World space coordinates can still be calculated even when provided as an off-screen coordinate, for example for instantiating an off-screen object near a specific corner of the screen.

To make sure the world space point is part of the camera's view volume, the z coordinate you provide must be between the camera's `nearClipPlane` and `farClipPlane`.

```csharp
// Convert the 2D position of the mouse into a
// 3D position.  Display these on the game window.using UnityEngine;public class ExampleClass : MonoBehaviour
{
    private Camera cam;    void Start()
    {
        cam = Camera.main;
    }    void OnGUI()
    {
        Vector3 point = new Vector3();
        Event   currentEvent = Event.current;
        Vector2 mousePos = new Vector2();        // Get the mouse position from Event.
        // Note that the y position from Event is inverted.
        mousePos.x = currentEvent.mousePosition.x;
        mousePos.y = cam.pixelHeight - currentEvent.mousePosition.y;        point = cam.ScreenToWorldPoint(new Vector3(mousePos.x, mousePos.y, cam.nearClipPlane));        GUILayout.BeginArea(new Rect(20, 20, 250, 120));
        GUILayout.Label("Screen pixels: " + cam.pixelWidth + ":" + cam.pixelHeight);
        GUILayout.Label("Mouse position: " + mousePos);
        GUILayout.Label("World position: " + point.ToString("F3"));
        GUILayout.EndArea();
    }
}
```
