<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.RefreshSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Apply pending Editor Settings changes to the Asset pipeline.

Immediately applies any changes to the EditorSettings properties for the cache server. If not called, then changes to these settings do not take effect until you restart the Editor.

 List of the settings that require calling RefreshSettings to be applied:

 • EditorSettings.cacheServerNamespacePrefix

 • EditorSettings.cacheServerMode

 • EditorSettings.cacheServerEndpoint

 • EditorSettings.cacheServerEnableTls.

```csharp
using UnityEngine;
                        using UnityEditor;                        public class AssetDatabaseExamples : MonoBehaviour                        {
                        [MenuItem("AssetDatabase/Set Cache Server Project Settings")]
                        static void SetCacheServerProjectSettings()
                        {
                        EditorSettings.cacheServerMode = CacheServerMode.Enabled;
                        Debug.Log("Is Cache Server enabled? - " + AssetDatabase.IsCacheServerEnabled());                        EditorSettings.cacheServerEndpoint = "192.168.31.210:10443";
                        Debug.Log("Cache Server IP and Port number: " + AssetDatabase.GetCacheServerAddress() + ":" + AssetDatabase.GetCacheServerPort());                        EditorSettings.cacheServerEnableTls = false;                        EditorSettings.cacheServerEnableDownload = true;
                        Debug.Log("Is Cache Server download enabled? - " + AssetDatabase.GetCacheServerEnableDownload());                        EditorSettings.cacheServerEnableUpload = true;
                        Debug.Log("Is Cache Server upload enabled? - " + AssetDatabase.GetCacheServerEnableUpload());                        EditorSettings.cacheServerNamespacePrefix = "default";
                        Debug.Log("Cache Server Namespace prefix: " + AssetDatabase.GetCacheServerNamespacePrefix());                        //This command is required to apply changes to some of the EditorSettings properties above
                        AssetDatabase.RefreshSettings();
                        }
                        }
```
