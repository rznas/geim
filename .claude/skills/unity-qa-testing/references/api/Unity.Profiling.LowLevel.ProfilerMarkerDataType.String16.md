<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.ProfilerMarkerDataType.String16.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that ProfilerMarkerData.Ptr points to a **char***.

Use String16 to pass string data to the ProfilerUnsafeUtility.BeginSampleWithMetadata.

**Note:** The size of the string must be set in bytes including the null terminator.

```csharp
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Unity.Profiling;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;public static class ProfilerMarkerExtension
{
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    [Conditional("ENABLE_PROFILER")]
    public static unsafe void Begin(this ProfilerMarker marker, string metadata)
    {
        var data = new ProfilerMarkerData();
        data.Type = (byte)ProfilerMarkerDataType.String16;
        fixed(char* c = metadata)
        {
            data.Size = ((uint)metadata.Length + 1) * 2;
            data.Ptr = c;
            ProfilerUnsafeUtility.BeginSampleWithMetadata(marker.Handle, 1, &data);
        }
    }
}
```
