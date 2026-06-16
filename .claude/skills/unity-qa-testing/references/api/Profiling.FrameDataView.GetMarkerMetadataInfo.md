<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.FrameDataView.GetMarkerMetadataInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| markerId | Marker identifier. |

### Returns

**MarkerMetadataInfo[]** Returns an array of metadata information structures.

### Description

Gets Profiler marker metadata information for the specific marker identifier.

Use to get name, unit type and value type for the metadata parameters which can be passed together with a Profiler sample associated with the identifier.

```csharp
using System.Text;
using UnityEditor.Profiling;public class Example
{
    public static string GetFormattedMetadata(HierarchyFrameDataView frameDataView, int itemId, int mergedSampleIndex)
    {
        int sampleMetadataCount = frameDataView.GetItemMergedSamplesMetadataCount(itemId, mergedSampleIndex);
        if (sampleMetadataCount == 0)
            return null;        var metadataInfo = frameDataView.GetMarkerMetadataInfo(frameDataView.GetItemMarkerID(itemId));
        var sb = new StringBuilder();
        for (var i = 0; i < sampleMetadataCount; ++i)
        {
            if (metadataInfo != null && i < metadataInfo.Length)
                sb.Append(metadataInfo[i].name);
            else
                sb.Append(i);
            sb.Append(": ");
            sb.Append(frameDataView.GetItemMergedSamplesMetadata(itemId, mergedSampleIndex, i));
            sb.Append('\n');
        }        return sb.ToString();
    }
}
```

**Throws:** 
 *System.ArgumentException* if *markerId* is invalid.
