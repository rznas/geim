<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerFlowEventType.End.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use for the flow end point.

Marks the ProfilerMarker scope that the ProfilerFlowEventType.End is enclosed in as the final flow point.

```csharp
using System;
using System.Threading;
using Unity.Profiling;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;public class Example
{
    public const int k_NumberOfTasks = 4;    static readonly ProfilerMarker k_ScheduleParallelTasksMarker = new ProfilerMarker("Schedule Parallel Tasks");
    static readonly ProfilerMarker k_ParallelTaskMarker = new ProfilerMarker("Parallel Task");
    static readonly ProfilerMarker k_TaskSyncMarker = new ProfilerMarker("Sync Task");    static void EmitFlowEventAndChainThread(uint flowId)
    {
        // Mark the next k_ParallelTaskMarker as a beginning of the flow
        ProfilerUnsafeUtility.FlowEvent(flowId, ProfilerFlowEventType.ParallelNext);
        using (k_ParallelTaskMarker.Auto())
        {
            // Do work
        }
    }    static void ScheduleParallelTask()
    {
        uint flowId;
        var threads = new Thread[k_NumberOfTasks];
        using (k_ScheduleParallelTasksMarker.Auto())
        {
            flowId = ProfilerUnsafeUtility.CreateFlow(ProfilerUnsafeUtility.CategoryScripts);
            // Mark the parent k_ScheduleParallelTasksMarker as a beginning of the flow
            ProfilerUnsafeUtility.FlowEvent(flowId, ProfilerFlowEventType.Begin);
            for (var i = 0; i < k_NumberOfTasks; ++i)
            {
                var thread = new Thread(() => EmitFlowEventAndChainThread(flowId));
                thread.Start();
                threads[i] = thread;
            }
        }        using (k_TaskSyncMarker.Auto())
        {
            // Mark the parent k_TaskSyncMarker as a beginning of the flow
            ProfilerUnsafeUtility.FlowEvent(flowId, ProfilerFlowEventType.End);
            for (var i = 0; i < k_NumberOfTasks; ++i)
                threads[i].Join();
        }
    }
}
```

Additional resources: ProfilerUnsafeUtility.FlowEvent.
