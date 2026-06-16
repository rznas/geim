<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager-shortcutBindingChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | Shortcut binding changed event handler. |

### Description

Raised when shortcut overrides are changed on the active profile.

This event is raised when the shortcut overrides are changed on the active profile, e.g. via RebindShortcut or ClearShortcutOverrides. It is not raised when shortcut overrides change in response to changing the active profile changed (use activeProfileChanged instead).
