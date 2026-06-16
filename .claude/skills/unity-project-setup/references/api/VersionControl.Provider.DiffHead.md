<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.DiffHead.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | List of assets to diff. |
| includingMetaFiles | Whether or not to include the .meta file. |

### Description

Starts a task for showing a diff of the given assest versus their head revision.

Do note that some asset types do not save their changes to disk right after making them so it is recommended to manually save the asset using AssetDatabase.SaveAssets before calling the diff tool.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Diff")]
    public static void ExampleDiff()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        AssetDatabase.SaveAssets();
        Provider.DiffHead(assets, includingMetaFiles: false);
    }
}
```
