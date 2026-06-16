<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.IProfilerFrameTimeViewSampleSelectionController.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This Interface defines an IProfilerFrameTimeViewSampleSelectionController object that you can use to control the selection in Profiler modules that display timing information of Profiler samples, such as the CPU Usage module and the GPU Usage Profiler module.

Use ProfilerWindow.GetFrameTimeViewSampleSelectionController to retrieve such an object.

### Properties

| Property | Description |
| --- | --- |
| focusedThreadIndex | The index of the the thread selected to be displayed in the Profiler module. |
| sampleNameSearchFilter | This filters the samples displayed in Hierarchy view to only include the names that include this string. |
| selection | Get the current selection in a frame time sample based Profiler modules, such as the CPU Usage module and the GPU Usage Profiler module. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearSelection | Call this method to clear the current selection in this frame time view based Profiler module. |
| SetSelection | Set the current selection in a frame time sample based Profiler Module, such as the CPU Usage module and the GPU Usage Profiler module. |

### Events

| Event | Description |
| --- | --- |
| selectionChanged | Calls the methods in its invocation list when the selection in this Profiler module changes. The first parameter contains the Profiler module the selection change occurred in, the second parameter is the new selection. |
