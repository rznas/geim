<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorder.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Releases unmanaged instance of the ProfilerRecorder.

When you no longer need to use the ProfilerRecorder always use this method to safely release the instance of it.

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
