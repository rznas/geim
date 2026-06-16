<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeader.SetSorting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| columnIndex | Column to sort. |
| sortAscending | Sorting order for the column specified. |

### Description

Sets the primary sorting column and its sorting order.

This function sets the primary sorting column and its sorting order. It also triggers the sortingChanged event if the sorting state changes. You can set the columnIndex to -1 to clear the sort.

Additional resources: SetSortingColumns, sortedColumnIndex and IsSortedAscending.g.
