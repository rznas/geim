<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Delete.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetProjectPath | The path to the asset that is to be deleted. |
| assets | List of assets to delete. |
| asset | Asset to delete. |

### Description

Starts a task to delete an Asset or a list of Assets from the disk and from the version control system.

Once the task has completed the resultCode of the task will tell if the assets were successfully deleted.

Note that after this operation is completed, Asset Database is not refreshed automatically. It can be updated by calling AssetDatabase.Refresh.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Delete")]
    public static void ExampleDelete()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs.meta"));
        Task t = Provider.Delete(assets);
        t.Wait();
    }
}
```
