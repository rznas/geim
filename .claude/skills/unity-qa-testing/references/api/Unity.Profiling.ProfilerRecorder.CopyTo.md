<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.CopyTo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| dest | Pointer to the destination samples array. |
| destSize | Destination samples array size. |
| reset | Reset ProfilerRecorder. |

### Returns

**int** Returns the count of the copied elements.

### Description

Copies collected samples to the destination array.

```csharp
using Unity.Profiling;public class ExampleScript
{
    static double GetRecorderFrameAverage(ProfilerRecorder recorder)
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
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| outSamples | Destination list. |
| reset | Reset ProfilerRecorder. |

### Description

Copies all collected samples to the destination list.
