<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.IsOpenForEdit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| asset | Asset to test. |

### Description

Returns true if an asset can be edited.

Version control systems like Perforce or Plastic SCM require that an asset be checked out before it can be edited. In such cases this task will test whether the asset is checked out and editable.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/IsOpenForEdit")]
    public static void ExampleIsOpenForEdit()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Debug.Log("ExampleAsset.cs is editable?" + Provider.IsOpenForEdit(assets[0]));
    }
}
```

Some version control systems like Git support editing without checking out the asset, in this case the task will always return true.
