<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Merge.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | The list of conflicting assets to be merged. |

### Description

Initiates a merge task to handle the merging of conflicting Assets. This invokes a merge tool, which you can set in the External Tools section of the Preferences window, on the conflicting Assets. When the merge task finishes, the AssetList only contains the Assets that the tool could merge.

To correctly resolve the resulting AssetList states (and replace the files with the correct, merged version), you must call a subsequent Provider.Resolve task with a ResolveMethod.UseMerged ResolveMethod.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Merge")]
    public static void ExampleMerge()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Task t1 = Provider.Merge(assets);
        t1.Wait();
        Task t2 = Provider.Resolve(assets, ResolveMethod.UseMerged);
        t2.Wait();
    }
}
```
