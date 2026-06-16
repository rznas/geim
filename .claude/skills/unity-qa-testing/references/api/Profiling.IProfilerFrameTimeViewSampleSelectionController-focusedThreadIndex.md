<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.IProfilerFrameTimeViewSampleSelectionController-focusedThreadIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The index of the the thread selected to be displayed in the Profiler module.

If the Profiler module is in (Raw) Hierarchy view and is showing data for a specific thread, this property's value corresponds to that thread's index. When you set this to a thread index, when the Profiler module is in (Raw) Hierarchy view, it switches the display to show the data of the specified thread. If you set the value, when the Profiler module is in Timeline view, the specified thread is framed vertically and on the next change to (Raw) Hierarchy view, it will be set there.

Apart from this one-off effect, the Timeline view's behavior of showing all threads means it does not track any specific thread that is focused. Because the Timeline view focuses on the thread that a selection belongs to, this property returns the thread index of any active selection, when Timeline view is shown. If there is no active selection, or (Raw) Hierarchy view is shown, the returned value corresponds to the thread index that is currently showing in (Raw) Hierarchy or is shown when the view next changes to (Raw) Hierarchy.

The effect of setting this value only happens when you set it, and any subsequent action or API call to set a selection or change the thread shown in (Raw) Hierarchy overrides its effect.

This property is especially useful when used in conjunction with IProfilerFrameTimeViewSampleSelectionController.sampleNameSearchFilter and in the Hierarchy view, because you can select a specific thread and then filter the samples listed in the Hierarchy view.

Additional resources: IProfilerFrameTimeViewSampleSelectionController.sampleNameSearchFilter, IProfilerFrameTimeViewSampleSelectionController.selection.
