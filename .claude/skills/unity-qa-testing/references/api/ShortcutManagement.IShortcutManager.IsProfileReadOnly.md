<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.IsProfileReadOnly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| profileId | ID of profile to determine read-only status for. |

### Returns

**bool** `true` if the profile with ID `profileId` is read-only: otherwise, `false`.

### Description

Is the profile for the given profile ID *read-only*?

Profiles that are read-only cannot be modified, e.g. RebindShortcut requires that activeProfileId does not reference a read-only profile. Use this method to ensure that methods that require the active profile ID to not be read-only won't throw `ArgumentException`.
