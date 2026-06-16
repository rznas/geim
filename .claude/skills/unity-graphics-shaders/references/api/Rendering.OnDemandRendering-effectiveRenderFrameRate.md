<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.OnDemandRendering-effectiveRenderFrameRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current estimated rate of rendering in frames per second rounded to the nearest integer.

This is an estimate and may not be achieved depending upon the application.
 If QualitySettings.vSyncCount is greater than 0 it is calculated by:
 
 FPS = Resolution.refreshRate / QualitySettings.vSyncCount / OnDemandRendering.renderFrameInterval 
 
 If QualitySettings.vSyncCount is 0 and Application.targetFrameRate is also greater than 0:
 
 FPS = Application.targetFrameRate / OnDemandRendering.renderFrameInterval 
 
 Android, iOS and tvOS use 30 FPS as the default framerate when no other value has been specified. In that case 30 / OnDemandRendering.renderFrameInterval is returned. All other platforms return the value of Application.targetFrameRate.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using System.Collections;// This example shows how to use effectiveRenderFrameRate to ensure your application renders at a given frame rate regardless of
// settings that could be changed by the user. Also demonstrates use of setting renderFrameInterval from a coroutine.
public class Example : MonoBehaviour
{
    void Start()
    {
        const int myTargetFrameRate = 10;        // Start off assuming that Application.targetFrameRate is 60 and QualitySettings.vSyncCount is 0
        OnDemandRendering.renderFrameInterval = 6;        // Some applications may allow the user to modify the quality level. So we may not be able to rely on
        // the framerate always being a specific value. For this example we want the effective framerate to be 10.
        // If it is not then check the values and adjust the frame interval accordingly to achieve the framerate that we desire.
        if (OnDemandRendering.effectiveRenderFrameRate != 10)
        {
            if (QualitySettings.vSyncCount > 0)
            {
                OnDemandRendering.renderFrameInterval = (Screen.currentResolution.refreshRate / QualitySettings.vSyncCount / myTargetFrameRate);
            }
            else
            {
                OnDemandRendering.renderFrameInterval = (Application.targetFrameRate / myTargetFrameRate);
            }
        }        StartCoroutine(SlowRenderingFor5Seconds());
    }    IEnumerator SlowRenderingFor5Seconds()
    {
        // After 5 seconds go back to rendering every frame
        yield return new WaitForSeconds(5);
        OnDemandRendering.renderFrameInterval = 1;
    }    void Update()
    {
        // For 5 seconds this will report that the effective framerate is 10. Afterward it will log what the framerate is given the current
        // quality and target framerate settings.
        Debug.Log("FrameRate: " + OnDemandRendering.effectiveRenderFrameRate);
    }
}
```
