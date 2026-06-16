<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeSetClassTypeToNullOnScheduleAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the managed reference to a class to null on a copy of the job struct that is passed to a job.

The job system doesn't allow managed references in a job struct. However, sometimes it's necessary to have a class in a job struct, even though in the context of the job it is always null. When this attribute is applied to a field in a job struct, the managed reference to the class is set to null on the copy of the job struct that's passed to the job. 

Additional resources: IJob.
