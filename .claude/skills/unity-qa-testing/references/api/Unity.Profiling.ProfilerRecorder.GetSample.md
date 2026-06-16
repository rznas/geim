<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.GetSample.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets sample data.

Use to obtain sample data.

```csharp
using Unity.Profiling;
using UnityEngine;public class FrameTimeScript : MonoBehaviour
{
    ProfilerRecorder frameTimeRecorder;    void OnEnable()
    {
        frameTimeRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Internal, "Main Thread", 30);
    }    void OnDisable()
    {
        frameTimeRecorder.Dispose();
    }    double CalculateAverageFromSampleValuesPerFrame(ProfilerRecorder r)
    {
        int count = r.Count;
        double acc = 0;
        for (var i = 0; i < count; ++i)
        {
            acc += r.GetSample(i).Value;
        }
        return count > 0 ? acc / count : 0;
    }    void OnGUI()
    {
        GUI.TextArea(new Rect(10, 30, 350, 20), $"Frame time: {CalculateAverageFromSampleValuesPerFrame(frameTimeRecorder) * 1e-6:0.00}ms");
    }
}
```
