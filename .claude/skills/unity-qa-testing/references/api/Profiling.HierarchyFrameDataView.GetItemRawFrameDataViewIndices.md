<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemRawFrameDataViewIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| outSampleIndices | List filled with all profiler sample indices represented by the hierarchy item. |

### Description

Retrieves the raw indices of all samples associated with this Hierarchy item identifier.

When HierarchyFrameDataView.ViewMode.MergeSamplesWithTheSameName is active, Unity merges multiple samples with the same name at the same hierarchy level together in a single item.

As a result of this behavior, and the hierarchical structure of the samples in *HierarchyFrameDataView*, the **Hierarchy item identifiers** that *HierarchyFrameDataView* uses, do not correspond to the **sample indices** that RawFrameDataView uses. Use *GetItemRawFrameDataViewIndices* to get the sample indices in a format that works with RawFrameDataView

The result is written to *outSampleIndices* list which is resized if necessary.

If you you only want to confirm that an item in the *HierarchyFrameDataView* corresponds to a particular **sample index** you can use HierarchyFrameDataView.ItemContainsRawFrameDataViewIndex instead.

**Throws:**
 *System.ArgumentException* if *id* is invalid. *System.ArgumentNullException* if *outSampleIndices* is null.

Additional resources: HierarchyFrameDataView.GetItemMergedSamplesCount, HierarchyFrameDataView.ItemContainsRawFrameDataViewIndex RawFrameDataView.
