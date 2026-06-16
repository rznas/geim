<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.RevertIsValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | List of assets to test. |
| asset | Asset to test. |
| mode | Revert mode to test for. |

### Description

Returns true if Provider.Revert is a valid task to perform on at least one of the given assets in the list.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/RevertIsValid")]
    public static void ExampleRevertIsValid()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Debug.Log(Provider.RevertIsValid(assets, RevertMode.Normal));
    }
}
```

Do note that, RevertMode.Unchanged will only test locally checked out and locked files. While the RevertMode.Normal will test locally checked out, locked, added and deleted files.
