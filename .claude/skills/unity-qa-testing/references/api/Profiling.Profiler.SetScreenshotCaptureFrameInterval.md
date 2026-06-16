<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.SetScreenshotCaptureFrameInterval.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| frames | The number of frames until the next screenshot. |

### Description

Alter the rate that the Profiler takes a new screenshot for capture list thumbnails.

By default, the Profiler takes a screenshot every 15 frames to be used when the profiling session is saved to disk. Use this function to alter how frequently that happens.

For example, set the value to 1 to screenshot every frame, to make sure the saved thumbnail is the most up-to date. Set to 0 or a negative number to disable the functionality.
