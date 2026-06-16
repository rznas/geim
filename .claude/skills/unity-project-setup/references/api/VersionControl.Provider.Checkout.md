<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Checkout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | List of assets to checkout. |
| asset | Asset to checkout. |
| mode | Tell the Provider to checkout just the asset file, the .meta file or both. |
| changeset | Tell the Provider to checkout the assets to a specific changeset. |

### Description

Checkout an asset or a list of assets from the version control system.

Some version control systems like Perforce or Plastic SCM require an asset to be checked out before it can be edited.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Checkout")]
    public static void ExampleCheckout()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        ChangeSet changeset = new ChangeSet("Description", "1111");
        Task t = Provider.Checkout(assets, CheckoutMode.Both, changeset);
        t.Wait();
    }
}
```

The code above will checkout the "ExampleAsset.cs" asset and move it to a changeset with an ID of "1111".
