<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.OnDemandRendering-renderFrameInterval.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get or set the current frame rate interval. To restore rendering back to the value of Application.targetFrameRate or QualitySettings.vSyncCount set this to 0 or 1.

```csharp
using UnityEngine;
using UnityEngine.Rendering;// This example shows how to get and set the current frame rate interval and what you can do with that information.
public class Example : MonoBehaviour
{
    void Start()
    {
        QualitySettings.vSyncCount = 0;
        Application.targetFrameRate = 60;
        OnDemandRendering.renderFrameInterval = 6;
    }    void Update()
    {
        if (Input.GetMouseButton(0) || (Input.touchCount > 0))
        {
            // If the mouse button or a finger is down render at 60 FPS (every frame).
            OnDemandRendering.renderFrameInterval = 1;
        }
        else
        {
            // If there isn't any input then we can go back to 10 FPS (every 6 frames).
            OnDemandRendering.renderFrameInterval = 6;
        }        // We've decided to lower the frame rate by increasing the frame interval. Perhaps in a pause menu.
        // There may be some other systems that we don't need at that time.
        if (OnDemandRendering.renderFrameInterval > 1)
        {
            // Disable physics
            Physics.autoSimulation = false;            // Disable other systems or turn down audio volume for example.
        }
        else
        {
            // If we are back to the normal framerate turn physics back on.
            Physics.autoSimulation = true;
        }
    }
}
```
