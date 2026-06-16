<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.HierarchyFrameDataView.GetItemDescendantsThatHaveChildren.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Hierarchy item identifier. |
| outChildren | List filled with item all child identifiers which have children. |

### Description

Use to retrieve a list of a hierarchy item descendants which have other children.

The result is written to *outChildren* list which is resized if necessary. The call builds the whole hierarchy view tree and can be expensive.

Additional resources: TreeView.GetDescendantsThatHaveChildren.
