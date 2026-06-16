<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeader.IsSortedAscending.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| columnIndex | Column index. |

### Returns

**bool** True if sorted ascending.

### Description

Check the sorting order state for a column.

This function checks and returns the sorting order; true for ascending order and false for descending order. The order is preserved for each column so it can be used to sort other columns. Use sortedColumnIndex to check if any column is actively used for sorting. You can then use that column index to get the sorting order.
