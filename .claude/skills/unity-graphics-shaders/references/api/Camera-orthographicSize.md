<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-orthographicSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Camera's half-size when in orthographic mode.

The `orthographicSize` property defines the viewing volume of an orthographic Camera. To edit `orthographicSize`, you must set the Camera projection to orthographic.

The height of the viewing volume is (`orthographicSize` * 2). Unity calculates the width of the viewing volume using `orthographicSize` and the camera's aspect.

Unity ignores `orthographicSize` if the camera is not orthographic. Use fieldOfView instead.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Assign this Camera in the Inspector
    public Camera m_OrthographicCamera;
    // These are the positions and dimensions of the Camera view in the Game view
    float m_ViewPositionX, m_ViewPositionY, m_ViewWidth, m_ViewHeight;    void Start()
    {
        // This sets the Camera view rectangle to be in the bottom corner of the screen
        m_ViewPositionX = 0;
        m_ViewPositionY = 0;        // This sets the Camera view rectangle to be smaller so you can compare the orthographic view of this Camera with the perspective view of the Main Camera
        m_ViewWidth = 0.4f;
        m_ViewHeight = 0.4f;        // If a Camera has been assigned in the inspector, enable orthographic mode and change the size
        if (m_OrthographicCamera)
        {
            // This enables the orthographic mode
            m_OrthographicCamera.orthographic = true;            // Set the size of the viewing volume you'd like the orthographic Camera to pick up
            m_OrthographicCamera.orthographicSize = 5.0f;            // Set the orthographic Camera Viewport size and position
            m_OrthographicCamera.rect = new Rect(m_ViewPositionX, m_ViewPositionY, m_ViewWidth, m_ViewHeight);
        }
    }
}
```
