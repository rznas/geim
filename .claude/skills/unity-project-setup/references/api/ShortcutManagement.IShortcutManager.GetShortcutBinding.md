<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.GetShortcutBinding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shortcutId | ID of shortcut to retrieve binding for. |

### Returns

**ShortcutBinding** Active binding for shortcut.

### Description

Returns the active binding for the given shortcut ID.

The return value depends on the active profile (activeProfileId). Throws `ArgumentNullException` if `shortcutId` is `null`. Throws `ArgumentException` if `shortcutId` is not available, i.e. when GetAvailableShortcutIds does not contain `shortcutId`.
