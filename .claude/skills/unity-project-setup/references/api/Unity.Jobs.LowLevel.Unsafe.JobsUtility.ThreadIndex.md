<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.LowLevel.Unsafe.JobsUtility.ThreadIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the index for the current thread when executing a job, otherwise 0.

When multiple threads are executing jobs, no two threads have the same index. The range of this property is `[0, Unity.Jobs.LowLevel.Unsafe.JobsUtility.ThreadIndexCount)`. The value returned when used from within a job is the same as the value stored in job members decorated with `[Unity.Collections.LowLevel.Unsafe.NativeSetThreadIndexAttribute]`. SA: Unity.Jobs.LowLevel.Unsafe.JobsUtility.ThreadIndexCount
