<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetLabels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The asset object to check. |

### Returns

**string[]** Returns all labels attached to a given asset.

### Description

Obtains all labels of a given asset.

```csharp
using System.Linq;
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Check If Labels Are Correct")]
    static void CheckIfLabelsAreCorrect()
    {
        for (var i = 0; i < 10; i++)
        {
            var texturePath = $"Assets/Textures/Road/Road{i}.png";
            var asset = AssetDatabase.LoadMainAssetAtPath(texturePath);
            var labelList = AssetDatabase.GetLabels(asset);
            if(!labelList.Contains("Road"))
                Debug.LogWarning($"Road Texture \"{texturePath}\" does not contain Road label");
        }
    }
}
```
