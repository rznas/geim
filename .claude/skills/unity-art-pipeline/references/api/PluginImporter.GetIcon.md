<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PluginImporter.GetIcon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| className | The fully qualified class name of a MonoScript imported by this plugin. |

### Returns

**Texture2D** Returns the custom icon that will be associated with the imported MonoScript. If no custom icon will be associated with the imported MonoScript, returns null.

### Description

Gets the custom icon to associate with a MonoScript at import time.

Additional resources: MonoScript.GetClass, Type.FullName, PluginImporter.SetIcon, EditorGUIUtility.GetIconForObject.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Get Icon for MonoScript from PluginImporter")]
    public static void GetIconForMonoScriptFromPluginImporter()
    {
        var assetPath = "Assets/MyManagedPlugin.dll";
        var pluginImporter = AssetImporter.GetAtPath(assetPath) as PluginImporter;
        var monoScript = AssetDatabase.LoadAssetAtPath<MonoScript>(assetPath);        var icon = pluginImporter.GetIcon(monoScript.GetClass().FullName);
        Debug.Log("Icon for " + monoScript.GetClass().FullName + " in " + assetPath + " is " + icon);
    }
}
```
