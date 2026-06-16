<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.PathQueryStatus.OutOfMemory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Operation ran out of memory.

**Known issue, will be fixed:** This flag is not currently reported when memory fails to be allocated because the NavMeshQuery is created with a `pathNodePoolSize` value too large. The NavMeshQuery will then be silently defective and might produce a crash.
