<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemMergedSamplesMetadataAsFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| sampleIndex | Merged sample index. |
| metadataIndex | Metadata index. |

### Returns

**float** Returns value of the metadata as float.

### Description

Returns float representation of hierarchy item metadata value.

**Throws:** 
 *System.ArgumentException* if *id* is invalid. *System.IndexOutOfRangeException* if *sampleIndex* is not in the range from 0 to HierarchyFrameDataView.GetItemMergedSamplesCount. *System.IndexOutOfRangeException* if *medataIndex* is not in the range from 0 to HierarchyFrameDataView.GetItemMergedSamplesMetadataCount.

Additional resources: HierarchyFrameDataView.GetItemMergedSamplesCount, HierarchyFrameDataView.GetItemMergedSamplesMetadataCount, HierarchyFrameDataView.GetItemMetadataAsFloat.
