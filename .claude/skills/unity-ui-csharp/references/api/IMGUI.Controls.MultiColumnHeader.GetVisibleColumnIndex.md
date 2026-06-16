<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeader.GetVisibleColumnIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| columnIndex | Column index. |

### Returns

**int** Visible column index.

### Description

Convert from column index to visible column index.

Columns can be hidden so to get the visible column index from a column index use this method. The 'column index' refers to the index into the MultiColumnHeaderState.columns array. The 'visible column index' refers to the currently visible columns shown in the MultiColumnHeader MultiColumnHeaderState.visibleColumns.
