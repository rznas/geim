<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsService.NotifySettingsProviderChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this function to notify the SettingsService that a SettingsProvider changed.

The client managing the SettingsProvider should call this function when a SettingsProvider is added, removed, or modified and the Settings window needs to be refreshed.

```csharp
using System.Linq;
using UnityEditor;class MyCustomSettingsProcessor : AssetPostprocessor
{
    const string k_MyCustomSettingsPath = "Resources/MyCustomSettings.asset";
    static void OnPostprocessAllAssets(string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths)
    {
        var settingsTouched = importedAssets.Any(a => a.Contains(k_MyCustomSettingsPath));
        settingsTouched = settingsTouched || deletedAssets.Any(a => a.Contains(k_MyCustomSettingsPath));
        settingsTouched = settingsTouched || movedAssets.Any(a => a.Contains(k_MyCustomSettingsPath));
        settingsTouched = settingsTouched || movedFromAssetPaths.Any(a => a.Contains(k_MyCustomSettingsPath));        if (settingsTouched)
        {
            // Notify the SettingsWindow that MyCustomSettings has been removed or added. This tells the SettingsWindow to Add/Remove
            // a new Settings section.
            SettingsService.NotifySettingsProviderChanged();
        }
    }
}
```
