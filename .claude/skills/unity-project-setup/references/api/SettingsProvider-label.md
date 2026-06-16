<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProvider-label.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets or sets the display name of the SettingsProvider as it appears in the Settings window. If not set, the Settings window uses last token of SettingsProvider.settingsPath instead.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;class SettingsProviderExamples
{
    void CreateVariousSettingsProviders()
    {
        // New Project setting that appears in its own root section (MyOwnSection) and not grouped under all the core settings.
        var p = new SettingsProvider("MyOwnSection/MySettings", SettingsScope.Project);
        // here p.label == "MySettings"        // First parameter is a unique id used to place the Settings in the tree view.
        // If a label is specified, this becomes the display name of the SettingsProvider.
        var p2 = new SettingsProvider("MyOwnSection/MySettingsOfDoom", SettingsScope.Project)
        {
            label = "A more proper Settings Name"
        };        // Second parameter is the Scope of the SettingsProvider. It determines whether this SettingsProvider appears in the
        // Settings window (used for Project settings specified with SettingsScope.Project)
        // or if it appears in the Preferences window (when specified with SettingsScope.User)
        var p3 = new SettingsProvider("Preferences/Multi touch", SettingsScope.User);
    }
}
```
