<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.LowLevel.Unsafe.JobsUtility.JobWorkerMaximumCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum number of worker threads available to the Unity JobQueue (Read Only).

This property determines the maximum number of worker threads when you set the JobWorkerCount property. This value is read-only at runtime, but you can set it with the command line argument `-job-worker-count value` for the Editor or standalone Players. Unity ignores this setting if this value exceeds the default value that the runtime selects for the specific platform and hardware.
