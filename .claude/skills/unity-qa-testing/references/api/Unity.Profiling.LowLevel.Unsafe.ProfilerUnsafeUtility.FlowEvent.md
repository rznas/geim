<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.FlowEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| flowId | Profiler flow identifier. |
| flowEventType | Flow event type. |

### Description

Add flow event to a Profiler sample.

Use Profiler flow events to highlight the dependencies between task execution on different threads.

Flow event works in conjunction with ProfilerMarker.

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

You must use `FlowEvent` together with a ProfilerMarker.

To mark the sample as a beginning or end of a flow, use `FlowEvent` with ProfilerFlowEventType.Begin and ProfilerFlowEventType.End events within a scope that is instrumented with ProfilerMarker.Begin and ProfilerMarker.End, or within the `using` scope of ProfilerMarker.Auto.


To mark the sample as a flow continuation point, use `FlowEvent` with ProfilerFlowEventType.Next and ProfilerFlowEventType.ParallelNext before a call to ProfilerMarker.Begin or ProfilerMarker.Auto.

**Note:** Unity Job System automatically marks up job scheduling, execution and wait points.

Additional resources: CreateFlow, CPU Usage Profiler module.
