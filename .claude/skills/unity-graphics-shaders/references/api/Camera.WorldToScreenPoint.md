<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.WorldToScreenPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | A 3D point in world space. |
| eye | Optional argument that can be used to specify which eye transform to use. Default is Mono. |

### Description

Transforms `position` from world space into screen space.

Screen space is defined in pixels. The lower left pixel of the screen is (0,0). The upper right pixel of the screen is (screen width in pixels - 1, screen height in pixels - 1).

The z coordinate is the distance from the camera in world units.

If `position` is outside the Camera's viewing volume, Unity returns a screen position that's off-screen.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform target;
    Camera cam;    void Start()
    {
        cam = GetComponent<Camera>();
    }    void Update()
    {
        Vector3 screenPos = cam.WorldToScreenPoint(target.position);
        Debug.Log("target is " + screenPos.x + " pixels from the left");
    }
}
```
