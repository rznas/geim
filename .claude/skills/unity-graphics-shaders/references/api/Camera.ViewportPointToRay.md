<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.ViewportPointToRay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eye | Optional argument that can be used to specify which eye transform to use. Default is Mono. |

### Description

Returns a ray going from camera through a viewport point.

Resulting ray is in world space, starting on the near plane of the camera and going through position's (x,y) coordinates on the viewport (position.z is ignored).

Viewport coordinates are normalized and relative to the camera. The bottom-left of the camera is (0,0); the top-right is (1,1).

```csharp
// Prints the name of the object camera is directly looking at
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    Camera cam;    void Start()
    {
        cam = GetComponent<Camera>();
    }    void Update()
    {
        Ray ray = cam.ViewportPointToRay(new Vector3(0.5F, 0.5F, 0));
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit))
            print("I'm looking at " + hit.transform.name);
        else
            print("I'm looking at nothing!");
    }
}
```
