<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemMarkerIDPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| outFullIdPath | List filled with marker identifiers of all ancestors of the item as a result of a method call. |

### Description

Use to retrieve a list of a marker identifiers of all hierarchy item parents.

The result is written to *outFullIdPath* list which is resized if necessary. The list contains marker identifiers of item parents in top-down order. When HierarchyFrameDataView.ViewModes.InvertHierarchy is active, the sample stack is inverted so that each item's children represents the parent samples in the captured data.
