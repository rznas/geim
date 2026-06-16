<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CacheServerConnectionChangedParameters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct used for AssetDatabase.cacheServerConnectionChanged.

```csharp
using UnityEngine;
using UnityEditor;public class CacheServerConnectionChangedExample
{
    [MenuItem("AssetDatabase/Correct connection to the Cache Server")]
    static void CorrectChangeCacheServer()
    {
        var correctEndpoint = "192.168.1.210:8080";
        EditorSettings.cacheServerEndpoint = correctEndpoint;
        AssetDatabase.RefreshSettings();
    }    [MenuItem("AssetDatabase/Wrong connection to the Cache Server")]
    static void WrongChangeCacheServer()
    {
        var invalidEndpoint = "Invalid IP Address";
        EditorSettings.cacheServerEndpoint = invalidEndpoint;
        AssetDatabase.RefreshSettings();
    }    [InitializeOnLoadMethod]
    static void OncacheServerConnectionChanged()
    {
        AssetDatabase.cacheServerConnectionChanged += ConsoleLog;
    }    static void ConsoleLog(CacheServerConnectionChangedParameters param)
    {
        Debug.Log("Connection Changed");
    }
}
```
