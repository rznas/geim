<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.LoadAllAssetsAtPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | Filesystem path to the asset. |

### Returns

**Object[]** Returns an array of all assets at `assetPath`.

### Description

Obtains an array of all assets at `assetPath`.

Some asset files might contain multiple sub assets (such as a Maya file which may contain multiple Meshes and GameObjects).
 All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png".
 This method returns the main Asset and all sub Assets at a given path, including those hidden in the Project view.

**Note**: The main asset is not guaranteed to be at index 0 in the array

Additional resources: AssetDatabase.LoadMainAssetAtPath, AssetDatabase.LoadAllAssetRepresentationsAtPath, AssetDatabase.AddObjectToAsset, HideFlags.HideInHierarchy, EditorUtility.UnloadUnusedAssetsImmediate.

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    [MenuItem("AssetDatabase/LoadAllAssetsAtPath")]
    private static void PrintAssets()
    {
        Object[] data = AssetDatabase.LoadAllAssetsAtPath("Assets/MySpriteTexture.png");        Debug.Log(data.Length + " Assets");        foreach (Object o in data)
        {
            Debug.Log(o);
        }        // outputs:
        //  5 Assets
        //  MySpriteTexture (UnityEngine.Texture2D)
        //  MyTexture_0 (UnityEngine.Sprite)
        //  MyTexture_1 (UnityEngine.Sprite)
        //  MyTexture_2 (UnityEngine.Sprite)
        //  MyTexture_3 (UnityEngine.Sprite)
    }
}
```

Additional resources: AssetDatabase.LoadAssetAtPath.
