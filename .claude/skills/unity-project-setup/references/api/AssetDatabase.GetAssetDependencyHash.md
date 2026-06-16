<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetAssetDependencyHash.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path to the asset. |
| guid | GUID of the asset. |

### Returns

**Hash128** Aggregate hash.

### Description

Returns the hash of all the dependencies of an asset.

The hash aggregates the following: source asset path, source asset, meta file, target platform and importer version. The change of this hash indicates that the imported asset may have changed so the relevant asset bundles should be rebuilt.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Dependency Hash Example")]
    public static void DependencyHashExample()
    {
        //Load a Material, change its shader and save it
        var matPath = "Assets/Material.mat";
        var asset = (Material)AssetDatabase.LoadMainAssetAtPath(matPath);
        asset.shader = Shader.Find("Unlit/Texture");
        AssetDatabase.SaveAssets();        //Print out the hash into the console
        var hash = AssetDatabase.GetAssetDependencyHash(matPath);
        Debug.Log(hash);        //Change the Shader on the Material and save it
        asset.shader = Shader.Find("Standard");
        AssetDatabase.SaveAssets();        //Hash will be different
        hash = AssetDatabase.GetAssetDependencyHash(matPath);
        Debug.Log(hash);
    }
}
```
