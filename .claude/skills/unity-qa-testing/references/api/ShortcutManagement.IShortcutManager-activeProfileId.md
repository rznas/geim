<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager-activeProfileId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets or sets the ID of the currently active profile.

When active profile is changed all shortcut bindings are updated to reflect the overrides of active profile and its ancestors profiles. If the active profile is set to a profile ID of ShortcutManager.defaultProfileId then all shortcut bindings will return to their default bindings. Setter throws `ArgumentNullException` if the value is `null`. Setter throws `ArgumentException` if the given profile ID is not available.
