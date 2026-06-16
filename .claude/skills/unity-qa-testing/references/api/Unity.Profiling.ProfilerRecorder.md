<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Records the Profiler metric data that a Profiler marker or counter produces.

Use ProfilerRecorder to access performance metrics that the Profiler exposes. You can use it to read Profiler counter data such as memory or render statistics, and Profiler marker timing data in a uniform way.

You can use this API in Editor and Player builds, including Release Players. Use ProfilerRecorderHandle.GetAvailable to get the full list of supported metrics. For a list of built-in Profiler markers and counters available, refer to Profiler markers reference and Profiler counters reference.

The following example demonstrates how you can use ProfilerRecorder to get memory and timing statistics.

```csharp
using System.Collections.Generic;
using System.Text;
using Unity.Profiling;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    string statsText;
    ProfilerRecorder systemMemoryRecorder;
    ProfilerRecorder gcMemoryRecorder;
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
        systemMemoryRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Memory, "System Used Memory");
        gcMemoryRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Memory, "GC Reserved Memory");
        mainThreadTimeRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Internal, "Main Thread", 15);
    }    void OnDisable()
    {
        systemMemoryRecorder.Dispose();
        gcMemoryRecorder.Dispose();
        mainThreadTimeRecorder.Dispose();
    }    void Update()
    {
        var sb = new StringBuilder(500);
        sb.AppendLine($"Frame Time: {GetRecorderFrameAverage(mainThreadTimeRecorder) * (1e-6f):F1} ms");
        sb.AppendLine($"GC Memory: {gcMemoryRecorder.LastValue / (1024 * 1024)} MB");
        sb.AppendLine($"System Memory: {systemMemoryRecorder.LastValue / (1024 * 1024)} MB");
        statsText = sb.ToString();
    }    void OnGUI()
    {
        GUI.TextArea(new Rect(10, 30, 250, 50), statsText);
    }
}
```

**Note:** 
 ProfilerRecorder allocates unmanaged resources and implements IDisposable interface. Use Dispose to free resources when you no longer need to record statistics.

ProfilerRecorder gives you access to Unity metrics in two modes: immediate access to a value of a counter, and the counter value when the frame ends. Additional resources: CurrentValue, LastValue, GetSample, ProfilerRecorderHandle.GetAvailable.

### Properties

| Property | Description |
| --- | --- |
| Capacity | Maximum amount of samples ProfilerRecorder can capture. |
| Count | Collected samples count. |
| CurrentValue | Gets current value of the Profiler metric. |
| CurrentValueAsDouble | Gets current value of the Profiler metric as double value. |
| DataType | Value data type of the Profiler metric. |
| IsRunning | Indicates if ProfilerRecorder is attached to the Profiler metric. |
| LastValue | Gets the last value collected by the ProfilerRecorder. |
| LastValueAsDouble | Gets the last value collected by the ProfilerRecorder as double. |
| UnitType | Unit type. |
| Valid | Indicates whether ProfilerRecorder is associated with a valid Profiler marker or counter. |
| WrappedAround | Indicates if ProfilerRecorder capacity has been exceeded. |

### Constructors

| Constructor | Description |
| --- | --- |
| ProfilerRecorder | Constructs ProfilerRecorder instance with a Profiler metric name and category. |

### Public Methods

| Method | Description |
| --- | --- |
| CopyTo | Copies collected samples to the destination array. |
| Dispose | Releases unmanaged instance of the ProfilerRecorder. |
| GetSample | Gets sample data. |
| Reset | Stops data collection and clears collected samples. |
| Start | Start data collection. |
| Stop | Stops data collection. |
| ToArray | Use to convert collected samples to an array. |

### Static Methods

| Method | Description |
| --- | --- |
| StartNew | Initialize a new instance of ProfilerRecorder and start data collection. |
