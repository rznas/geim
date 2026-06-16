<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetCacheServerAddress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** Returns the IP address of the Cache Server in Editor Settings. Returns empty string if IP address is not set in Editor settings.

### Description

Gets the IP address of the Cache Server in Editor Settings.

Note: If you set a new value for the IP address, your new settings are not applied until you call AssetDatabase.RefreshSettings(). However, this method will return the value you have set regardless of whether you have applied the setting or no.

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour{
    [MenuItem("AssetDatabase/Debugging Connection to the Cache Server")]
    static void DebuggingConnectionToTheCacheServer()
    {
        //This will Enable Cache Server in Project Settings
        EditorSettings.cacheServerMode = CacheServerMode.Enabled;
        Debug.Log("Is Cache Server Enabled? - " + AssetDatabase.IsCacheServerEnabled());        var cacheServerIP = "10.37.44.195";
        ushort cacheServerPort = 10443;        if (AssetDatabase.IsConnectedToCacheServer() == false)
        {
            if (AssetDatabase.CanConnectToCacheServer(cacheServerIP, cacheServerPort) == false)
            {
                Debug.Log("Cache server is not available, check IP address and Port Number");
            }            else
            {
                Debug.Log("Cache server is available, but not connected now. Set correct IP and Port Number in Project Settings");
            }
        }        else
        {
            Debug.Log("Cache Server is connected");
            Debug.Log("Cache Server IP: " + AssetDatabase.GetCacheServerAddress());
            Debug.Log("Cache Server Port Number: " + AssetDatabase.GetCacheServerPort());
        }
    }
}
```
