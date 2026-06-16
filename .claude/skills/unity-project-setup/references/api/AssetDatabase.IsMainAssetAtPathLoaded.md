<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.IsMainAssetAtPathLoaded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | Filesystem path of the asset to load. |

### Returns

**bool** Returns true if the main asset object at `assetPath` is loaded in memory.

### Description

Checks whether the main asset object at `assetPath` is loaded in memory.

All paths are relative to the Project folder, for example: "Assets/MyTextures/hello.png".

Additional resources: AssetDatabase.LoadMainAssetAtPath, Resources.UnloadAsset, EditorUtility.UnloadUnusedAssetsImmediate.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Is Main Asset At Path Loaded")]
    static void IsMainAssetAtPathLoadedExample()
    {
        //Create a material and unload it
        var materialPath = "Assets/Materials/NewMat0.mat";
        var material = new Material(Shader.Find("Standard"));
        AssetDatabase.CreateAsset(material, materialPath);
        Resources.UnloadAsset(material);        //This will be false
        Debug.Log(AssetDatabase.IsMainAssetAtPathLoaded(materialPath));
        //Load material into memory
        AssetDatabase.LoadAssetAtPath(materialPath, typeof(Object));
        //This will be true
        Debug.Log(AssetDatabase.IsMainAssetAtPathLoaded(materialPath));
    }
}
```
