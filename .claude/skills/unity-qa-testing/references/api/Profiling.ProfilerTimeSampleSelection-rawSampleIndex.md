<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.ProfilerTimeSampleSelection-rawSampleIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The raw index of a sample, i.e. the index as if would be used with RawFrameDataView and NOT an Item ID as it would be used with HierarchyFrameDataView.

Note: When HierarchyFrameDataView uses HierarchyFrameDataView.ViewMode.MergeSamplesWithTheSameName mode, Unity merges multiple samples with the same name at the same hierarchy level together in a single item.

 As a result of this behavior, and the hierarchical structure of the samples in HierarchyFrameDataView, the **Hierarchy item identifiers** that HierarchyFrameDataView uses, do not correspond to the **sample indices** that RawFrameDataView uses. When working with HierarchyFrameDataView, use HierarchyFrameDataView.GetItemRawFrameDataViewIndices to get the sample indices in a format that works with ProfilerTimeSampleSelection and use HierarchyFrameDataView.ItemContainsRawFrameDataViewIndex to check if a selected sample index corresponds to a HierarchyFrameDataView item..

 Additional resources: rawSampleIndices, RawFrameDataView, HierarchyFrameDataView.GetItemRawFrameDataViewIndices and HierarchyFrameDataView.ItemContainsRawFrameDataViewIndex.
