<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.CurrentValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets current value of the Profiler metric.

Use to obtain immediate profiler counter value or marker timing. If the current value is the only data you are interested in, there is no need to start ProfilerRecorder or allocate sample storage. In this case use 0 as a capacity parameter when creating ProfilerRecorder.

```csharp
using UnityEngine;
using Unity.Profiling;public class Example
{
    public static void LogCurrentSystemMemoryUsage()
    {
        var systemMemoryRecorder = new ProfilerRecorder(ProfilerCategory.Memory, "System Used Memory", 0);
        Debug.Log("System Used Memory (bytes): " + systemMemoryRecorder.CurrentValue);
    }
}
```

Use *CurrentValue* to retrieve timings of a code tagged with ProfilerMarker.Auto.

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
            }            Debug.Log("MyMarker total time, ns:  " + recorder.CurrentValue);
        }
    }
}
```

**Note:** 
 Stop resets *CurrentValue* to zero.
