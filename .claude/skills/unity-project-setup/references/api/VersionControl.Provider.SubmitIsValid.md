<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.SubmitIsValid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| changeset | The changeset to submit. |
| assets | The asset to submit. |

### Description

Returns true if submitting the assets is a valid operation.

Do note that the task will always return true if the changeset parameter is set to an existing changeset.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/SubmitIsValid")]
    public static void ExampleSubmitIsValid()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Debug.Log(Provider.SubmitIsValid(null, assets));
    }
}
```
