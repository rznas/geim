<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.CopyFrom.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | Copy camera settings to the other camera. |

### Description

Makes this camera's settings match other camera.

This will copy all camera's variables (field of view, clear flags, culling mask, ...) from the other camera. It will also set this camera's transform to match the other camera, as well as this camera's layer to match the layer of the other camera.

This can be useful if you want one camera to match the other camera's setup, when doing custom rendering effects. For example when using RenderWithShader.

```csharp
// Two cameras.  One based on the Main Camera and the other on a new camera that takes over.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Camera cam;    void Start()
    {
        // Set the current camera's settings from the main Scene camera
        cam.CopyFrom(Camera.main);
    }
}
```
