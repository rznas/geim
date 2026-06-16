<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides access to the Profiler data for a specific frame and thread.

Use *HierarchyFrameDataView* to retrieve Profiler samples structured as a hierarchy.
 This is used in the **Hierachy mode** of the CPU Usage Profiler, for example.

The *HierarchyFrameDataView* aggregates the data with time and memory information. Each hierarchy item includes accumulated data of its children.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor.Profiling;
using UnityEditorInternal;public class Example
{
    List<int> parentsCacheList = new List<int>();
    List<int> childrenCacheList = new List<int>();    public void ProcessFrameData(int frame)
    {
        using (var frameData = ProfilerDriver.GetHierarchyFrameDataView(frame, 0, HierarchyFrameDataView.ViewModes.Default, HierarchyFrameDataView.columnGcMemory, false))
        {
            int rootId = frameData.GetRootItemID();
            frameData.GetItemDescendantsThatHaveChildren(rootId, parentsCacheList);
            foreach (int parentId in parentsCacheList)
            {
                frameData.GetItemChildren(parentId, childrenCacheList);
                // Process further records
            }
        }
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| columnCalls | The Calls column. |
| columnDontSort | The column identifier that indicates whether sorting is disabled. |
| columnGcMemory | The amount of managed allocations within a sample. |
| columnName | The Profiler Sample Name column. |
| columnObjectName | The Object Name column. |
| columnSelfPercent | The percentage of the CPU time Unity spends in a sample itself, excluding the time from child samples. |
| columnSelfTime | The CPU time in milliseconds that Unity spends in a sample itself, excluding the time from child samples. |
| columnStartTime | The start time of a call in milliseconds. |
| columnTotalPercent | The percentage of the CPU time Unity spends in a sample, including the time from child samples. |
| columnTotalTime | The CPU time in milliseconds that Unity spends in a sample, including the time from child samples. |
| columnWarningCount | The amount of samples that are inside a code execution path that is suboptimal for performance. |
| invalidSampleId | Index of the invalid item. |

### Properties

| Property | Description |
| --- | --- |
| sortColumn | The column identifier that defines the sort column. |
| sortColumnAscending | Whether the sorting order is ascending, true, or descending, false. |
| viewMode | The view mode which defines how data is aggregated. |

### Public Methods

| Method | Description |
| --- | --- |
| GetItemAncestors | Retrieves a list of hierarchy item ancestors. |
| GetItemCallstack | Gets the callstack associated with the specified hierarchy item. |
| GetItemCategoryIndex | Gets Profiler marker category for the specific marker identifier. |
| GetItemChildren | Retrieves a list of hierarchy item children. |
| GetItemColumnData | Returns string representation of hierarchy item value associated with the column. |
| GetItemColumnDataAsDouble | Returns double representation of hierarchy item value associated with the column. |
| GetItemColumnDataAsFloat | Returns float representation of hierarchy item value associated with the column. |
| GetItemColumnDataAsSingle | Returns float representation of hierarchy item value associated with the column. |
| GetItemDepth | Returns hierarchy level of the item. |
| GetItemDescendantsThatHaveChildren | Use to retrieve a list of a hierarchy item descendants which have other children. |
| GetItemEntityId | Returns EntityId of the UnityEngine.Object associated with the sample. |
| GetItemMarkerFlags | Use to retrieve a marker usage flags. |
| GetItemMarkerID | Returns Profiler marker which uniquely identifies sample name. |
| GetItemMarkerIDPath | Use to retrieve a list of a marker identifiers of all hierarchy item parents. |
| GetItemMergedSampleCallstack | Gets the callstack associated with the specified hierarchy item. |
| GetItemMergedSamplesColumnData | Use to retrieve a values of merged samples of a hierarchy item. |
| GetItemMergedSamplesColumnDataAsDoubles | Retrieves the merged samples for a specific hierarchy item. Merged samples are returned as a list of doubles through the outValues param. |
| GetItemMergedSamplesColumnDataAsFloats | Retrieves the merged samples for a specific hierarchy item. Merged samples are returned as a list of floats through the outValues param. |
| GetItemMergedSamplesCount | Return merged samples count represented by the hierarchy item. |
| GetItemMergedSamplesEntityId | Retrieves the EntityId of the merged samples corresponding to a hierarchy item. |
| GetItemMergedSamplesMetadata | Returns string representation of hierarchy item metadata value. |
| GetItemMergedSamplesMetadataAsFloat | Returns float representation of hierarchy item metadata value. |
| GetItemMergedSamplesMetadataAsLong | Returns long representation of hierarchy item metadata value. |
| GetItemMergedSamplesMetadataCount | Returns metadata count associated with hierarchy item. |
| GetItemMetadata | Returns string representation of hierarchy item metadata value. |
| GetItemMetadataAsFloat | Returns float representation of hierarchy item metadata value. |
| GetItemMetadataAsLong | Returns long representation of hierarchy item metadata value. |
| GetItemMetadataCount | Returns metadata count associated with hierarchy item. |
| GetItemName | Gets the sample name associated with the item. |
| GetItemPath | Retrieves the hierarchy item path as a string. Each level is delimited by forward slashes ('/'). |
| GetItemRawFrameDataViewIndices | Retrieves the raw indices of all samples associated with this Hierarchy item identifier. |
| GetRootItemID | Gets the identifier for the root tree item. |
| HasItemChildren | Checks whether the tree item has children. |
| ItemContainsRawFrameDataViewIndex | Checks if the provided raw sample index matches any of the raw sample indices associated with this Hierarchy item identifier. |
| ResolveItemCallstack | Gets the callstack associated with the specified hierarchy item. |
| ResolveItemMergedSampleCallstack | Gets the callstack associated with a specific item sample. |
| Sort | Sorts the hierarchy view. |

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
