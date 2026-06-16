<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeader.SetSortingColumns.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| columnIndices | Column indices of the sorted columns. |
| sortAscending | Sorting order for the column indices specified. |

### Description

Sets multiple sorting columns and the associated sorting orders.

This function sets multiple sorting columns and the associated sorting orders. The first entry is the primary sorted column. It also triggers the sortingChanged event if the sorting state changes. You can input two empty arrays to clear the sorting columns so no sorting would happen.

Additional resources: SetSorting.
