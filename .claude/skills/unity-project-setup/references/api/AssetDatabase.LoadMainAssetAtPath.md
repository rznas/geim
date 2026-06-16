<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.LoadMainAssetAtPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | Filesystem path of the asset to load. |

### Returns

**Object** Returns the main asset object at `assetPath`.

### Description

Obtains the main asset object at `assetPath`.

The main asset is the asset at the root of a hierarchy (such as a Maya file which might contain multiple meshes and GameObjects). All paths are relative to the project folder, for example: `Assets/MyTextures/hello.png`.

Additional resources: AssetDatabase.LoadAssetAtPath, AssetDatabase.LoadAllAssetsAtPath, AssetDatabase.LoadAllAssetRepresentationsAtPath.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class MyPlayer : MonoBehaviour
{
    [MenuItem("AssetDatabase/Assign Materials To Models")]
    static void AssignGunMaterialsToModels()
    {
        var materials = new List<Material>();
        //Get all the materials that have the name gun in them using LoadMainAssetAtPath
        foreach (var asset in AssetDatabase.FindAssets("t:Material gun"))
        {
            var path = AssetDatabase.GUIDToAssetPath(asset);
            materials.Add((Material)AssetDatabase.LoadMainAssetAtPath(path));
        }        var materialID = 0;
        //Assign gun materials to their corresponding models MeshRenderer
        foreach (var asset in AssetDatabase.FindAssets("t:Model Gun"))
        {
            if (materialID >= materials.Count) materialID = 0;
            var path = AssetDatabase.GUIDToAssetPath(asset);
            var material = materials[materialID++];
            material.shader = Shader.Find("Standard");
            var modelMesh = (MeshRenderer) AssetDatabase.LoadAssetAtPath(path, typeof(MeshRenderer));
            modelMesh.sharedMaterial = material;
        }
    }
}
```
