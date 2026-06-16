<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.ScreenPointToRay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pos | A 3D point, with the x and y coordinates containing a 2D screen space point in pixels. The lower left pixel of the screen is (0,0). The upper right pixel of the screen is (screen width in pixels - 1, screen height in pixels - 1). Unity ignores the z coordinate. |
| eye | Optional argument that can be used to specify which eye transform to use. Default is Mono. |

### Description

Returns a ray going from camera through a screen point.

Resulting ray is in world space, starting on the near plane of the camera and going through position's (x,y) pixel coordinates on the screen.

```csharp
//Attach this script to your Camera
//This draws a line in the Scene view going through a point 200 pixels from the lower-left corner of the screen
//To see this, enter Play Mode and switch to the Scene tab. Zoom into your Camera's position.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    Camera cam;
    Vector3 pos = new Vector3(200, 200, 0);
    void Start()
    {
        cam = GetComponent<Camera>();
    }    void Update()
    {
        Ray ray = cam.ScreenPointToRay(pos);
        Debug.DrawRay(ray.origin, ray.direction * 10, Color.yellow);
    }
}
```
