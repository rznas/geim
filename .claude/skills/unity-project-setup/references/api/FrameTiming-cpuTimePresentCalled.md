<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrameTiming-cpuTimePresentCalled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is the CPU clock time at the point Present was called for the current frame.

The CPU clock time at the point `Present()` is called for the frame. This is the time at which Unity finishes submitting objects for rendering and informs the GPU that the frame can be presented to the user.

Use FrameTimingManager.GetCpuTimerFrequency to convert timestamps to seconds.

```csharp
using UnityEngine;class Example
{
    static readonly double k_CpuTimerFrequency = FrameTimingManager.GetCpuTimerFrequency();    public static double TimestampToMilliseconds(ulong timestamp)
    {
         return (timestamp * 1000.0) / k_CpuTimerFrequency;
    }
}
```
