<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.LastValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the last value collected by the ProfilerRecorder.

Use to get the profiler counter value or marker timing capured at the end of the last frame.

The immediate value that CurrentValue provides might be not the final value of a counter when frame ends. For example, rendering might happen after the logic finished computing the frame. Therefore, it is impossible to get the final value of draw calls until the frame is fully rendered. In such cases, you can use the LastValue property for quick access to the final metric value in the last frame. The equivalent call is `GetSample(Count - 1).Value`.

**Note:** The property requires that the sample storage is non-zero. If the capacity is 0, then this property returns 0.

```csharp
using Unity.Profiling;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    ProfilerRecorder mainThreadTimeRecorder;    static double GetRecorderFrameAverage(ProfilerRecorder recorder)
    {
        var samplesCount = recorder.Capacity;
        if (samplesCount == 0)
            return 0;        double r = 0;
        unsafe
        {
            var samples = stackalloc ProfilerRecorderSample[samplesCount];
            recorder.CopyTo(samples, samplesCount);
            for (var i = 0; i < samplesCount; ++i)
                r += samples[i].Value;
            r /= samplesCount;
        }        return r;
    }    void OnEnable()
    {
        mainThreadTimeRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Internal, "Main Thread", 15);
    }    void OnDisable()
    {
        mainThreadTimeRecorder.Dispose();
    }    void Update()
    {
        Debug.Log($"Frame Time: {GetRecorderFrameAverage(mainThreadTimeRecorder) * (1e-6f):F1} ms");
    }
}
```

Use *LastValue* to retrieve timings of a code tagged with ProfilerMarker.Auto.

```csharp
using UnityEngine;
using Unity.Profiling;public class Example
{
    static readonly ProfilerMarker k_MyMarker = new ProfilerMarker(ProfilerCategory.Scripts, "MyMarker");    public static void TimeSynchronousMethodWithMarkers()
    {
        using (var recorder = ProfilerRecorder.StartNew(ProfilerCategory.Scripts, "MyMarker"))
        {
            using (k_MyMarker.Auto())
            {
                // ...
            }            recorder.Stop();
            Debug.Log("MyMarker total time, ns: " + recorder.LastValue);
        }
    }
}
```

*LastValue* only becomes readable and non-zero after a frame change or after Stop method call.
