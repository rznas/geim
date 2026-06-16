<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.IsProfileIdValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| profileId | The profile ID to be checked. If a null string is specified, the method throws an ArgumentNullException error. |

### Returns

**bool** Returns `true` if the profile ID is valid. Returns `false` if the profile ID is empty or equals ShortcutManager.defaultProfileId.

### Description

Checks that the profile ID is valid.

A Profile ID cannot be empty and it cannot contain invalid characters. Invalid file characters are specific to each file system. Use this method to avoid an `ArgumentException` error from methods that require a valid profile ID.
