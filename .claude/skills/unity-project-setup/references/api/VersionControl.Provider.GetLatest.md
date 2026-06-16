<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.GetLatest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | List of assets to update. |
| asset | Asset to update. |

### Description

Start a task for getting the latest version of an out of sync asset from the version control server.

Note that the Provider.GetLatest task does not solve file conflicts, in such cases consider using the Provider.Resolve method as well.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/GetLatest")]
    public static void ExampleGetLatest()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Task t = Provider.GetLatest(assets);
        t.Wait();
    }
}
```
