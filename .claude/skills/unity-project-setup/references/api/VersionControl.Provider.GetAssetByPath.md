<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.GetAssetByPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| unityPath | Path to asset. |

### Description

Returns the version control information about an asset. Can be used with "AssetList.Add" to add assets to a list for further version control actions.

Will return null if the path is not known by the Unity Editor or if the asset is local only and hasn't been added to version control yet.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/GetAssetByPath")]
    public static void ExampleGetAssetByPath()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Debug.Log("Found an asset:  " + assets[0].name.ToString());
    }
}
```
