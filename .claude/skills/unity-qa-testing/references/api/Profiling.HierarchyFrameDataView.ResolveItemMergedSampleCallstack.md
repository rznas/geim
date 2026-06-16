<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.ResolveItemMergedSampleCallstack.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| sampleIndex | Merged sample index. |

### Returns

**string** Returns the callstack associated with the specific item sample. Returns an empty string if the callstack is empty or if the method is unsuccessful.

### Description

Gets the callstack associated with a specific item sample.

When the callstack collection mode is enabled for certain profiler markers (such as GC.Alloc), the profiler writes the callstack to the data stream. The callstack refers to the instruction pointer stack. Instruction pointers can be resolved into function names which you can the use to identify the sample origin in the source code. *ResolveItemCallstack* retrieves the callstack as a string. Each line represents a function call.

**Note:**
 A callstack can only be resolved when profiling in the Editor. Note that a domain reload could invalidate a managed callstack. For example, when two subsequent EnterPlaymode scripts reload.

Additional resources: HierarchyFrameDataView.GetItemMergedSamplesCount, HierarchyFrameDataView.ResolveItemCallstack.
