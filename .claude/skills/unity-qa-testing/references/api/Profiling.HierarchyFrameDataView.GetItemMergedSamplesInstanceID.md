<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemMergedSamplesInstanceID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| outInstanceIds | List filled with InstanceID values of merged samples as a result of a method call. |

### Description

Retrieves the instanceID of the merged samples corresponding to a hierarchy item.

When HierarchyFrameDataView.ViewMode.MergeSamplesWithTheSameName is active, multiple samples with the same name at the same hierarchy level are merged together and are represented by a single item. Respectively HierarchyFrameDataView.GetItemColumnData in this case represents an aggregated value.
 *GetItemMergedSamplesColumnData* allows to obtain values of individual samples in merged hierarchy.
 The result is written to *outInstanceIds* list which is resized if necessary.

Additional resources: HierarchyFrameDataView.GetItemInstanceID.
