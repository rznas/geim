<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.FrameTiming.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

FrameTiming stores timing information about CPU, GPU, and the overall frame time.

### Properties

| Property | Description |
| --- | --- |
| AverageCpuFrameTime | Returns the main thread CPU time as an average over the past 100 frames (in seconds). Returns -1.0f if this is not available (for example, in the first frame or directly after resume). The CPU time includes only the time the CPU spent executing Unity's main and/or render threads. |
| AverageFrameTime | The overall frame time as an average over the past 100 frames (in seconds). Returns -1.0f if no timing information is available (for example, in the first frame or directly after resume). |
| AverageGpuFrameTime | Returns the overall frame time as an average over the past 100 frames (in seconds). Returns -1.0f if no timing information is available. The GPU time only includes the time the GPU spent on rendering a frame (for example, in the first frame or directly after resume). |
| CurrentCpuFrameTime | Returns the main thread CPU time of the last frame (in seconds). The CPU time includes only time the CPU spent executing Unity's main and/or render threads. Returns -1.0f if no timing information is available (for example, in the first frame or directly after resume). |
| CurrentFrameTime | The overall frame time in seconds. Returns -1.0f if no timing information is available (for example, in the first frame or directly after resume). |
| CurrentGpuFrameTime | Returns the GPU time of the last completely rendered frame (in seconds). Returns -1.0f if no timing information is available. The GPU time only includes the time the GPU spent on rendering a frame (for example, in the first frame or directly after resume). |
