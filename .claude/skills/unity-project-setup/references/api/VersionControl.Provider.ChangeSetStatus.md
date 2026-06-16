<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.ChangeSetStatus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| changeset | Changeset to query for assets. |
| changesetID | ChangesetID to query for assets. |

### Description

Retrieves a list of assets belonging to a changeset.

This is intended to work only with outgoing changesets. Use Provider.IncomingChangeSetAssets if you would like to retrieve assets from incoming changesets.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("VersionControl/ChangeSetStatus")]
    static void ExampleChangeSetStatus()
    {
        Task t = Provider.ChangeSetStatus("1111");
        t.Wait();
        t.assetList.ForEach(asset => Debug.Log(asset.name + " " + asset.state.ToString()));
    }
}
```

The code above will output a full list of the asset names as well as their version control states for the given changelist "1111".
