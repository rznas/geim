<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Jobs.IJobParallelForTransformExtensions.ScheduleReadOnly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| jobData | The job to schedule. |
| transforms | The TransformAccessArray to run the job on. |
| batchSize | Granularity in which workstealing is performed. For example, a value of 32 means the job queue will steal 32 iterations and then perform them in an efficient inner loop. |
| dependsOn | A JobHandle containing any jobs that must finish executing before this job begins. You can combine multiple jobs with JobHandle.CombineDependencies. Use dependencies to ensure that two jobs that read or write to the same data don't run in parallel. |

### Returns

**JobHandle** The handle identifying the scheduled job, which you can use as a dependency for a later job or to ensure completion on the main thread.

### Description

Schedules an IJobParallelForTransform job with read-only access to the transform data.

This method assumes the job only requires read-only access to the transform data, and skips any sorting or filtering of the input transforms which would otherwise be necessary for safety purposes. One important consequence is that any null, deleted, or invalid Transforms in the input TransformAccessArray will not be filtered out, and are still passed to worker threads for processing. Jobs that use this scheduling mode should therefore use TransformAccess.isValid to check whether a specific transform instance is valid before processing its data.

For large job structs, use IJobParallelForTransformExtensions.ScheduleReadOnlyByRef to avoid any large pass-by-values.
