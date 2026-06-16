<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/frame-timing-manager-counter-reference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Frame timing API counter reference

The following table describes the purpose of the counters that the `FrameTiming` API provides.

| **FrameTiming API field** | ****Profiler counter**** | **Description** |
| --- | --- | --- |
| `cpuFrameTime` | **CPU Total Frame Time** | The total CPU frame time, in nanoseconds. Unity calculates this as the time between the ends of two frames, including any overheads or time spent waiting between frames. This value doesn’t include the time that the application is paused with `Application.Pause`. |
| `cpuMainThreadFrameTime` | **CPU Main Thread Frame Time** | Active main thread work time in nanoseconds. This is the **PlayerLoop** time without the time the main thread was waiting for the VSync or render thread to finish its work, calculated as follows:   `cpuMainThreadFrameTime = PlayerLoop - GfxDevice.WaitForRenderThread - Gfx.WaitForPresentOnGfxThread - WaitForTargetFPS` |
| `cpuMainThreadPresentWaitTime` | N/A | The CPU time in nanoseconds spent waiting for the frame presentation or VSync during the frame, calculated as follows:   `cpuMainThreadPresentWaitTime = Gfx.WaitForPresentOnGfxThread + WaitForTargetFPS`. |
| `cpuRenderThreadFrameTime` | **CPU Render Thread Frame Time** | Active Render Thread work time in nanoseconds without Unity calling the `Present()` function, calculated as follows:   `cpuRenderThreadFrameTime = RenderLoop - Gfx.PresentFrame`. |
| `gpuFrameTime` | **GPU Frame Time** | The time difference in nanoseconds between the beginning and the end of the GPU rendering a single frame. |

The following diagram visualizes the relationships between **FrameTiming** and the Profiler frame data.

## Additional resources

- Get frame timing data
- Record frame timing data
