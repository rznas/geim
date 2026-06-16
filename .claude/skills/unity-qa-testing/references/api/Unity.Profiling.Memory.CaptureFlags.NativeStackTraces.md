<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Memory.CaptureFlags.NativeStackTraces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies that Call-Stack Symbols for the Native Call-stack of each Allocation should be collected.

Native Call stacks can only be collected from a build that supports the collection of Native Call-stack information, which currently requires Source Code access. To be able to connect each allocation to its Call-stack, the CaptureFlags.NativeAllocationSites needs to be specified as well.

 Corresponds to the NativeCallstackSymbol field in a Memory Snapshot.
