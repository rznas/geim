<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.CreateMarker.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | A marker name. |
| categoryId | A profiler category identifier. |
| flags | The marker flags. |
| metadataCount | The metadata parameters count, or 0 if no parameters are expected. |
| nameLen | Marker name string length. |

### Returns

**IntPtr** Returns the marker native handle.

### Description

Constructs a new Profiler marker handle for code instrumentation.

Use profiler marker handle with ProfilerUnsafeUtility methods only.
 The *categoryId* parameter associates the marker with one of the predefined categories in ProfilerCategory struct.

**Note:** Markers created with *CreateMarker* automatically get MarkerFlags.Script flag.

```csharp
using Unity.Collections.LowLevel.Unsafe;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;
using System;class Example
{
    static readonly IntPtr markerHandle = ProfilerUnsafeUtility.CreateMarker("MyMarker", ProfilerUnsafeUtility.CategoryScripts, MarkerFlags.Default, 0);
    static unsafe void DoWork(int num)
    {
        ProfilerUnsafeUtility.BeginSample(markerHandle);
        //...
        ProfilerUnsafeUtility.EndSample(markerHandle);
    }
}
```

Use *CreateMarker* to set metadata parameter names when passing metadata with :ref::BeginSampleWithMetadata method.

```csharp
using Unity.Collections.LowLevel.Unsafe;
using Unity.Profiling;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;
using System;class Example
{
    static IntPtr MakeMarkerWithIntMetadata(string name, string paramName)
    {
        var handle = ProfilerUnsafeUtility.CreateMarker(name, ProfilerUnsafeUtility.CategoryScripts, MarkerFlags.Default, 1);
        ProfilerUnsafeUtility.SetMarkerMetadata(handle, 0, paramName, (byte)ProfilerMarkerDataType.Int32, (byte)ProfilerMarkerDataUnit.Count);
        return handle;
    }    static readonly IntPtr markerHandle = MakeMarkerWithIntMetadata("MyMarker", "Work Idx");    static unsafe void DoWork(int num)
    {
        var metadata = stackalloc ProfilerMarkerData[1];
        metadata[0].Type = (byte)ProfilerMarkerDataType.Int32;
        metadata[0].Size = (uint)UnsafeUtility.SizeOf<int>();
        metadata[0].Ptr = UnsafeUtility.AddressOf(ref num);
        ProfilerUnsafeUtility.BeginSampleWithMetadata(markerHandle, 1, metadata);
        //...
        ProfilerUnsafeUtility.EndSample(markerHandle);
    }
}
```

Additional resources: ProfilerCategory, MarkerFlags.
