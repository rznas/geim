<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.RebindShortcut.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shortcutId | ID of shortcut to rebind. |
| binding | New binding of shortcut. |

### Description

Rebinds the shortcut for the given shortcut ID to the given binding in the active profile.

Creates a new (or modifies the existing) binding override for the given shortcut ID on the active profile.

Throws `ArgumentNullException` if `shortcutId` is null. Throws `ArgumentException` if `shortcutId` is not available, i.e. when GetAvailableShortcutIds does not contain `shortcutId`. Throws `InvalidOperationException` if the active profile is read-only, i.e. when IsReadOnlyProfile returns `true` for activeProfileId.
