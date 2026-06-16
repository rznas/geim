<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.IJobParallelForExtensions.ScheduleByRef.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| jobData | The job and data to schedule. |
| arrayLength | This job's Execute method will be called this many times, with its index argument ranging from 0 to (arrayLength - 1). Typically, this corresponds to the length of an array or array-like container passed in the job struct, but this is not necessarily the case. |
| innerloopBatchCount | The number of iterations which workstealing is performed over. For example, a value of 32 means the job queue steals 32 iterations and then performs them in an efficient inner loop. |
| dependsOn | The JobHandle of the job's dependency. You can use dependencies to make sure that a job executes on worker threads after the dependency has completed execution and two jobs that read or write to same data don't run in parallel. |

### Returns

**JobHandle** The JobHandle of the scheduled job. You can use the `JobHandle` as a dependency for a later job or to make sure that the job completes on the main thread.

### Description

Schedules the job to execute concurrently, distributing work across multiple worker threads.

This variant passes the job struct by reference instead of by value, which can be faster than IJobParallelForExtensions.Schedule for larger job structs. Note that worker threads always operate on a local copy of the job struct.

Note that these semantics are inconsistent with methods of the same name on other job interfaces. [[IJobParallelFor] does not expose a way to process all loop elements on a single worker thread. Instead, use IJobForExtensions.ScheduleByRef.

Additional resources: IJobParallelFor.
