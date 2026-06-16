<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.TimestampToNanosecondsConversionRatio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets conversion ratio from Profiler timestamp to nanoseconds.

Use to convert profiler timestamp value obtained with GetTimestamp to nanoseconds.

```csharp
using Unity.Profiling.LowLevel.Unsafe;public class Example
{
    public static long ElapsedNanoseconds(long startTimestamp)
    {
        long now = ProfilerUnsafeUtility.Timestamp;
        var conversionRatio = ProfilerUnsafeUtility.TimestampToNanosecondsConversionRatio;
        return (now - startTimestamp) * conversionRatio.Numerator / conversionRatio.Denominator;
    }
}
```
