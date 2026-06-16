<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Lock.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| asset | Asset to lock/unlock. |
| assets | List of assets to lock/unlock. |
| locked | True to lock assets, false to unlock assets. |

### Description

Attempt to lock an asset for exclusive editing.

Depending on version control system and server setup this might be an exclusive lock preventing other people from even modifing the asset (for example: Plastic SCM or Git) or it might simply prevent other people from submitting the asset to the version control server (Perforce).

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Lock")]
    public static void ExampleLock()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Task t1 = Provider.Checkout(assets, CheckoutMode.Exact);
        t1.Wait();
        Task t2 = Provider.Lock(assets, locked: true);
        t2.Wait();
    }
}
```
