<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerFlowEventType.ParallelNext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use for the parallel flow continuation point.

All parallel flow instances are equivalent and connected to the same Begin or Next events that happened previously. An example of a flow start point is job scheduling. For instance, IJobParallelForExtensions.Schedule generates an implicit Begin Profiler flow event and IJobParallelFor.Execute generates an implicit ParallelNext event.

```csharp
using System;
using System.Threading;
using Unity.Profiling;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;public class Example
{
    static readonly ProfilerMarker k_ScheduleParallelTasksMarker = new ProfilerMarker("Schedule Parallel Tasks");
    static readonly ProfilerMarker k_ParallelTaskMarker = new ProfilerMarker("Parallel Task");    static void EmitFlowEventAndChainThread(uint flowId)
    {
        // Mark the next k_ParallelTaskMarker as a beginning of the flow
        ProfilerUnsafeUtility.FlowEvent(flowId, ProfilerFlowEventType.ParallelNext);
        using (k_ParallelTaskMarker.Auto())
        {
            // Do work
        }
    }    static void ScheduleParallelTask()
    {
        using (k_ScheduleParallelTasksMarker.Auto())
        {
            var flowId = ProfilerUnsafeUtility.CreateFlow(ProfilerUnsafeUtility.CategoryScripts);
            // Mark the parent k_ScheduleParallelTasksMarker as a beginning of the flow
            ProfilerUnsafeUtility.FlowEvent(flowId, ProfilerFlowEventType.Begin);
            var thread = new Thread(() => EmitFlowEventAndChainThread(flowId));
            thread.Start();
        }
    }
}
```

Additional resources: ProfilerUnsafeUtility.FlowEvent.
