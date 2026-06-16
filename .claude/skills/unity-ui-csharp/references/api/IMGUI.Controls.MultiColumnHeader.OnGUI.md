<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.MultiColumnHeader.OnGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| xScroll | Horizontal scroll offset. |
| rect | Rect where the MultiColumnHeader is drawn in. |

### Description

Render and handle input for the MultiColumnHeader at the given rect.

If the given `xScroll` is not 0 then the column headers will be scrolled but still clipped to the given Rect. This method can be overriden for complete custom behavior and rendering. For custom handling of indivdual column headers then see ColumnHeaderGUI.
