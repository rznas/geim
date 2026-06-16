<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProvider.OnInspectorUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnInspectorUpdate is called at 10 frames per second to give the inspector a chance to update. See EditorWindow.OnInspectorUpdate for more details.

```csharp
using UnityEditor;
public static class PresetManagerHelper
{
    [SettingsProvider]
    static SettingsProvider CreatePresetManagerProvider()
    {
        var provider = AssetSettingsProvider.CreateProviderFromAssetPath(
            "Project/Preset Manager", "ProjectSettings/PresetManager.asset");
        provider.inspectorUpdateHandler += () =>
        {
            // When PresetManager is updated from the inspector, check to see if we need to update the Preset Settings View.
            if (provider.settingsEditor != null &&
                provider.settingsEditor.serializedObject.UpdateIfRequiredOrScript())
            {
                provider.Repaint();
            }
        };
        return provider;
    }
}
```
