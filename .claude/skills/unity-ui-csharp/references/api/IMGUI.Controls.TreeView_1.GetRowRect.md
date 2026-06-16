<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.GetRowRect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| row | Row index. |

### Returns

**Rect** Row rect.

### Description

Get the rect for a row.

This rect is limited to the visible width of the scroll view. If the TreeView is using a MultiColumnHeader then the total width of all the columns can be found by MultiColumnHeaderState.widthOfAllVisibleColumns

Additional resources: GetRows.
