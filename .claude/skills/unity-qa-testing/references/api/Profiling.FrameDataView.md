<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base funtionality for accessing the Profiler data.

Provides base access to the Profiler data for a specific frame and thread.

Additional resources: RawFrameDataView, HierarchyFrameDataView.

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
