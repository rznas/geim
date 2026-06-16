<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.MarkerInfo-flags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Marker flags.

Use to determine marker origin and verbosity level.

```csharp
using System;
using System.Collections.Generic;
using UnityEditor.Profiling;
using Unity.Profiling.LowLevel;public class Example
{
    public static void GetAllWarningMarkers(FrameDataView frameData, List<int> warningMarkerIds)
    {
        warningMarkerIds.Clear();
        var markers = new List<FrameDataView.MarkerInfo>();
        frameData.GetMarkers(markers);
        foreach (var marker in markers)
        {
            if (marker.flags.HasFlag(MarkerFlags.Warning))
                warningMarkerIds.Add(marker.id);
        }
    }
}
```

Additional resources: MarkerFlags.
