<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.RawFrameDataView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides access to the Profiler data for a specific frame and thread.

Use *RawFrameDataView* to retrieve unstructured Profiler samples data for the particular frame.
 The order of samples is determined by the order they are generated in the code.

*RawFrameDataView* can quickly iterate over all samples in the frame without any internal allocations.

```csharp
using System;
using Unity.Collections;
using UnityEditor.Profiling;
using UnityEditorInternal;
using UnityEngine;
using UnityEngine.Profiling;public class Example
{
    public static long GetGCAllocs(int frameIndex)
    {
        long totalGcAllocSize = 0;        int gcAllocMarkerId = FrameDataView.invalidMarkerId;        for (int threadIndex = 0;; ++threadIndex)
        {
            using (RawFrameDataView frameData = ProfilerDriver.GetRawFrameDataView(frameIndex, threadIndex))
            {
                if (!frameData.valid)
                    break;                if (gcAllocMarkerId == FrameDataView.invalidMarkerId)
                {
                    gcAllocMarkerId = frameData.GetMarkerId("GC.Alloc");
                    if (gcAllocMarkerId == FrameDataView.invalidMarkerId)
                        break;
                }                int sampleCount = frameData.sampleCount;
                for (int i = 0; i < sampleCount; ++i)
                {
                    if (gcAllocMarkerId != frameData.GetSampleMarkerId(i))
                        continue;                    long gcAllocSize = frameData.GetSampleMetadataAsLong(i, 0);
                    totalGcAllocSize += gcAllocSize;
                }
            }
        }        return totalGcAllocSize;
    }
}
```

Additional resources: FrameDataView, HierarchyFrameDataView.

### Static Properties

| Property | Description |
| --- | --- |
| invalidSampleIndex | This constant defines a sample index that does not match any valid Profiler Sample. |

### Public Methods

| Method | Description |
| --- | --- |
| GetFlowEvents | Gets all flow events for the current frame and thread. |
| GetSampleCallstack | Gets the callstack associated with the specified sample. |
| GetSampleCategoryIndex | Gets Profiler marker category for the specific sample. |
| GetSampleChildrenCount | Gets amount of child samples for the specific sample. |
| GetSampleChildrenCountRecursive | Gets amount of direct and indirect child samples for the specific sample. |
| GetSampleFlags | Gets Profiler marker flags for the specific sample. |
| GetSampleFlowEvents | Gets the flow events that originate from the specific sample. |
| GetSampleMarkerId | Gets Profiler marker indentifier which uniquely identifies sample name. |
| GetSampleMetadataAsDouble | Gets sample metadata value as double. |
| GetSampleMetadataAsFloat | Gets sample metadata value as float. |
| GetSampleMetadataAsInt | Gets sample metadata value as integer. |
| GetSampleMetadataAsLong | Gets sample metadata value as long. |
| GetSampleMetadataAsSpan | Returns Span<T> representation of sample metadata. |
| GetSampleMetadataAsString | Gets sample metadata value as string. |
| GetSampleMetadataCount | Gets metadata count associated with the specific sample. |
| GetSampleName | Gets the name of the specific sample. |
| GetSampleStartTimeMs | Gets the start time of the sample. The amount of time is expressed in milliseconds. |
| GetSampleStartTimeNs | Gets the start time of the sample. The amount of time is expressed in nanoseconds. |
| GetSampleTimeMs | Gets the duration of sample. The amount of time is expressed in milliseconds. |
| GetSampleTimeNs | Gets the duration of sample. The amount of time is expressed in nanoseconds. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| invalidMarkerId | Identifier of the invalid marker. |
| invalidThreadId | This constant defines a thread id that does not match any valid thread's id. |
| invalidThreadIndex | This constant defines a thread index that does not match any valid thread's index. |

### Properties

| Property | Description |
| --- | --- |
| frameFps | The current frames per second (FPS) for the frame. |
| frameGpuTimeMs | The amount of GPU frame time in milliseconds. |
| frameGpuTimeNs | The amount of GPU frame time in nanoseconds. |
| frameIndex | The frame index for the FrameDataView. |
| frameStartTimeMs | The start time of CPU frame in milliseconds. |
| frameStartTimeNs | The start time of CPU frame in nanoseconds. |
| frameTimeMs | The amount of CPU frame time in milliseconds. |
| frameTimeNs | The amount of CPU frame time in nanoseconds. |
| maxDepth | Maximum child samples levels in the thread data. |
| sampleCount | The amount of samples in the frame for the thread. |
| threadGroupName | The name of the group that the thread belongs to. |
| threadId | Persistent identifier associated with the thread. |
| threadIndex | The index of the thread in the current frame. |
| threadName | Name of the thread. |
| valid | True after the frame data for the thread is processed and ready for retrieval. |

### Public Methods

| Method | Description |
| --- | --- |
| GetAllCategories | Gets all the available Profiler Categories for the current profiling session. |
| GetCategoryInfo | Gets the Profiler category information for a given category ID. |
| GetCounterValueAsDouble | Gets the last value of a counter marker in the frame as a double data type'. |
| GetCounterValueAsFloat | Gets the last value of a counter marker in the frame as a float data type'. |
| GetCounterValueAsInt | Gets the last value of a counter marker in the frame as an int data type'. |
| GetCounterValueAsLong | Gets the last value of a counter marker in the frame as a long data type. |
| GetCounterValuePtr | Gets unsafe pointer to the last value of a counter marker in the frame. |
| GetFrameMetaData | Retrieves metadata associated with the frame. |
| GetFrameMetaDataCount | Gets the total number of metadata chunks for each id and tag pair in the frame. |
| GetGfxResourceInfo | Gets information for a given graphics resource identifier. |
| GetMarkerCategoryIndex | Gets Profiler marker category for the specific marker identifier. |
| GetMarkerFlags | Gets Profiler marker flags for the specific marker identifier. |
| GetMarkerId | Get Profiler marker identifier for a specific name. |
| GetMarkerMetadataInfo | Gets Profiler marker metadata information for the specific marker identifier. |
| GetMarkerName | Gets Profiler marker name for the specific marker identifier. |
| GetMarkers | Gets all available markers for the current profiling session. |
| GetSessionMetaData | Retrieves the metadata of the session this frame occurred in as a NativeArray. |
| GetSessionMetaDataCount | Gets the total number of metadata chunks for each id and tag pair in the Profiler session. |
| GetUnityObjectInfo | Gets the UnityEngine.Object information for a given Instance ID. |
| GetUnityObjectNativeTypeInfo | Gets native Unity type intormation. |
| GetUnityObjectNativeTypeInfoCount | Returns native types count in the capture. |
| HasCounterValue | Returns true for a marker that includes a counter in the active frame. |
| ResolveMethodInfo | Returns method name and location information for the specified method address. |
