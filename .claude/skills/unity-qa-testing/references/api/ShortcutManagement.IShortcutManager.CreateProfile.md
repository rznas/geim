<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.CreateProfile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| profileId | ID of created profile. |

### Description

Creates a new profile with the given profile ID.

Throws `ArgumentNullException` if `profileId` is `null`. Throws `ArgumentException` if `profileId` is invalid. Throws `ArgumentException` if `profileId` is not unique, i.e. when GetAvailableProfileIds contains `profileId`.
