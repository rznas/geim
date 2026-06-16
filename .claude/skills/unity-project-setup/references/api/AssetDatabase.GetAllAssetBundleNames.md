<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetAllAssetBundleNames.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string[]** Returns an array of AssetBundle names.

### Description

Obtain all the AssetBundle names registered in the Asset Database.

```csharp
using UnityEditor;
using UnityEngine;public class GetAssetBundleNames
{
    [MenuItem("Assets/Get Asset Bundle names")]
    static void GetNames()
    {
        var names = AssetDatabase.GetAllAssetBundleNames();
        foreach (string name in names)
            Debug.Log("Asset Bundle: " + name);
    }
}
```
