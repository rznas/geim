<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.GetCellRectForTreeFoldouts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rowRect | Rect for a row. |

### Returns

**Rect** Cell rect in a multi column setup.

### Description

Utility for multi column setups. This method will clip the input rowRect against the column rect defined by columnIndexForTreeFoldouts to get the cell rect where the the foldout arrows appear.

Additional resources: MultiColumnHeader.
