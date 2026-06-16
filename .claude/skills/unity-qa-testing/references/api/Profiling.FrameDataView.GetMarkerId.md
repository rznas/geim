<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GetMarkerId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| markerName | Marker name. |

### Returns

**int** Returns marker identifier as integer. Returns *invalidMarkerId* if there is no such marker in the capture.

### Description

Get Profiler marker identifier for a specific name.

Use marker identifier to avoid string allocations when traversing Profiler data.

The Profiler uses a unique identifier for each marker it creates during a profiling session. The markers can generate many samples which HierarchyFrameDataView and RawFrameDataView can access.
 All samples that the same marker generates have the same integer marker identifier and the same name.

Marker identifiers are persistent for the entire profiling session.

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

Additional resources: GetMarkerName, HierarchyFrameDataView.GetItemMarkerID, RawFrameDataView.GetSampleMarkerId.
