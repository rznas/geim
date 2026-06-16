<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrameTiming.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct containing high level CPU and GPU frame timings and accompanying relevant data.

Use the FrameTiming struct to get access to the duration of CPU and GPU activities, their start time and other important performance information.

 Use the following FrameTiming properties to determine CPU and GPU contributions to the frame time:

- cpuFrameTime refers to the total CPU frame time. It is calculated as the time between the start of the frame and the next frame on the main thread.
- cpuMainThreadFrameTime is the main thread’s work time, or the total amount of time between the start of the frame and the main thread finishing its work.
- cpuRenderThreadFrameTime refers to the render thread’s work time, or the total amount of time between the first work request submitted to the render thread and the time when the `Present` method is called.
- cpuMainThreadPresentWaitTime is the duration the CPU spends waiting for `Present` to complete during the frame.
- gpuFrameTime is the GPU’s work time, or the total amount of time between the work submitted to the GPU and the signal indicating that the GPU has finished the job for the frame. The total time includes durations of all active and idle GPU states within frame.

The cpuMainThreadPresentWaitTime is the sum of displayed `[wait]` blocks, and includes waits for `Present` and target fps. It’s harder to calculate GPU work time, because it starts somewhere in the middle of scene rendering processes and finishes on the next frame's sync point with the previous frame.

The example demonstrates how to determine whether a frame is CPU or GPU bound.

```csharp
using Unity.Profiling;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    internal enum PerformanceBottleneck
    {
        Indeterminate, // Cannot be determined
        PresentLimited, // Limited by presentation (vsync or framerate cap)
        CPU, // Limited by CPU (main and/or render thread)
        GPU, // Limited by GPU
        Balanced, // Limited by both CPU and GPU, i.e. well balanced
    }    FrameTiming[] m_FrameTimings = new FrameTiming[1];    void Update()
    {
        FrameTimingManager.CaptureFrameTimings();
        var ret = FrameTimingManager.GetLatestTimings((uint)m_FrameTimings.Length, m_FrameTimings);
        if (ret > 0)
        {
            var bottleneck = DetermineBottleneck(m_FrameTimings[0]);
            // Your code logic here
        }
    }    static PerformanceBottleneck DetermineBottleneck(FrameTiming s)
    {
        const float kNearFullFrameTimeThresholdPercent = 0.2f;
        const float kNonZeroPresentWaitTimeMs = 0.5f;        // If we're on platform which doesn't support GPU time
        if (s.gpuFrameTime == 0)
            return PerformanceBottleneck.Indeterminate;        var fullFrameTimeWithMargin = (1f - kNearFullFrameTimeThresholdPercent) * s.cpuFrameTime;        // GPU time is close to frame time, CPU times are not
        if (s.gpuFrameTime > fullFrameTimeWithMargin &&
            s.cpuMainThreadFrameTime < fullFrameTimeWithMargin &&
            s.cpuRenderThreadFrameTime < fullFrameTimeWithMargin)
            return PerformanceBottleneck.GPU;        // One of the CPU times is close to frame time, GPU is not
        if (s.gpuFrameTime < fullFrameTimeWithMargin &&
            (s.cpuMainThreadFrameTime > fullFrameTimeWithMargin ||
            s.cpuRenderThreadFrameTime > fullFrameTimeWithMargin))
            return PerformanceBottleneck.CPU;        // Main thread waited due to Vsync or target frame rate
        if (s.cpuMainThreadPresentWaitTime > kNonZeroPresentWaitTimeMs)
        {
            // None of the times are close to frame time
            if (s.gpuFrameTime < fullFrameTimeWithMargin &&
               s.cpuMainThreadFrameTime < fullFrameTimeWithMargin &&
               s.cpuRenderThreadFrameTime < fullFrameTimeWithMargin)
               return PerformanceBottleneck.PresentLimited;
         }        return PerformanceBottleneck.Balanced;
    }
}
```

The FrameTiming also contains timestamp information that can be used for frame timeline visualization or calculating deltas with other markers. The timestamps provided are:

- frameStartTimestamp: The CPU clock time when the frame first starts.
- firstSubmitTimestamp: The CPU clock time when the initial work is submitted to the GPU during the frame (platform and API dependent). Different platforms submit at different times.
- cpuTimePresentCalled: The CPU clock time at the point Present() is called for the frame. It’s the time when Unity finishes submitting objects for rendering and informs the GPU that the frame can be presented to the user.
- cpuTimeFrameComplete: The CPU clock time at the point when the GPU finishes rendering the frame. On most platforms, this value is calculated and equals First Submit Timestamp + Frame GPU time.

Use FrameTimingManager.GetCpuTimerFrequency to convert timestamps to seconds.

Additional resources: Introduction to the Frame Timing Manager, FrameTimingManager.

### Properties

| Property | Description |
| --- | --- |
| cpuFrameTime | This is the total CPU frame time calculated as the time between ends of two frames, which includes all waiting time and overheads, in ms. |
| cpuMainThreadFrameTime | Total time between start of the frame and when the main thread finished the job, in ms. |
| cpuMainThreadPresentWaitTime | The CPU time the last frame spent in waiting for Present on the main thread, in ms. |
| cpuRenderThreadFrameTime | The frame time between start of the work on the render thread and when Present was called, in ms. |
| cpuTimeFrameComplete | This is the CPU clock time at the point GPU finished rendering the frame and interrupted the CPU. |
| cpuTimePresentCalled | This is the CPU clock time at the point Present was called for the current frame. |
| firstSubmitTimestamp | This is the CPU clock time of the time when the first job was submitted to GPU. |
| frameStartTimestamp | This is the CPU clock time of the time when the frame was started. |
| gpuFrameTime | The GPU time for a given frame, in ms. |
| heightScale | This was the height scale factor of the Dynamic Resolution system(if used) for the given frame and the linked frame timings. |
| syncInterval | This was the vsync mode for the given frame and the linked frame timings. |
| widthScale | This was the width scale factor of the Dynamic Resolution system(if used) for the given frame and the linked frame timings. |
