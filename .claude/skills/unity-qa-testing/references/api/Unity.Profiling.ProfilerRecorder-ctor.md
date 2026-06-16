<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| categoryName | Profiler category name. |
| statName | Profiler marker or counter name. |
| capacity | Maximum amount of samples to be collected. |
| options | Profiler recorder options. |
| category | Profiler category identifier. |

### Description

Constructs ProfilerRecorder instance with a Profiler metric name and category.

Use to initialize ProfilerRecorder and associate it with a specific Profiler metric.

By default, ProfilerRecorder does not start collecting data immediately. Use ProfilerRecorderOptions.StartImmediately to enable collection together with ProfilerRecorder construction. Alternatively, use Start method after construction.

If the CurrentValue is the only data you are interested in, you don't need to start ProfilerRecorder or allocate sample storage. In this case, use 0 as a `capacity` parameter when creating ProfilerRecorder.

Using a negative number as a `capacity` parameter throws `ArgumentException`.

For a list of built-in Profiler markers and counters available, refer to Profiler markers reference and Profiler counters reference.

**Note:**
 ProfilerRecorder allocates memory and must be disposed when it is no longer needed.

```csharp
using Unity.Profiling;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    ProfilerRecorder systemMemoryRecorder;
    ProfilerRecorder gcMemoryRecorder;
    ProfilerRecorder mainThreadTimeRecorder;    void OnEnable()
    {
        systemMemoryRecorder = new ProfilerRecorder(ProfilerCategory.Memory, "System Used Memory", 1, ProfilerRecorderOptions.Default | ProfilerRecorderOptions.StartImmediately);
        gcMemoryRecorder = new ProfilerRecorder(ProfilerCategory.Memory, "GC Reserved Memory", 1, ProfilerRecorderOptions.Default | ProfilerRecorderOptions.StartImmediately);
        mainThreadTimeRecorder = new ProfilerRecorder(ProfilerCategory.Internal, "Main Thread", 15);
        mainThreadTimeRecorder.Start();
    }    void OnDisable()
    {
        systemMemoryRecorder.Dispose();
        gcMemoryRecorder.Dispose();
        mainThreadTimeRecorder.Dispose();
    }
}
```

Additional resources: StartNew.

### Parameters

| Parameter | Description |
| --- | --- |
| statName | Profiler marker or counter name. |
| capacity | Maximum amount of samples to be collected. |
| options | Profiler recorder options. |

### Description

Constructs ProfilerRecorder instance with a Profiler metric name.

Use to initialize ProfilerRecorder with a metric name only. Unity searches for the metric name across all categories, and as such, initialization is slower than if you specify a category.

### Parameters

| Parameter | Description |
| --- | --- |
| category | Profiler category identifier. |
| statName | Profiler marker or counter name pointer. |
| statNameLen | Profiler marker or counter name length. |
| capacity | Maximum amount of samples to be collected. |
| options | Profiler recorder options. |
| marker | Profiler marker instance. |
| statHandle | Profiler recorder handle. |

### Description

Constructs ProfilerRecorder instance with a Profiler metric name pointer or other unsafe handles.
