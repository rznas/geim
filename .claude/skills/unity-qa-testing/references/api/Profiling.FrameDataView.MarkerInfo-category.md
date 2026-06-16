<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.MarkerInfo-category.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Marker category.

Use to get the marker category.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor.Profiling;
using Unity.Profiling.LowLevel;
using Unity.Profiling.LowLevel.Unsafe;public class Example
{
    public static void GetAllRenderMarkers(FrameDataView frameData, List<int> renderMarkerIds)
    {
        renderMarkerIds.Clear();
        var markers = new List<FrameDataView.MarkerInfo>();
        frameData.GetMarkers(markers);
        foreach (var marker in markers)
        {
            if (marker.category == ProfilerUnsafeUtility.CategoryRender)
                renderMarkerIds.Add(marker.id);
        }
    }
}
```

Additional resources: ProfilerUnsafeUtility.
