<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.CheckoutIsValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | List of assets. |
| asset | Single asset. |
| mode | Specify to check only asset files, meta files or both. |

### Description

Given an asset or a list of assets this function returns true if Provider.Checkout is a valid task to perform on at least one of the given assets.

The CheckoutMode option can be used to narrow down the asset list to a specific type. For example: to only check whether meta files can be checked out and to ignore their asset file states, the CheckoutMode.Meta must be used.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/CheckoutIsValid")]
    public static void ExampleCheckoutIsValid()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs.meta"));
        Debug.Log(Provider.CheckoutIsValid(assets, CheckoutMode.Meta));
    }
}
```

The code above will check the "ExampleAsset.cs" meta file and return true to the console if It can be checked out.
