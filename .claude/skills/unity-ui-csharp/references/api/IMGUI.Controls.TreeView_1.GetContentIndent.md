<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.GetContentIndent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| item | Item used to determine the indent. |

### Returns

**float** Indent.

### Description

Returns the horizontal content offset for an item. This is where the content should begin (after the foldout arrow).

Use this when overriding TreeView<T0>.RowGUI to make custom GUI content for the item.

Additional resources: GetFoldoutIndent.
