<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.LowLevel.Unsafe.JobsUtility.ThreadIndexCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the maximum number of job workers that can work on a job at the same time.

The job system creates a number of job worker threads no greater than the number of logical CPU cores for the platform. However, because arbitrary threads can execute jobs via work stealing, the job system allocates extra workers which act as temporary job worker threads. JobsUtility.ThreadIndexCount represents the maximum number of job worker threads plus the temporary workers that the job system uses. As such, this value is useful to allocate buffers which should be subdivided evenly between job workers because JobsUtility.ThreadIndex and Unity.Collections.LowLevel.Unsafe.NativeSetThreadIndex never return a value greater than JobsUtility.ThreadIndexCount.
