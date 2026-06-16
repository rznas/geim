<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.LowLevel.Unsafe.JobsUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods for creating, running, and debugging jobs.

### Static Properties

| Property | Description |
| --- | --- |
| CacheLineSize | The size of a cache line. |
| IsExecutingJob | Checks if this is in a job. |
| JobCompilerEnabled | Set whether to run jobs in Mono or Burst. |
| JobDebuggerEnabled | Set whether to use the jobs debugger at runtime. |
| JobWorkerCount | Current number of worker threads available to the Unity JobQueue. |
| JobWorkerMaximumCount | Maximum number of worker threads available to the Unity JobQueue (Read Only). |
| MaxJobThreadCount | The maximum number of job threads that the job system can create. |
| ThreadIndex | Gets the index for the current thread when executing a job, otherwise 0. |
| ThreadIndexCount | Gets the maximum number of job workers that can work on a job at the same time. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateJobReflectionData | Creates job reflection data. |
| GetJobRange | Gets the begin index and end index of a range. |
| GetWorkStealingRange | Gets a work stealing range. |
| PatchBufferMinMaxRanges | Injects debug checks for min and max ranges of a native array. |
| ResetJobWorkerCount | Reset JobWorkerCount to the Unity adjusted value. |
| Schedule | Schedules a single IJob. |
| ScheduleParallelFor | Schedules a IJobParallelFor job. |
| ScheduleParallelForDeferArraySize | Schedules a IJobParallelFor job. |
| ScheduleParallelForTransform | Schedules an IJobParallelForTransform job. |
| ScheduleParallelForTransformReadOnly | Schedules an IJobParallelForTransform job with read-only access to the transform data. |
