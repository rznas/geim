<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetAssetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| entityId | The EntityId of the asset. |
| assetObject | A reference to the asset. |
| instanceID | The instance ID of the asset. |

### Returns

**string** The asset path name, or an empty string if the asset doesn't exist.

### Description

Returns the path name relative to the project folder where the asset is stored.

All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png".

```csharp
using UnityEngine;
using UnityEditor;public class CreateMaterialExample : MonoBehaviour
{
    [MenuItem("GameObject/Create Material")]
    static void CreateMaterial()
    {
        // Create a simple material asset        Material material = new Material(Shader.Find("Specular"));
        AssetDatabase.CreateAsset(material, "Assets/MyMaterial.mat");        // Print the path of the created asset
        Debug.Log(AssetDatabase.GetAssetPath(material));
    }
}
```
