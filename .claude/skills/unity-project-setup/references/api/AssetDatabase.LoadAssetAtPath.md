<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.LoadAssetAtPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The project-relative path of the asset to load. |
| type | The type of asset to load. This type must derive from `UnityEngine.Object`, for example `Texture2D` or `Mesh`. |

### Returns

**Object** The first asset object of type `type` at given path `assetPath`.

### Description

Retrieves the first asset object of type `type` at given path `assetPath`.

Some asset files may contain multiple objects. (such as a Maya file which may contain multiple Meshes and GameObjects). All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png".

**Note:**
 The **assetPath** parameter is not case sensitive.
 This returns only an asset object that is visible in the Project view. If the asset is not found `LoadAssetAtPath` returns `null`.

```csharp
using UnityEngine;
using UnityEditor;public class MyPlayer : MonoBehaviour
{
    [MenuItem("AssetDatabase/LoadAssetExample")]
    static void ImportExample()
    {
        Texture2D t = (Texture2D)AssetDatabase.LoadAssetAtPath("Assets/Textures/texture.jpg", typeof(Texture2D));
    }
}
```

Additional resources: AssetDatabase.LoadMainAssetAtPath, AssetDatabase.LoadAllAssetsAtPath.

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The project-relative path of the asset to load. |

### Returns

**T** The first asset object at the given `assetPath`.

### Description

Retrieves the first asset object at given path `assetPath`.

This returns only an asset object that is visible in the Project view. If the asset is not found `LoadAssetAtPath` returns `null`.
