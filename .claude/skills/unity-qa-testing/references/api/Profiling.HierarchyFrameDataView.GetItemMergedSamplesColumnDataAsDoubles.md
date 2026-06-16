<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemMergedSamplesColumnDataAsDoubles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| column | Column identifier. |
| outValues | The merged samples for the specified hierarchy item, returned as a list of doubles. This list is resized if necessary. |

### Description

Retrieves the merged samples for a specific hierarchy item. Merged samples are returned as a list of doubles through the outValues param.

When HierarchyFrameDataView.ViewMode.MergeSamplesWithTheSameName is active, samples with the same name, and at the same hierarchy level, are merged and represented by a single item. In this case, HierarchyFrameDataView.GetItemColumnData represents an aggregated value.
 Use *GetItemMergedSamplesColumnDataAsDoubles* to obtain double values for individual samples in a merged hierarchy.
 The resulting list of doubles is written to *outValues*. This list is resized if necessary.

Additional resources: HierarchyFrameDataView.GetItemColumnData, HierarchyFrameDataView.GetItemMergedSamplesCount, HierarchyFrameDataView.GetItemMergedSamplesColumnData.
