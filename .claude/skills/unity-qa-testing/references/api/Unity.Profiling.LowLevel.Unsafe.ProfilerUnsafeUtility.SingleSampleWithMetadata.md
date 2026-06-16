<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.SingleSampleWithMetadata.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| markerPtr | Profiler marker handle. |
| metadataCount | Metadata parameters count. |
| metadata | Unsafe pointer to the ProfilerMarkerData array. |

### Description

Creates profiling sample with a custom name that the *markerPtr* handle and metadata parameters has defined.

Sample created with SingleSampleWithMetadata shows up as a sample with zero duration in the Profiler hierarchy. In the Timeline view of the Profiler Window the provided *metadata* is available in the tooltip message. Use HierarchyFrameDataView.GetItemMetadata to retrieve metadata programmatically.

If *markerPtr* points to a marker with MarkerFlags.Counter defined, the metadata value can be retrieved with FrameDataView.GetCounterValueAsInt methods.

**Note:** SingleSampleWithMetadata is thread safe and can be used in jobified code.
 The low level Profiler API is included in a Release Build.
