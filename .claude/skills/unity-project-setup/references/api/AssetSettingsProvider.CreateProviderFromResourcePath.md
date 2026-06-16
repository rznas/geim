<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetSettingsProvider.CreateProviderFromResourcePath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settingsWindowPath | Path of the settings in the Settings window. Uses "/" as separator. The last token becomes the settings label if none is provided. |
| resourcePath | Path of the resource on disk. |
| keywords | List of keywords to compare against what the user is searching for. When the user enters values in the search box on the Settings window, SettingsProvider.HasSearchInterest tries to match those keywords to this list. |

### Returns

**AssetSettingsProvider** Returns an AssetSettingsProvider that will create an Editor for this particular asset.

### Description

Create an AssetSettingsProvider from an asset resource path.
