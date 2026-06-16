<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PluginImporter.SetIcon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| className | The fully qualified class name of a MonoScript imported by this managed plugin. |
| icon | The custom icon to associate with the imported MonoScript. When the value is null, Unity restores the default icon. |

### Description

Sets the custom icon to associate with a MonoScript imported by a managed plugin.

Each MonoScript imported by managed plugins can have an associated custom icon. This icon is used in the Scene view, the Inspector, and the Project window. To remove a MonoScript's associated custom icon, pass null to this method.

Additional resources: MonoScript.GetClass, Type.FullName, PluginImporter.GetIcon, MonoImporter.SetIcon, EditorGUIUtility.SetIconForObject.

```csharp
using UnityEngine;
using UnityEditor;public class Example
{
    [MenuItem("Examples/Set Custom Icon on Managed Plugin MonoScript")]
    static void SetCustomIconOnManagedPluginMonoScript()
    {
        var dllPath = "Assets/MyManagedPlugin.dll";
        var iconPath = "Assets/MyIcon.png";
        var pluginImporter = AssetImporter.GetAtPath(dllPath) as PluginImporter;
        var monoScript = AssetDatabase.LoadAssetAtPath<MonoScript>(dllPath);
        var icon = AssetDatabase.LoadAssetAtPath<Texture2D>(iconPath);        pluginImporter.SetIcon(monoScript.GetClass().FullName, icon);
        pluginImporter.SaveAndReimport();
    }
}
```
