<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.Memory.CaptureFlags.NativeAllocations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies that the Native Memory used by any Native Allocation made by Unity should be captured.

This information allows the Memory Profiler to show not just the native size of Unity Objects, but also their graphics sizes. Additionally, this also includes information on native memory used by Unity's different subsystems, allocations made via UnsafeUtility.Malloc, NativeArray_1 or other native collections, as well as how much memory is used by Unity's different native allocators and how much is just reserved. Without this flag, there will be no data recorded for CaptureFlags.NativeAllocationSites or CaptureFlags.NativeStackTraces either as it is reported in relation to each native alloation.

 Corresponds to the NativeAllocations, NativeMemoryRegions, NativeRootReferences, and NativeMemoryLabels fields in a Memory Snapshot.
