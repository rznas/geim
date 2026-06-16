<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.Start.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Start data collection.

Newly constructed recorder is not collecting samples unless ProfilerRecorderOptions.StartImmediately option is specified. Use Start to attach ProfilerRecorder to the Profiler metric and start data collection.

**Note:** Starting recorder which has 0 Capacity throws InvalidOperationException.

```csharp
using Unity.Profiling;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    ProfilerRecorder mainThreadTimeRecorder;    void OnEnable()
    {
        mainThreadTimeRecorder = new ProfilerRecorder(ProfilerCategory.Internal, "Main Thread", 15);
        mainThreadTimeRecorder.Start();
    }    void OnDisable()
    {
        mainThreadTimeRecorder.Dispose();
    }
}
```

When you don't need data to be collected use Stop to detach recorder from counter or marker. And Dispose to free unmanaged resources.
