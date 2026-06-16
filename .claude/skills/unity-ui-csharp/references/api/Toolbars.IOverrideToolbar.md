<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Toolbars.IOverrideToolbar.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for EditorTool or EditorToolContext editor to override the contents of built-in toolbars.

When you implement an Editor for EditorTool or EditorToolContext, it replaces the built-in Tool Settings toolbar's contents. Use this interface to override the toolbar content instead of replacing it. You can also change the contents of toolbars other than Tool Settings. Refer to OverridableToolbar for a list of toolbars that support content overriding.

### Public Methods

| Method | Description |
| --- | --- |
| PopulateToolbar | Overrides the contents of built-in toolbars. |
