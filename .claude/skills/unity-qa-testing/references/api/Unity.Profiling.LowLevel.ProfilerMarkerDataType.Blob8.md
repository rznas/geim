<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.ProfilerMarkerDataType.Blob8.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that ProfilerMarkerData.Ptr points to a raw byte array.

Use Blob8 to arbitrary binary data to the ProfilerUnsafeUtility.BeginSampleWithMetadata.

```csharp
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Unity.Profiling;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;public static class ProfilerMarkerExtension
{
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    [Conditional("ENABLE_PROFILER")]
    public static unsafe void Begin(this ProfilerMarker marker, byte* metadata, uint metadataSize)
    {
        var data = new ProfilerMarkerData();
        data.Type = (byte)ProfilerMarkerDataType.Blob8;
        data.Size = metadataSize;
        data.Ptr = metadata;
        ProfilerUnsafeUtility.BeginSampleWithMetadata(marker.Handle, 1, &data);
    }
}
```
