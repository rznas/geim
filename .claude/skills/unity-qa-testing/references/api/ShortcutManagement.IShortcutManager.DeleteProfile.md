<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.DeleteProfile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| profileId | ID of profile to delete. |

### Description

Deletes profile with the given profile ID.

Throws `ArgumentNullException` if `profileId` is `null`. Throws `ArgumentException` if `profileId` is not avaliable, i.e. when GetAvailableProfileIds does not contain `profileId`. Throws `ArgumentException` if `profileId` is read-only, i.e. when IsProfileReadOnly returns `true` for `profileId`.
