<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.OpenFilePanelWithFilters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| title | The text to display in the title bar of the dialog window. |
| directory | The default file directory that this dialog opens. This parameter is relative to the project directory. For example, "Assets" displays the Assets directory when this dialog opens. |
| filters | File extensions in form: new string[] { "Image files", "png,jpg,jpeg", "All files", "*" }. |

### Returns

**string** The fully qualified path name.

### Description

Displays the "open file" dialog and returns the selected path name.
