<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Memory.CaptureFlags.NativeAllocationSites.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the location that each native allocation was allocated at.

This data is needed to connect native allocations to their Memory Labels and to the native call stacks of their allocation call. Native call stacks can only be collected from a build that supports the collection of native call stack information, which currently requires source code access.

 Corresponds to the NativeAllocationSite field in a Memory Snapshot.
