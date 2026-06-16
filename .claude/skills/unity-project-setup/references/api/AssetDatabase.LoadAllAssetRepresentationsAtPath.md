<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.LoadAllAssetRepresentationsAtPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The path of the asset. |

### Returns

**Object[]** Returns all sub-assets at `assetPath`.

### Description

Obtains all sub-assets at `assetPath`.

This method only returns sub-assets that are visible in the Project view.
 All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png"

**Note**: Sub-assets can be added explicitly via AssetDatabase.AddObjectToAsset
 Additional resources: AssetDatabase.LoadMainAssetAtPath, AssetDatabase.LoadAllAssetsAtPath, HideFlags.HideInHierarchy.

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    [MenuItem("AssetDatabase/LoadAllAssetRepresentationsAtPath")]
    private static void PrintSubAssets()
    {
        Object[] data = AssetDatabase.LoadAllAssetRepresentationsAtPath("Assets/MySpriteTexture.png");        Debug.Log(data.Length + " Sub Assets");        foreach (Object o in data)
        {
            Debug.Log(o);
        }        // outputs:
        //  4 Sub Assets
        //  MyTexture_0 (UnityEngine.Sprite)
        //  MyTexture_1 (UnityEngine.Sprite)
        //  MyTexture_2 (UnityEngine.Sprite)
        //  MyTexture_3 (UnityEngine.Sprite)
    }
}
```
