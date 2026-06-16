<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView.GetRenameRect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rowRect | Row rect for the item currently being renamed. |
| row | Row index for the item currently being renamed. |
| item | TreeViewItem that are currently being renamed. |

### Returns

**Rect** The rect where the rename overlay should appear.

### Description

Override this method if custom GUI handling are used in RowGUI. This method for controls where the rename overlay appears.

By default the rename overlay matches the placement of the item's displayName text being rendered.
