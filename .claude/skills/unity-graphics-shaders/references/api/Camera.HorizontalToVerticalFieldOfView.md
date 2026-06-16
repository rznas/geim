<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.HorizontalToVerticalFieldOfView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| horizontalFieldOfView | The horizontal field of view value in degrees. |
| aspectRatio | The aspect ratio value used for the conversion. |

### Returns

**float** The vertical field of view in degrees.

### Description

Converts the horizontal field of view (FOV) to the vertical FOV, based on the value of the aspect ratio parameter.

Additional resources: fieldOfView, aspect, VerticalToHorizontalFieldOfView, FieldOfViewToFocalLength, FocalLengthToFieldOfView.

```csharp
using UnityEngine;public class HorizontalFieldOfViewControl : MonoBehaviour
{
    public float horizontalFieldOfView = 60f;
    public Camera targetCamera;    void Update()
    {
        targetCamera.fieldOfView = Camera.HorizontalToVerticalFieldOfView(horizontalFieldOfView, targetCamera.aspect);
    }
}
```
