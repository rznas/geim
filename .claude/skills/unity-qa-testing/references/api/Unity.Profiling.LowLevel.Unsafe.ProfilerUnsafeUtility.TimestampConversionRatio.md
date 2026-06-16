<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.TimestampConversionRatio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Fraction that converts the Profiler timestamp to nanoseconds.

Use to convert the Profiler timestamp value obtained with GetTimestamp to nanoseconds.

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

### Properties

| Property | Description |
| --- | --- |
| Denominator | Denominator of timestamp to nanoseconds conversion fraction. |
| Numerator | Numerator of timestamp to nanoseconds conversion fraction. |
