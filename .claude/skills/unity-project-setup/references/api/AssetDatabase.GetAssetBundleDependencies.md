<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetAssetBundleDependencies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetBundleName | The name of the AssetBundle for which dependencies are required. |
| recursive | If false, returns only AssetBundles which are direct dependencies of the input; if true, includes all indirect dependencies of the input. |

### Returns

**string[]** The names of all AssetBundles that the input depends on.

### Description

Given an **assetBundleName**, returns the list of AssetBundles that it depends on.

```csharp
using System.Text;
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Find Bundles With Dependencies")]
    static void BundleDependency()
    {
        var allBundleNames = AssetDatabase.GetAllAssetBundleNames();
        foreach (var bundle in allBundleNames)
        {
            var dependencies = AssetDatabase.GetAssetBundleDependencies(bundle, true);
            if (dependencies.Length == 0)
                continue;
            var dependencyString = new StringBuilder();
            foreach (var dependency in dependencies)
            {
                dependencyString.Append($"\"{dependency}\" ");
            }
            Debug.Log($"{bundle} depends on {dependencyString}");
        }
    }
}
```
