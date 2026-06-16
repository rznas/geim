<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorderOptions.SumAllSamplesInFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use to sum all samples within a frame and collect those as one sample per frame.

```csharp
using System;
using Unity.Profiling;
using UnityEngine;public class CollectGCAllocCountExample2
{
    static void PrintGCAllocCount(Action a)
    {
        using (var gcAllocRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Internal, "GC.Alloc", 1, ProfilerRecorderOptions.SumAllSamplesInFrame | ProfilerRecorderOptions.CollectOnlyOnCurrentThread))
        {
            a.Invoke();            gcAllocRecorder.Stop();            var count = gcAllocRecorder.Count == 0 ? 0 : gcAllocRecorder.GetSample(0).Count;
            Debug.Log("GC allocs count: " + count);
        }
    }
}
```

Additional resources: ProfilerRecorderSample.
