<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.ScreenToViewportPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Transforms `position` from screen space into viewport space.

Screen space is defined in pixels. The bottom-left of the screen is (0,0); the right-top is (pixelWidth,pixelHeight). The z position is in world units from the camera.

Viewport space is normalized and relative to the camera. The bottom-left of the camera is (0,0); the top-right is (1,1). The z position is in world units from the camera.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Update()
    {
        transform.position = Camera.main.ScreenToViewportPoint(Input.mousePosition);
    }
}
```
