<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase-cacheServerConnectionChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | Use CacheServerConnectionChangedParameters for this event. |

### Description

Unity raises this event when Cache Server connection is changed.

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
