<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.GetLatestIsValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | List of assets to test. |

### Description

The task tests the given asset list and returns true if Provider.GetLatest is valid operation for one or more assets.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/GetLatestIsValid")]
    public static void ExampleGetLatestIsValid()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs.meta"));
        Task t = Provider.GetLatest(assets);
        t.Wait();
    }
}
```
