<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrameTiming-cpuFrameTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is the total CPU frame time calculated as the time between ends of two frames, which includes all waiting time and overheads, in ms.

This metric is also exposed as **CPU Total Frame Time** profiler counter.

Time spent while the application is paused (via `Application.Pause`) is excluded. The value reported for the first frame after resuming from a pause reflects only the actual frame work time.

Additional resources: Get frame timing data.
