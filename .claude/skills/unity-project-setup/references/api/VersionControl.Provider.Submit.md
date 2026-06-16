<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Submit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| changeset | The changeset to submit. |
| list | The list of assets to submit. |
| description | The description of the changeset. |
| saveOnly | If true then only save the changeset to be submitted later. |

### Description

Starts a task that submits the assets to version control.

In version control systems like Git new changes have to be committed and then pushed to the repository separately. In Perforce or Plastic SCM a submit is an all in one task that both commits and pushes the newly made changes all at once.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Submit")]
    public static void ExampleSubmit()
    {
        AssetList assets = new AssetList();
        assets.Add(Provider.GetAssetByPath("Assets/ExampleAsset.cs"));
        Task t = Provider.Submit(new ChangeSet(), assets, "Example Description", saveOnly: false);
        t.Wait();
    }
}
```
