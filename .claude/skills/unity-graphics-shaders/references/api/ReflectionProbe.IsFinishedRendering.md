<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ReflectionProbe.IsFinishedRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| renderId | An integer representing the RenderID as returned by the RenderProbe method. |

### Returns

**bool** True if the render has finished, false otherwise.

 Additional resources: timeSlicingMode

### Description

Checks if a probe has finished a time-sliced render.

```csharp
using UnityEngine;
using System.Collections;
public class UpdateProbeEvery2Seconds : MonoBehaviour
{
    private int RenderId = -1;
    private ReflectionProbe TheProbe;
    public RenderTexture TargetTexture;    IEnumerator Start()
    {
        TheProbe = GetComponent<ReflectionProbe>();        // set the probe to render in time-slicing mode and make sure all faces of the cubemap render the same frame.
        TheProbe.timeSlicingMode = UnityEngine.Rendering.ReflectionProbeTimeSlicingMode.AllFacesAtOnce;
        while (true)
        {
            yield return new WaitForSeconds(2.0f);            // render the probe over several frames and blit into TargetTexture once finished.
            RenderId = TheProbe.RenderProbe(TargetTexture);
        }
    }    void Update()
    {
        if (TheProbe.IsFinishedRendering(RenderId))
        {
            // Probe has finished rendering, do something with the render texture
        }
    }
}
```
