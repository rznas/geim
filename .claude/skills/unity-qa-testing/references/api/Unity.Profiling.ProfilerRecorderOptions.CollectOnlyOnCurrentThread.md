<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerRecorderOptions.CollectOnlyOnCurrentThread.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use to collect samples only on the thread ProfilerRecorder was initialized on.

```csharp
using System;
using Unity.Profiling;
using UnityEngine;public class CollectGCAllocCountExample
{
    static void PrintGCAllocCount(Action a)
    {
        using (var gcAllocRecorder = ProfilerRecorder.StartNew(ProfilerCategory.Internal, "GC.Alloc", 100, ProfilerRecorderOptions.CollectOnlyOnCurrentThread))
        {
            a.Invoke();            gcAllocRecorder.Stop();            Debug.Log("GC allocs count: " + gcAllocRecorder.Count);
        }
    }
}
```
