<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeader.ColumnHeaderClicked.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| column | Column clicked. |
| columnIndex | Column index clicked. |

### Description

Override to customize the behavior when clicking a column header.

The default behavior toggles the MultiColumnHeaderState.Column.sortedAscending property for the column and calls OnSortingChanged which in turns dispatches the sortingChanged event.

Call base.ColumnHeaderClicked to ensure default handling.
