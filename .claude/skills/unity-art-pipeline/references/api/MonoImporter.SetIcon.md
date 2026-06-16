<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoImporter.SetIcon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| icon | The custom icon to associate with the imported MonoScript. When the value is null, Unity restores the default icon. |

### Description

Sets a custom icon to associate with the imported MonoScript.

MonoScripts can have an associated custom icon. This icon is used in the Scene view, the Inspector, and the Project window.

Additional resources: MonoImporter.GetIcon, PluginImporter.SetIcon, EditorGUIUtility.SetIconForObject.

```csharp
using UnityEngine;
using UnityEditor;public class Example
{
    [MenuItem("Examples/Set Custom Icon on MonoScript")]
    static void SetCustomIconOnMonoScript()
    {
        var monoImporter = AssetImporter.GetAtPath("Assets/MyMonoBehaviour.cs") as MonoImporter;
        var icon = AssetDatabase.LoadAssetAtPath<Texture2D>("Assets/MyIcon.png");        monoImporter.SetIcon(icon);
        monoImporter.SaveAndReimport();
    }
}
```
