<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerFlowEventType.Begin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use for the flow start point.

The *Begin* flow event type marks up the profiler sample as a flow start point. The new flow identifier is generated for the *Begin* event. Use it to track all profiler samples which belong to the same flow. Next denotes the next point of the flow and End denotes the flow termination. Flow identifier starts from 1 and is incremented by 1 for each new *Begin*.

An example of a flow start point is job scheduling. For instance, IJobExtensions.Schedule generates an implicit Begin Profiler flow event and IJob.Execute generates an implicit Next event.

```csharp
using System;
using System.Threading;
using Unity.Profiling;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;public class Example
{
    static readonly ProfilerMarker k_ScheduleTasksMarker = new ProfilerMarker("Schedule Task");
    static readonly ProfilerMarker k_TaskMarker = new ProfilerMarker("Task");    static void EmitFlowEventAndChainThread(uint flowId)
    {
        // Mark the next k_TaskMarker as a beginning of the flow
        ProfilerUnsafeUtility.FlowEvent(flowId, ProfilerFlowEventType.Next);
        using (k_TaskMarker.Auto())
        {
            // Do work
        }
    }    static void ScheduleTask()
    {
        using (k_ScheduleTasksMarker.Auto())
        {
            var flowId = ProfilerUnsafeUtility.CreateFlow(ProfilerUnsafeUtility.CategoryScripts);
            // Mark the parent k_ScheduleTasksMarker as a beginning of the flow
            ProfilerUnsafeUtility.FlowEvent(flowId, ProfilerFlowEventType.Begin);
            var thread = new Thread(() => EmitFlowEventAndChainThread(flowId));
            thread.Start();
        }
    }
}
```

Additional resources: ProfilerUnsafeUtility.FlowEvent.
