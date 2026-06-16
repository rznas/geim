<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView.RowGUIArgs.GetCellRect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| visibleColumnIndex | Index into the list of visible columns of the multi column header. |

### Returns

**Rect** Cell rect defined by the intersection between the row rect and the rect of the visible column.

### Description

If using a MultiColumnHeader for the TreeView this method can be used to get the cell rects of a row using the visible columns of the MultiColumnHeader.

Note the returned cell rect is affected by the TreeView.cellMargin value.

Additional resources: MultiColumnHeader, TreeView.RowGUI, TreeView.RowGUIArgs.GetNumVisibleColumns, TreeView.RowGUIArgs.GetColumn.
