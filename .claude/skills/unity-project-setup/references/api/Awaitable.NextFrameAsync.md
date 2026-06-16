<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Awaitable.NextFrameAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cancellationToken | Optional cancellation token. |

### Description

Resumes execution on the next frame.

**Note:** This method can only be called from the main thread and always completes on main thread.

```csharp
async Awaitable SampleSchedulingJobsForNextFrame()
{
    // Wait until end of frame to avoid competing over resources with other Unity subsystems
    await Awaitable.EndOfFrameAsync();
    var jobHandle = ScheduleSomethingWithJobSystem();
    // Let the job execute while the next frame starts
    await Awaitable.NextFrameAsync();
    jobHandle.Complete();
    // Use results of computation
}JobHandle ScheduleSomethingWithJobSystem()
{
    ...
}
```
