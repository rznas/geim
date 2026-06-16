<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GUIDToAssetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guid | The GUID of an asset. |

### Returns

**string** Path of the asset relative to the project folder.

### Description

Gets the corresponding asset path for the supplied GUID, or an empty string if the GUID can't be found.

Returned paths are relative to the project folder, for example: "Assets/MyTextures/hello.png".

```csharp
using UnityEditor;
using UnityEngine;public class GUIDToAssetPathExample : MonoBehaviour
{
    [MenuItem("APIExamples/GUIDToAssetPath")]
    static void MaterialPathsInProject()
    {
        var allMaterials = AssetDatabase.FindAssets("t: Material");        foreach (var guid in allMaterials)
        {
            var path = AssetDatabase.GUIDToAssetPath(guid);
            Debug.Log(path);
        }
    }
}
```

See AssetDatabase.AssetPathToGUID for a version that returns a string instead of a UnityEditor.GUID.
