<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView.GetCustomRowHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| row | Row index. |
| item | Item for given row. |

### Returns

**float** Height of row.

### Description

Override to control individual row heights.

Override this method if custom row rects are needed for each row in the TreeView, for example if you have content that can vary in height depending on the content. This method is called internally by the TreeView for each row after BuildRows have been called. If this method is not overridden then the `rowHeight` property is used for all rows.

This method should only be overridden if row heights can differ; if all rows have same height then use the `rowHeight` property as this is more performant for large data sets.

The heights returned by this method are cached. To update the cache call RefreshCustomRowHeights.
