<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Add.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assets | List of assets to add to version control system. |
| asset | Single asset to add to version control system. |
| recursive | Set this to true if adding should be done recursively into subfolders. |

### Description

Allows you to add files to version control via script.

If you have selected a version control integration in Unity's project settings panel, the default setting is for new files to be automatically added to version control. However, you can disable the "Automatic add" option to prevent this. This method is intended to be used to allow you to add files to version control manually via script, if you have disabled "Automatic add".

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Add")]
    static void ExampleAdd()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Task t = Provider.Add(assets, recursive: false);
        t.Wait();
    }
}
```
