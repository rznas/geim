<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-depth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Camera's depth in the camera rendering order.

Cameras with lower depth are rendered before cameras with higher depth.

Use this to control the order in which cameras are drawn if you have multiple cameras and some of them don't cover the full screen.

Additional resources: camera component, Camera.rect.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    Camera cam;    void Start()
    {
        // Set this camera to render after the main camera
        cam.depth = Camera.main.depth + 1;
    }
}
```
