<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.StartNew.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| category | Profiler category. |
| statName | Profiler marker or counter name. |
| capacity | Maximum amount of samples to be collect. Must be greater than 0. |
| options | ProfilerRecorder options. |

### Returns

**ProfilerRecorder** Returns new enabled recorder instance.

### Description

Initialize a new instance of ProfilerRecorder and start data collection.

For a list of built-in Profiler markers available, see the User Manual documentation on Common Profiler markers.

**Note:** *capacity* paramether must be greater than 0, otherwise StartNew throws an exception.

```csharp
using Unity.Profiling;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    ProfilerRecorder systemMemoryRecorder;
    ProfilerRecorder gcMemoryRecorder;
    ProfilerRecorder mainThreadTimeRecorder;    void OnEnable()
    {
        systemMemoryRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Memory, "System Used Memory");
        gcMemoryRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Memory, "GC Reserved Memory");
        mainThreadTimeRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Internal, "Main Thread", 15);
    }    void OnDisable()
    {
        systemMemoryRecorder.Dispose();
        gcMemoryRecorder.Dispose();
        mainThreadTimeRecorder.Dispose();
    }
}
```

Additional resources: ctor.

### Parameters

| Parameter | Description |
| --- | --- |
| capacity | Maximum amount of samples to be collected. Must be greater than 0. |
| options | Profiler recorder options. |
| marker | Profiler marker instance. |

### Returns

**ProfilerRecorder** Returns new enabled recorder instance.

### Description

Initialize a new instance of ProfilerRecorder for ProfilerMarker and start data collection.

Additional resources:: ProfilerMarker.
