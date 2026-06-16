<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.FindItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| id | Find the TreeViewItem with this ID. |
| searchFromThisItem | Sets the search to start from an item. Use 'rootItem' to search the entire tree. |

### Returns

**TreeViewItem<TIdentifier>** This search method returns the TreeViewItem found and returns null if not found.

### Description

Finds a TreeViewItem by an ID.

Set the searchFromThisItem parameter to 'rootItem' to search the entire tree.
