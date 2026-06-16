<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.IJobExtensions.Run.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| jobData | The job and data to run. |

### Description

Performs the job's Execute method immediately on the same thread.

While this method is useful in development or test environments, it is typically a mistake to use it in production; it offers no real benefits over implementing the job code as a simple main-thread function call. To schedule a job to run asynchronously, use IJobExtensions.ScheduleByRef.

For large job structs, use IJobExtensions.RunByRef to avoid any large pass-by-values.

Additional resources: IJob.
