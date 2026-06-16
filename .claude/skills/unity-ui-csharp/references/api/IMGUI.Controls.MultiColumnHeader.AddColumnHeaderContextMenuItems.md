<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeader.AddColumnHeaderContextMenuItems.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| menu | Context menu shown. |

### Description

Override this method to extend the default context menu items shown when context clicking the header area.

Call base.AddColumnHeaderContextMenuItems to add the default items. You can use currentColumnIndex to know which column was activated to open the contextual menu.
