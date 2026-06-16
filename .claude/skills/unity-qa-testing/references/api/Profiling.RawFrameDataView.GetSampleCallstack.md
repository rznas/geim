<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.RawFrameDataView.GetSampleCallstack.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sampleIndex | Index of the Profiler sample. |
| outCallstack | List filled with callstack pointers as a result of a method call. |

### Description

Gets the callstack associated with the specified sample.

When the callstack collection mode is enabled for certain profiler markers (such as GC.Alloc), the Profiler writes the callstack to the data stream. The callstack refers to the instruction pointer stack. Instruction pointers can be resolved into function names which you can then use to identify the sample origin in the source code. *GetSampleCallstack* retrieves the callstack as a list of pointers. Each list entry represents a function call.

Use FrameDataView.ResolveMethodInfo to get funtion name and location information for the instruction pointer.

Additional resources: sampleCount, FrameDataView.ResolveMethodInfo.
