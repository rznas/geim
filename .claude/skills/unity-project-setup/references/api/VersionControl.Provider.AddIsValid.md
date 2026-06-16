<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.AddIsValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | List of assets to test. |

### Description

Given a list of assets this function returns true if Provider.Add is a valid task to perform on at least one of the assets in the list.

An Asset is considered to be valid for adding if it has not already been added to the version control provider. If it has already been added, it is invalid for adding.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/AddIsValid")]
    static void ExampleAddIsValid()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.mat"));
        Debug.Log(Provider.AddIsValid(assets));
    }
}
```
