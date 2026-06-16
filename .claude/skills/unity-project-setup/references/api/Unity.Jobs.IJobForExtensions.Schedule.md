<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.IJobForExtensions.Schedule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| jobData | The job and data to schedule. |
| arrayLength | This job's Execute method will be called this many times, with its index argument ranging from 0 to (arrayLength - 1). Typically, this corresponds to the length of an array or array-like container passed in the job struct, but this is not necessarily the case. |
| dependency | The JobHandle of the job's dependency. You can use dependencies to make sure that a job executes on worker threads after the dependency has completed execution and two jobs that read or write to same data don't run in parallel. |

### Returns

**JobHandle** The JobHandle of the scheduled job. You can use the `JobHandle` as a dependency for a later job or to make sure that the job completes on the main thread.

### Description

Schedules the job for execution on a worker thread.

For large job structs, use IJobForExtensions.ScheduleByRef to avoid any large pass-by-values.

This variant processes all loop elements in a single worker thread. To distribute the work across multiple worker threads, use IJobForExtensions.ScheduleParallelByRef.

Additional resources: IJobFor.
