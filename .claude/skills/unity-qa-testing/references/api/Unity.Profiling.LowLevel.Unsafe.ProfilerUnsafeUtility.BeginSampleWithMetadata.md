<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.BeginSampleWithMetadata.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| markerPtr | Profiler marker handle. |
| metadataCount | Metadata parameters count. |
| metadata | Unsafe pointer to the ProfilerMarkerData array. |

### Description

Starts profiling a piece of code marked with a custom name that the *markerPtr* handle and metadata parameters has defined.

Code marked with BeginSampleWithMetadata and EndSample shows up in the Profiler hierarchy. Always use EndSample to close a started section of the instrumented code.
 In the Timeline view of the Profiler Window the provided *metadata* is available in the tooltip message. Use HierarchyFrameDataView.GetItemMetadata to retrieve metadata programmatically.

**Note:** Both BeginSampleWithMetadata and EndSample are thread safe and can be used in jobified code.
 The low level Profiler API is included in a Release Build.

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

Use Recorder to obtain per-frame timings in the Player for the specific marker name.

Additional resources: EndSample, CreateMarker, SetMarkerMetadata.
