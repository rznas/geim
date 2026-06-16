<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.RawFrameDataView.GetSampleMetadataAsLong.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sampleIndex | Index of the Profiler sample. |
| metadataIndex | Metadata index. |

### Returns

**long** Returns long representation of sample metadata value.

### Description

Gets sample metadata value as long.

Use to obtain additional data associated with the sample. *metadataIndex* must be between 0 and GetSampleMetadataCount.

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
