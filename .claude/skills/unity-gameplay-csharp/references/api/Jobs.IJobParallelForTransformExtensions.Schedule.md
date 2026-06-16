<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Jobs.IJobParallelForTransformExtensions.Schedule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| jobData | The job to schedule. |
| transforms | The TransformAccessArray to run the job on. |
| dependsOn | A JobHandle containing any jobs that must finish executing before this job begins. You can combine multiple jobs with JobHandle.CombineDependencies. Use dependencies to ensure that two jobs that read or write to the same data don't run in parallel. |

### Returns

**JobHandle** The handle identifying the scheduled job, which you can use as a dependency for a later job or to ensure completion on the main thread.

### Description

Schedules an IJobParallelForTransform job with read-write access to the transform data.

To avoid race conditions, this scheduling mode sorts the input transforms by hierarchy. Transforms with a shared root object are always processed on the same thread, though the order of processing within each hierarchy is undefined. Invalid transforms in the input TransformAccessArray are identified during the sorting stage and will not be passed to IJobParallelForTransform.Execute(), so jobs can safely assume that all TransformAccess instances are valid when this scheduling mode is used.

If read-only access to transform data is sufficient, use IJobParallelForTransformExtensions.ScheduleReadOnlyByRef instead.

For large job structs, use IJobParallelForTransformExtensions.ScheduleByRef to avoid any large pass-by-values.
