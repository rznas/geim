<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemMergedSamplesCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |

### Returns

**int** Returns merged samples count represented by the tree item.

### Description

Return merged samples count represented by the hierarchy item.

When HierarchyFrameDataView.ViewMode.MergeSamplesWithTheSameName is active, multiple samples with the same name at the same hierarchy level are merged together and are represented by a single item.
