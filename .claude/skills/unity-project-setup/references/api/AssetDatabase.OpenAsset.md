<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.OpenAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| entityId | The EntityID of the asset. |
| lineNumber | The line number to open the text editor at, if appropriate. |
| columnNumber | The column number to open the text editor at, if appropriate. |
| instanceID | The InstanceID of the asset. |
| target | The asset object. |

### Returns

**bool** Returns true if the asset opened successfully, otherwise false.

### Description

Opens the asset with associated application.

Opens asset in an external editor, texture application or modelling tool depending on what type of asset it is.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Manually Check Textures")]
    static void OpenAssetExample()
    {
        for (var i = 0; i < 10; i++)
        {
            var texturePath = AssetDatabase.LoadMainAssetAtPath($"Assets/Textures/GroundTexture{i}.jpg");
            if(!EditorUtility.DisplayDialog($"Open next texture", $"Open GroundTexture{i}.jpg texture?", "Yes", "Cancel"))
                break;
            AssetDatabase.OpenAsset(texturePath);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| objects | An array of asset objects to open. |

### Returns

**void** Returns true if all assets opened successfully.

### Description

Opens multiple assets with their associated applications.

Opens the assets in an external editor, texture application or modelling tool depending on what type of asset it is.
