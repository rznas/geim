<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.IJobExtensions.RunByRef.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| jobData | The job and data to run. |

### Description

Performs the job's Execute method immediately on the main thread.

This variant passes the job struct by reference instead of by value, which can be faster than IJobExtensions.Run for larger job structs. Note that worker threads always operate on a local copy of the job struct.

While this method is useful in development or test environments, it is typically a mistake to use it in production; it offers no real benefits over implementing the job code as a simple main-thread function call. To schedule a job to run asynchronously, use IJobExtensions.ScheduleByRef.

Additional resources: IJob.
