<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.ItemContainsRawFrameDataViewIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| sampleIndex | The particular profiler sample index that should be checked if it is represented by this hierarchy item. |

### Returns

**bool** True if the sample index is represented by this hierarchy item, false if it is not.

### Description

Checks if the provided raw sample index matches any of the raw sample indices associated with this Hierarchy item identifier.

When HierarchyFrameDataView.ViewMode.MergeSamplesWithTheSameName is active, Unity merges multiple samples with the same name at the same hierarchy level together in a single item.

As a result of this behavior, and the hierarchical structure of the samples in *HierarchyFrameDataView*, the **Hierarchy item identifiers** that *HierarchyFrameDataView* uses, do not correspond to the **sample indices** that RawFrameDataView uses. To get these indices to use with RawFrameDataView, use *GetItemRawFrameDataViewIndices*.

However, if you only want to confirm that an item in the *HierarchyFrameDataView* corresponds to a particular **sample index** you can use *ItemContainsRawFrameDataViewIndex* to confirm that without the need to retrieve the entire list of **sample indices**.

**Throws:**
 *System.ArgumentException* if *id* is invalid.

Additional resources: HierarchyFrameDataView.GetItemMergedSamplesCount, HierarchyFrameDataView.GetItemRawFrameDataViewIndices, RawFrameDataView.
