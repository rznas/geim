<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.GetAssetByGUID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guid | GUID of asset. |

### Description

Returns version control information about an asset from a given GUID.

Returns null if the GUID is not known by the Unity Editor.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/GetAssetByGUID")]
    static void ExampleGetAssetByGUID()
    {
        string guid = AssetDatabase.AssetPathToGUID("Assets/ExampleAsset.mat");
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByGUID(guid));
        Debug.Log("Found an asset:  " + assets[0].name.ToString());
    }
}
```
