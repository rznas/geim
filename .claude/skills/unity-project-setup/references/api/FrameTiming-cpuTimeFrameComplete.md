<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrameTiming-cpuTimeFrameComplete.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This is the CPU clock time at the point GPU finished rendering the frame and interrupted the CPU.

The CPU clock time at the point when the GPU finishes rendering the frame. On most platforms, this value is calculated and equals firstSubmitTimestamp + gpuFrameTime.

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
