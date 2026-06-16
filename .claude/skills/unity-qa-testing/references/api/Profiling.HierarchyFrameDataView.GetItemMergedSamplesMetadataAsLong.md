<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemMergedSamplesMetadataAsLong.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| sampleIndex | Merged sample index. |
| metadataIndex | Metadata index. |

### Returns

**long** Returns value of the metadata as long.

### Description

Returns long representation of hierarchy item metadata value.

**Throws:** 
 *System.ArgumentException* if *id* is invalid. *System.IndexOutOfRangeException* if *sampleIndex* is not in the range from 0 to HierarchyFrameDataView.GetItemMergedSamplesCount. *System.IndexOutOfRangeException* if *medataIndex* is not in the range from 0 to HierarchyFrameDataView.GetItemMergedSamplesMetadataCount.

Additional resources: HierarchyFrameDataView.GetItemMergedSamplesCount, HierarchyFrameDataView.GetItemMergedSamplesMetadataCount, HierarchyFrameDataView.GetItemMetadataAsLong.
