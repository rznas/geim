<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView.RowGUIArgs.GetColumn.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| visibleColumnIndex | This index is the index into the current visible columns. |

### Returns

**int** Column index into the columns array in MultiColumnHeaderState.

### Description

If using a MultiColumnHeader for the TreeView this method can be used to convert an index from the visible columns list to a index into the actual columns in the MultiColumnHeaderState.

Note that columns can be hidden by using the context menu of the MultiColumnHeader.

Additional resources: TreeView.RowGUIArgs.GetCellRect.
