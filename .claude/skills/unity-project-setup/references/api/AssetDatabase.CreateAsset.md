<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.CreateAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| asset | Object to use in creating the asset. |
| path | Project relative path for the new asset. |

### Description

Creates a new asset in a native Unity format.

Use this method to create an asset in one of Unity's native formats. For a list of native asset formats, refer to Native asset importers reference.

You can't use this method to create a prefab from a GameObject. To do this, use the PrefabUtility class instead. You also can't use this method to create non-native assets, such as text files or image files.

If an asset already exists at the path specified Unity overwrites it with the new asset. The path is relative to the project folder, for example: `Assets/MyStuff/hello.mat`. You must ensure that the path you provide uses a native asset extension, or Unity reports an error in the console. For example, `.mat` for materials, `.anim` for animations, or `.asset` for arbitrary other assets. For a list of native asset formats, refer to Native asset importers reference.

**Important:** You can't use this method to create assets in the `StreamingAssets` folder (Assets/StreamingAssets). If you attempt to create an asset in this folder, Unity reports an error in the console.

An asset file can contain multiple assets. After you create an asset file, you can use AssetDatabase.AddObjectToAsset to add additional assets to the file. When you add multiple objects to an asset, the order doesn't matter. No object serves as a root asset.

Don't use this method to create assets during import, for example from within a ScriptedImporter or Postprocessor. Doing so can prevent the import process from producing consistent (deterministic) results, and reports a warning in the console. For more information, refer to Check the consistency of the import process.

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
