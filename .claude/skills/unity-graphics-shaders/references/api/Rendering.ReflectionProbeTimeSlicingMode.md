<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ReflectionProbeTimeSlicingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for distributing the update workload of a reflection probe, if ReflectionProbe.mode is set to ReflectionProbeMode.Realtime and ReflectionProbe.refreshMode is set to ReflectionProbeRefreshMode.EveryFrame.

Unity updates the cubemap of a reflection probe by rendering the entire scene onto each of its faces, then generates mipmaps of each face using specialized filtering for glossy reflection. This process is performance-intensive, but you can use `ReflectionProbeTimeSlicingMode` to adjust the impact on the framerate.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ReflectionProbeTimeSlicingModeExample : MonoBehaviour
{
    public ReflectionProbe reflectionProbe;    void Start()
    {
        if (reflectionProbe == null)
        {
            // Add a GameObject with a ReflectionProbe component
            GameObject probeGameObject = new GameObject("Realtime Reflection Probe");
            reflectionProbe = probeGameObject.AddComponent<ReflectionProbe>();			// Set the modes so that the probe is updated every frame.
            reflectionProbe.mode = ReflectionProbeMode.Realtime;
            reflectionProbe.refreshMode = ReflectionProbeRefreshMode.EveryFrame;            // Set the mode to do time-sliced updates
            reflectionProbe.timeSlicingMode = ReflectionProbeTimeSlicingMode.IndividualFaces;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| AllFacesAtOnce | Spreads the cubemap update over 9 frames, so that all faces are rendered in the first frame. Generates mipmaps over the subsequent 8 frames. |
| IndividualFaces | Spreads the cubemap update over 14 frames, so that each face is rendered per frame. Generates mipmaps over the subsequent 8 frames. This option significantly reduces the impact on the framerate, but may lead to inconsistent results, particularly during dynamic lighting changes. |
| NoTimeSlicing | Updates the entire cubemap in one frame. |
