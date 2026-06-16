<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.Unsafe.ProfilerMarkerData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes Profiler metadata parameter that can be associated with a sample.

Used with ProfilerUnsafeUtility.BeginSampleWithMetadata method. The Type value defines the data type Ptr points to. The value must be a ProfilerMarkerDataType enum value.

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

### Properties

| Property | Description |
| --- | --- |
| Ptr | Raw pointer to the metadata value. |
| Size | Size of the metadata value in bytes. |
| Type | Metadata type. |
