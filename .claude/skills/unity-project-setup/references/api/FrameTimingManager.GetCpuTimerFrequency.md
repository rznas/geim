<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrameTimingManager.GetCpuTimerFrequency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**ulong** CPU timer frequency for current platform.

### Description

This returns the frequency of CPU timer on the current platform. If the platform does not support returning this value it will return 0.

The following example demonstrates how to use `GetCpuTimerFrequency` to convert timestamps data to seconds.

```csharp
using UnityEngine;class Example
{
    public static double TimestampToMilliseconds(ulong timestamp)
    {
         return (timestamp * 1000.0) / FrameTimingManager.GetCpuTimerFrequency();
    }    public static double TimestampToSeconds(ulong timestamp)
    {
         return (timestamp * 1000.0 * 1000.0) / FrameTimingManager.GetCpuTimerFrequency();
    }
}
```
