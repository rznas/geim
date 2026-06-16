<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.MarkerFlags.AvailabilityNonDevelopment.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies that marker is present in non-development Players.

Use *AvailabilityNonDevelopment* to determine whether or not a profiler marker or counter is available in non-development Players.

```csharp
using System.Collections.Generic;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;public class Example
{
    public static unsafe void WriteAllNonDevelopmentStatsToFile(string filePath)
    {
        using (var writer = new System.IO.StreamWriter(filePath))
        {
            var availableStatHandles = new List<ProfilerRecorderHandle>();
            ProfilerRecorderHandle.GetAvailable(availableStatHandles);
            foreach (var h in availableStatHandles)
            {
                var statDesc = ProfilerRecorderHandle.GetDescription(h);
                if (!statDesc.Flags.HasFlag(MarkerFlags.AvailabilityNonDevelopment))
                    continue;                var name = System.Text.Encoding.UTF8.GetString(statDesc.NameUtf8, statDesc.NameUtf8Len);
                writer.WriteLine($"{name};{statDesc.Flags}");
            }
        }
    }
}
```

Use *AvailabilityNonDevelopment* to signify that a profiler marker created with the help of ProfilerUnsafeUtility.CreateMarker is available in non-development Players.

```csharp
using Unity.Collections.LowLevel.Unsafe;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;
using System;class Example
{
    static readonly IntPtr markerHandle = ProfilerUnsafeUtility.CreateMarker("MyMarker", ProfilerUnsafeUtility.CategoryScripts, MarkerFlags.AvailabilityNonDevelopment, 0);
    static unsafe void DoWork(int num)
    {
        ProfilerUnsafeUtility.BeginSample(markerHandle);
        //...
        ProfilerUnsafeUtility.EndSample(markerHandle);
    }
}
```

**Note:** 
 *AvailabilityNonDevelopment* flag has no effect on the ProfilerMarker creation as ProfilerMarker API is Development Player only.
