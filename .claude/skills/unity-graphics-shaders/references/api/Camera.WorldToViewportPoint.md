<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.WorldToViewportPoint.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | A 3D point in world space. |
| eye | Optional argument that can be used to specify which eye transform to use. Default is Mono. |

### Description

Transforms `position` from world space into viewport space.

Viewport space is normalized and relative to the camera. The bottom-left of the camera is (0,0); the top-right is (1,1). The z position is in world units from the camera.

```csharp
// Finds out whether target is on the left or right side of the screen
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform target;
    Camera cam;    void Start()
    {
        cam = GetComponent<Camera>();
    }    void Update()
    {
        Vector3 viewPos = cam.WorldToViewportPoint(target.position);
        if (viewPos.x > 0.5F)
            print("target is on the right side!");
        else
            print("target is on the left side!");
    }
}
```
