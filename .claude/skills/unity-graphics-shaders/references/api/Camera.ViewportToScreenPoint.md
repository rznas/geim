<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.ViewportToScreenPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms `position` from viewport space into screen space.

Viewport space is normalized and relative to the camera. The bottom-left of the camera is (0,0); the top-right is (1,1). The z position is in world units from the camera.

Screen space is defined in pixels. The bottom-left of the screen is (0,0); the right-top is (pixelWidth,pixelHeight). The z position is in world units from the camera.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Draw an image based on normalized view coordinates
    // rather than pixel positions.
    Texture2D bottomPanel;    void VPToScreenPtExample()
    {
        var origin = Camera.main.ViewportToScreenPoint(new Vector3(0.25f, 0.1f, 0));
        var extent = Camera.main.ViewportToScreenPoint(new Vector3(0.5f, 0.2f, 0));        GUI.DrawTexture(new Rect(origin.x, origin.y, extent.x, extent.y), bottomPanel);
    }
}
```
