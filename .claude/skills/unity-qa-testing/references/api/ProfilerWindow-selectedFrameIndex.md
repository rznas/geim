<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ProfilerWindow-selectedFrameIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The zero-based index of the frame currently selected in the Profiler Window.

To change the currently selected frame in the Profiler window, set this index to any value between and including ProfilerWindow.firstAvailableFrameIndex and ProfilerWindow.lastAvailableFrameIndex. When this property is set to a value outside of that range, or smaller than 0, Unity will throw an ArgumentOutOfRangeException.

If no frames are shown in the Profiler Window this index will be -1.

Note: Since the Profiler Window shows the current selected frame as a 1 based index, this value will be n-1 of whatever the value the Profiler Window shows.
