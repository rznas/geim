<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.GetDescendantsThatHaveChildren.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | TreeViewItem ID. |

### Returns

**IList<TIdentifier>** Descendants that have children.

### Description

Returns all descendants for the item with ID id that have children.

It is used for expanding entire sub-trees. It is called automatically from some TreeView methods. If the full item tree has not been built in BuildRoot(), then override this method and use your back-end data to find the correct descendants for the given item. 


Default behavior: The item with ID id is found by searching from the rootItem through all its descendants. Once found, all its descendants that have children are collected. Assumes the full tree has been built.

Additional resources: GetAncestors.
