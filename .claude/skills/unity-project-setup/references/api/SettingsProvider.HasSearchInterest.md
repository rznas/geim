<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProvider.HasSearchInterest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| searchContext | Search terms that the user entered in the search box on the Settings window. |

### Returns

**bool** True if the SettingsProvider matched the search term and if it should appear.

### Description

Checks whether the SettingsProvider should appear when the user types something in the Settings window search box. SettingsProvider tries to match the search terms (even partially) to any of the SettingsProvider.keywords. The search is case insensitive.
