<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetPreloadedAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Assigns the assets that will be loaded at start up in the player and be kept alive until the player terminates.

This example shows how a ScriptableObject can be used to store data that can be accessed at any time throughout the lifetime of the player.

```csharp
using System.Linq;
using UnityEngine;// We use this class to store general config data that can be used in the player
public class ConfigObject : ScriptableObject
{
    public string text;    public static ConfigObject configInstance;    #if UNITY_EDITOR
    [UnityEditor.MenuItem("Assets/Create/Config Object")]
    public static void CreateAsset()
    {
        var path = UnityEditor.EditorUtility.SaveFilePanelInProject("Save Config", "config", "asset", string.Empty);
        if (string.IsNullOrEmpty(path))
            return;        var configObject = CreateInstance<ConfigObject>();
        UnityEditor.AssetDatabase.CreateAsset(configObject, path);        // Add the config asset to the build
        var preloadedAssets = UnityEditor.PlayerSettings.GetPreloadedAssets().ToList();
        preloadedAssets.Add(configObject);
        UnityEditor.PlayerSettings.SetPreloadedAssets(preloadedAssets.ToArray());
    }
    #endif    void OnEnable()
    {
        configInstance = this;
    }
}
```

```csharp
using UnityEngine;public class UseConfigObject : MonoBehaviour
{
    void OnGUI()
    {
        if (ConfigObject.configInstance != null)
        {
            GUILayout.Label("Found the config asset. The message was: " + ConfigObject.configInstance.text);
        }
    }
}
```

Additional resources: PlayerSettings.GetPreloadedAssets, EditorBuildSettings.AddConfigObject.
