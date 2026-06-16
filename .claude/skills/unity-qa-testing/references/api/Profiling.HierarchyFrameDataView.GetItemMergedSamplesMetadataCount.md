<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemMergedSamplesMetadataCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| sampleIndex | Merged sample index. |

### Returns

**int** Returns metadata count.

### Description

Returns metadata count associated with hierarchy item.

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
 *System.ArgumentException* if *id* is invalid. *System.IndexOutOfRangeException* if *sampleIndex* is not in the range from 0 to HierarchyFrameDataView.GetItemMergedSamplesCount.

Additional resources: HierarchyFrameDataView.GetItemMergedSamplesMetadata, HierarchyFrameDataView.GetItemMergedSamplesMetadataAsLong.
