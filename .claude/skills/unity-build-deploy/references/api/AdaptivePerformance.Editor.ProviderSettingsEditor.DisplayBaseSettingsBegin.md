<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Editor.ProviderSettingsEditor.DisplayBaseSettingsBegin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** False if the settings cannot be loaded. Otherwise true.

### Description

Starts the display block of the base settings. Needs to be called if DisplayBaseRuntimeSettings() or DisplayBaseDeveloperSettings() gets called. Needs to be concluded by a call to DisplayBaseSettingsEnd(). Pass isLegacyAPI = false to hide the legacy warning banner and comply with new APIs. Default is true (for compatibility).
