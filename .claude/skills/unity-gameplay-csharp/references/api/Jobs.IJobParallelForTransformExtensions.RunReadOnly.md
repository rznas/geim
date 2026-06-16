<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Jobs.IJobParallelForTransformExtensions.RunReadOnly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transforms | The TransformAccessArray to run this job on. |
| jobData | The job to run. |

### Description

Runs an IJobParallelForTransform job immediately on the main thread, with read-only access to the transform data.

While this method is useful in development or test environments, it is typically a mistake to use it in production; it offers no real benefits over implementing the job code as a simple main-thread function call. To schedule a job to run asynchronously, use IJobParallelForTransformExtensions.ScheduleReadOnlyByRef. This method assumes the job only requires read-only access to the transform data, and skips any sorting or filtering of the input transforms which would otherwise be necessary for safety purposes. One important consequence is that any null, deleted, or invalid Transforms in the input TransformAccessArray will not be filtered out, and are still passed to worker threads for processing. Jobs that use this scheduling mode should therefore use TransformAccess.isValid to check whether a specific transform instance is valid before processing its data.

For large job structs, use IJobParallelForTransformExtensions.RunReadOnlyByRef to avoid any large pass-by-values.
