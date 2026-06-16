<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.CenterRectUsingSingleLineHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rect | Rect to be modified and centered. |

### Description

Modifies the input rect so it is centered and have a height equal to EditorGUIUtility.singleLineHeight.

This method can be used in RowGUI for centering and adjusting the row rect using EditorGUIUtility.singleLineHeight. In general it is a good idea to use a rect with EditorGUIUtility.singleLineHeight for labels and controls if working with row heights larger than the default row height.

Additional resources: ::RowGUI.
