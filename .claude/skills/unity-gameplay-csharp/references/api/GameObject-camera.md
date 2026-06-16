<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-camera.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Camera attached to this GameObject (Read Only). (Null if there is none attached).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Use GetComponent to access the camera
        Camera cam = gameObject.GetComponent<Camera>();
        cam.fieldOfView = 45;
    }
}
```
