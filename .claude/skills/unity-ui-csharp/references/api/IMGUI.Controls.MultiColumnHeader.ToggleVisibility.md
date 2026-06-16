<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeader.ToggleVisibility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| columnIndex | Toggle visibility for this column. |

### Description

Method for toggling the visibility of a column.

This is also called from the context menu of the MultiColumnHeader. This method toggles the visiblity state, calls ::ef::OnVisibleColumnsChanged which in turn dispatces the visibleColumnsChanged event.
