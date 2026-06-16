<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.IsShortcutOverridden.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shortcutId | ID of shortcut to determine overridden status for. |

### Returns

**bool** `true` if the shortcut with ID `shortcutId` is overridden in the active profile; otherwise, `false`.

### Description

Does the active profile override the binding for the given shortcut ID?

Returns `true` if the profile referenced by activeProfileId overrides the binding for the given shortcut ID. This includes the cases where the binding is overridden to the same as the default or to the empty binding. It returns false if the active profile does not specify a binding for the given shortcut ID.

Throws `ArgumentNullException` if `shortcutId` is `null`. Throws `ArgumentException` if `shortcutId` is not available, i.e. when GetAvailableShortcutIds does not contain `shortcutId`.
