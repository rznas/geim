<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerMarker.Handle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets native handle of the ProfilerMarker.

Use *Handle* to obtain a native marker handle and extend funtionality of ProfilerMarker.

```csharp
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Unity.Collections.LowLevel.Unsafe;
using Unity.Profiling;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;public static class ProfilerMarkerExtension
{
    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    [Conditional("ENABLE_PROFILER")]
    public static unsafe void Begin(this ProfilerMarker marker, int metadata)
    {
        var data = new ProfilerMarkerData();
        data.Type = (byte)ProfilerMarkerDataType.Int32;
        data.Size = (uint)UnsafeUtility.SizeOf<int>();
        data.Ptr = UnsafeUtility.AddressOf(ref metadata);
        ProfilerUnsafeUtility.BeginSampleWithMetadata(marker.Handle, 1, &data);
    }    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    [Conditional("ENABLE_PROFILER")]
    public static unsafe void Begin(this ProfilerMarker marker, uint metadata)
    {
        var data = new ProfilerMarkerData();
        data.Type = (byte)ProfilerMarkerDataType.UInt32;
        data.Size = (uint)UnsafeUtility.SizeOf<uint>();
        data.Ptr = UnsafeUtility.AddressOf(ref metadata);
        ProfilerUnsafeUtility.BeginSampleWithMetadata(marker.Handle, 1, &data);
    }    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    [Conditional("ENABLE_PROFILER")]
    public static unsafe void Begin(this ProfilerMarker marker, long metadata)
    {
        var data = stackalloc ProfilerMarkerData[1];
        data[0].Type = (byte)ProfilerMarkerDataType.Int64;
        data[0].Size = (uint)UnsafeUtility.SizeOf<long>();
        data[0].Ptr = UnsafeUtility.AddressOf(ref metadata);
        ProfilerUnsafeUtility.BeginSampleWithMetadata(marker.Handle, 1, data);
    }    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    [Conditional("ENABLE_PROFILER")]
    public static unsafe void Begin(this ProfilerMarker marker, ulong metadata)
    {
        var data = stackalloc ProfilerMarkerData[1];
        data[0].Type = (byte)ProfilerMarkerDataType.UInt64;
        data[0].Size = (uint)UnsafeUtility.SizeOf<ulong>();
        data[0].Ptr = UnsafeUtility.AddressOf(ref metadata);
        ProfilerUnsafeUtility.BeginSampleWithMetadata(marker.Handle, 1, data);
    }    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    [Conditional("ENABLE_PROFILER")]
    public static unsafe void Begin(this ProfilerMarker marker, float metadata)
    {
        var data = stackalloc ProfilerMarkerData[1];
        data[0].Type = (byte)ProfilerMarkerDataType.Float;
        data[0].Size = (uint)UnsafeUtility.SizeOf<float>();
        data[0].Ptr = UnsafeUtility.AddressOf(ref metadata);
        ProfilerUnsafeUtility.BeginSampleWithMetadata(marker.Handle, 1, data);
    }    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    [Conditional("ENABLE_PROFILER")]
    public static unsafe void Begin(this ProfilerMarker marker, double metadata)
    {
        var data = stackalloc ProfilerMarkerData[1];
        data[0].Type = (byte)ProfilerMarkerDataType.Double;
        data[0].Size = (uint)UnsafeUtility.SizeOf<double>();
        data[0].Ptr = UnsafeUtility.AddressOf(ref metadata);
        ProfilerUnsafeUtility.BeginSampleWithMetadata(marker.Handle, 1, data);
    }    [MethodImpl(MethodImplOptions.AggressiveInlining)]
    [Conditional("ENABLE_PROFILER")]
    public static unsafe void Begin(this ProfilerMarker marker, string metadata)
    {
        var data = stackalloc ProfilerMarkerData[1];
        data[0].Type = (byte)ProfilerMarkerDataType.String16;
        fixed(char* c = metadata)
        {
            data[0].Size = ((uint)metadata.Length + 1) * 2;
            data[0].Ptr = c;
            ProfilerUnsafeUtility.BeginSampleWithMetadata(marker.Handle, 1, data);
        }
    }
}
```

Additional resources: ProfilerUnsafeUtility.CreateMarker, ProfilerUnsafeUtility.BeginSampleWithMetadata.
