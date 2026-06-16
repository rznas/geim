<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-fieldOfView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The vertical field of view of the Camera, in degrees.

This is the vertical field of view; horizontal field of view depends on the viewport's aspect ratio. For for more information, see VerticalToHorizontalFieldOfView.

If Camera.orthographic is `true`, the Camera ignores `fieldOfView`.

Some VR SDKs have fixed field of view values that are used for VR cameras. When VR is enabled with those SDKs, this property will always return the value from the SDK. You will see a warning logged if you attempt to set the property and the value will be ignored.

If you make changes to Camera.projectionMatrix, the Camera ignores `fieldOfView`. This lasts until you call Camera.ResetProjectionMatrix.

In the Unity Editor, this corresponds to the **Clipping Planes: Near** property in the Camera component Inspector.

```csharp
// Attach this script to an empty GameObject.
// This script creates a Slider that allows you to manipulate the Camera's field of view. Place GameObjects in the Scene to show the full effect.using UnityEngine;public class CameraFieldOfViewExample : MonoBehaviour
{
    // This is the field of view that the Camera has
    float m_FieldOfView;    void Start()
    {
        // Start the Camera field of view at 60
        m_FieldOfView = 60.0f;
    }    void Update()
    {
        // Update the camera's field of view to be the variable returning from the Slider
        Camera.main.fieldOfView = m_FieldOfView;
    }    void OnGUI()
    {
        // Set up the maximum and minimum values the Slider can return
        float max = 150.0f;
        float min = 20.0f;        // This Slider changes the field of view of the Camera between the minimum and maximum values
        m_FieldOfView = GUI.HorizontalSlider(new Rect(20, 20, 100, 40), m_FieldOfView, min, max);
    }
}
```
