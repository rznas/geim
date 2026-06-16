<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Status.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | The asset list to fetch state information for. |
| asset | The asset to fetch state information for. |
| recursively | If any assets specified are folders this flag will get status for all descendants of the folder as well. |

### Description

Starts a task that will fetch the most recent status about the asset or assets from the revision control system.

The updated assets can be access through the task's assetList property once it has completed.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Status")]
    public static void ExampleStatus()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Task t = Provider.Status(assets);
        t.Wait();
        t.assetList.ForEach(asset => Debug.Log(asset.name + " " + asset.state.ToString()));
    }
}
```

The example code above will check the status of the given example asset and its .meta file and output that information into the console.
