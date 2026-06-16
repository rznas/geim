<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Advertisements.AdvertisementSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor API for the Unity Services editor feature. Normally UnityAds is enabled from the Services window, but if writing your own editor extension, this API can be used.

### Static Properties

| Property | Description |
| --- | --- |
| enabled | Global boolean for enabling or disabling the advertisement feature. |
| initializeOnStartup | Controls if the advertisement system should be initialized immediately on startup. |
| testMode | Controls if testing advertisements are used instead of production advertisements. |

### Static Methods

| Method | Description |
| --- | --- |
| GetGameId | Gets the game identifier specified for a runtime platform. |
| GetPlatformGameId | Gets the game identifier specified for a runtime platform. |
| SetGameId | Sets the game identifier for the specified platform. |
| SetPlatformGameId | Sets the game identifier for the specified platform. |
