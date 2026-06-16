<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.LoadAssetByGUID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetGUID | GUID of the object. |
| type | Data type of the asset. |

### Returns

**Object** The asset matching the parameters.

### Description

Loads an asset object of type `type` by given GUID `assetGUID`.

A GUID (Globally Unique Identifier) is a 128-bit value used to uniquely identify assets, such as scenes, prefabs, and other files, within a Unity project

**Note:**
 This returns only an asset object that is visible in the Project view. If the asset is not found `LoadAssetByGUID` returns Null.

```csharp
using UnityEngine;
using UnityEditor;public class Example
{
    [MenuItem("Example/LoadAssetByGUID Example")]
    static void ExampleScript()
    {
        // Find assets named 'MyTexture' and load it using its GUID:
        GUID[] guids = AssetDatabase.FindAssetGUIDs("MyTexture t:texture2D", new[] {"Assets/MyAwesomeProps"});
        var myTexture = AssetDatabase.LoadAssetByGUID<Texture2D>(guids[0]);
        if (myTexture)
        {
            Debug.Log("Found and loaded MyTexture");
        }        
    }
}
```
