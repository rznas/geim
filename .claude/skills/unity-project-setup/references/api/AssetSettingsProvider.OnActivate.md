<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetSettingsProvider.OnActivate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| searchContext | Search context in the search box on the Settings window. |
| rootElement | Root of the UIElements tree. If you add to this root, the SettingsProvider uses UIElements instead of calling SettingsProvider.OnGUI to build the UI. If you do not add to this VisualElement, then you must use the IMGUI to build the UI. |

### Description

Overrides SettingsProvider.OnActivate for this AssetSettingsProvider.
