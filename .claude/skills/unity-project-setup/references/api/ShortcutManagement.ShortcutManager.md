<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.ShortcutManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides access to an instance of IShortcutManager for managing shortcuts.

### Static Properties

| Property | Description |
| --- | --- |
| defaultProfileId | A constant defining the ID of the default shortcut profile. See the documentation for the IShortcutManager.activeProfileId property. |
| instance | An instance of the IShortcutManager interface used for managing shortcuts in the editor. |

### Static Methods

| Method | Description |
| --- | --- |
| RegisterContext | Registers a IShortcutContext as a custom context used to filter shortcuts. |
| RegisterTag | Registers the tag as a custom context used to filter shortcuts after a window context is determined. |
| UnregisterContext | Removes a IShortcutContext from the shortcut context list. |
| UnregisterTag | Removes a tag from the custom context list. |
