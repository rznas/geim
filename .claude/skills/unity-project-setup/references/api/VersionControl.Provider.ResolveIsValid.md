<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.ResolveIsValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | The list of asset to be resolved. |

### Description

Tests if any of the assets in the list have the conflicted state and can be resolved.

Returns true if one or more assets in the list are resolvable.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/ResolveIsValid")]
    public static void ExampleResolveIsValid()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        bool valid = Provider.ResolveIsValid(assets);
        Debug.Log("Can the file be resolved?" + valid);
    }
}
```
