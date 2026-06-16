<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.GetAvailableShortcutIds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IEnumerable<string>** Enumeration of available shortcut IDs.

### Description

Returns an enumeration of all available shortcut IDs.

The returned enumeration depends on the active profile (activeProfileId). Throws `ArgumentNullException` if `shortcutId` is `null`. Throws `ArgumentException` if `shortcutId` is not available, i.e. when GetAvailableShortcutIds does not contain `shortcutId`.
