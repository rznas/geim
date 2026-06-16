<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Revert.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | The list of assets to be reverted. |
| asset | The asset to be reverted. |
| mode | How to revert the assets. |

### Description

Reverts the specified assets by undoing any changes done since the last time you synced.

The last sync time is usually when Provider.GetLatest was last issued but may differ if an external version control client is used at the same time.

Note that after this operation is completed, Asset Database is not refreshed automatically. It can be updated by calling AssetDatabase.Refresh.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Revert")]
    public static void ExampleRevert()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Task t = Provider.Revert(assets, RevertMode.Normal);
        t.Wait();
    }
}
```

Provider.Revert can be used with two different revert modes - normal and unchanged. The normal revert mode reverts all of the local changes made while the unchanged mode only reverts files that haven't been modified yet.
