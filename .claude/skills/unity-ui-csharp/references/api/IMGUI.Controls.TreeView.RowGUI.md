<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView.RowGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| args | Row data. |

### Description

Override this method to add custom GUI content for the rows in the TreeView.

This method is called once per visible row. The *See Also* section below links to methods and properties that can be used to tweak where the default icon, text and foldout arrow are rendered and other useful information when doing custom row content.

If the TreeView is used in combination with a MultiColumnHeader then use the methods of RowGUIArgs to access information for the columns. See the manual for examples.

Additional resources: GetContentIndent, GetFoldoutIndent.
