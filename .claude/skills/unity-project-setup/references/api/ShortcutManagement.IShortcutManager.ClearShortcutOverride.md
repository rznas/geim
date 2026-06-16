<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.ClearShortcutOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shortcutId | ID of shortcut to clear override for. |

### Description

Clears the binding for shortcut with given shortcut ID from the active profile.

Throws `ArgumentNullException` if `shortcutId` is `null`. Throws `InvalidOperationException` if the active profile is read-only, i.e. when IsReadOnlyProfile returns `true` for activeProfileId. Throws `InvalidArgumentException` when `shortcutId` is not an available shortcut ID, i.e. when GetAvailableShortcutIds does not contain `shortcutId`.
