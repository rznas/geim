<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.VerticalToHorizontalFieldOfView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| verticalFieldOfView | The vertical field of view value in degrees. |
| aspectRatio | The aspect ratio value used for the conversion. |

### Returns

**float** The horizontal field of view in degrees.

### Description

Converts the vertical field of view (FOV) to the horizontal FOV, based on the value of the aspect ratio parameter.

Additional resources: fieldOfView, aspect, HorizontalToVerticalFieldOfView, FieldOfViewToFocalLength, FocalLengthToFieldOfView.

```csharp
using UnityEngine;public class DisplayFov : MonoBehaviour
{
    public Camera target;    void OnGUI()
    {
        float verticalFOV = target.fieldOfView;
        float horizontalFOV = Camera.VerticalToHorizontalFieldOfView(verticalFOV, target.aspect);        GUILayout.Label($"Vertical FOV : {verticalFOV} degrees");
        GUILayout.Label($"Horizontal FOV : {horizontalFOV} degrees");
    }
}
```
