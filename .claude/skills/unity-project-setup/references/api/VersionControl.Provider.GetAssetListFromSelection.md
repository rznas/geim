<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.GetAssetListFromSelection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the version control information about the currently selected Assets.

This method effectively adds all of the currently selected Assets to a AssetList which can be used for further processing.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/GetAssetListFromSelection")]
    public static void ExampleGetAssetListFromSelection()
    {
        AssetList assets = Provider.GetAssetListFromSelection();
        Debug.Log("Selected asset: " + assets[0].name.ToString());
    }
}
```

The code above adds the currently selected Asset to an AssetList and outputs its name to the console.
