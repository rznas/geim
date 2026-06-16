<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemChildren.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| outChildren | List filled with item child identifiers as a result of a method call. |

### Description

Retrieves a list of hierarchy item children.

The result is written to *outChildren* list which is resized if necessary. The list contains identifiers of item children in order defined by sorting parameters. Identifier defines a specific tree view item in the current frame hierarchy. Different frames have different identifiers for the tree items.

*GetItemChildren* call builds next hierarchy level making child data available for retrieval.

Additional resources: TreeViewItem.children.
