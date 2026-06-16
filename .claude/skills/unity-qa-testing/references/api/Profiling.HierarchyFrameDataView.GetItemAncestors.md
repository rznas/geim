<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemAncestors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| outAncestors | List filled with item ancestor identifiers as a result of a method call. |

### Description

Retrieves a list of hierarchy item ancestors.

The result is written to *outAncestors* list which is resized if necessary. The list contains identifiers of item parents in bottom-up order.

Additional resources: TreeView.GetAncestors.
