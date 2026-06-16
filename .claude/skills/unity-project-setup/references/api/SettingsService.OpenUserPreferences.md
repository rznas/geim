<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsService.OpenUserPreferences.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settingsPath | Settings path of the item to select (for example, 'Preferences/Keys' or 'Preferences/2D'). |

### Returns

**EditorWindow** Returns an instance to the Settings window.

### Description

Open the Preferences window with the specified settings item already selected.

```csharp
using UnityEditor;
using UnityEngine;class MyCustomWindow : EditorWindow
{
    void OnGUI()
    {
        if (GUILayout.Button("Open my custom preference"))
        {
            SettingsService.OpenUserPreferences("Preferences/MyCustomPref");
        }        if (GUILayout.Button("Open my custom project settings"))
        {
            SettingsService.OpenProjectSettings("Project/MyCustomSettings");
        }
    }
}
```
