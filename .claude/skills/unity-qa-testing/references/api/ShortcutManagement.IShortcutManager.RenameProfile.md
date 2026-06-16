<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.RenameProfile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| profileId | ID of existing profile. |
| newProfileId | New ID for profile. |

### Description

Renames the ID of a profile.

Changes the ID of the

Throws `ArgumentNullException` if `profileId` or `newProfileId` is null. Throws `ArgumentException` if `profileId` is not available. Throws `ArgumentException` if profile is read-only, i.e. IsProfileReadOnly returns `true` for `profileId`. Throws `ArgumentException` if `newProfileId` is already available, i.e. when GetAvailableProfileIds contains `newProfileId`. Throws `ArgumentException` if newProfileId is invalid.
