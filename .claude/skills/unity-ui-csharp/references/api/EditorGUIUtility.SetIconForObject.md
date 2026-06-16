<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.SetIconForObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The GameObject or MonoScript to associate the icon with. |
| icon | The custom icon to associate with the GameObject or MonoScript. When this value is null, the default icon is restored. |

### Description

Sets a custom icon to associate with a GameObject or MonoScript. The custom icon is displayed in the Scene view and the Inspector.

Custom icons for GameObjects are saved in the scene.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Set Custom Icon on GameObject")]
    public static void SetCustomIconOnGameObject()
    {
        var go = new GameObject();
        var icon = AssetDatabase.LoadAssetAtPath<Texture2D>("Assets/MyIcon.png");        EditorGUIUtility.SetIconForObject(go, icon);
    }
}
```

Using this function, you can set custom icons directly on a MonoScript. However the next time the script is reimported, the change will be lost.

To make the custom icon persistent, call MonoImporter.SetIcon and AssetImporter.SaveAndReimport. If the script is in a managed plugin, call PluginImporter.SetIcon instead of MonoImporter.SetIcon.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Set Custom Icon on MonoScript")]
    public static void SetCustomIconOnMonoScript()
    {
        var monoImporter = AssetImporter.GetAtPath("Assets/MyMonoBehaviour.cs") as MonoImporter;
        var monoScript = monoImporter.GetScript();
        var icon = AssetDatabase.LoadAssetAtPath<Texture2D>("Assets/MyIcon.png");        EditorGUIUtility.SetIconForObject(monoScript, icon);        // make the custom icon persistent
        monoImporter.SetIcon(icon);
        monoImporter.SaveAndReimport();
    }
}
```

When you set custom icons from a GUI, it is recommended that you defer reimport until the GUI is closed. If you reimport before the GUI is closed, the domain reload caused by recompiling the script could lead to a poor user experience.

Additional resources: MonoImporter, PluginImporter.
