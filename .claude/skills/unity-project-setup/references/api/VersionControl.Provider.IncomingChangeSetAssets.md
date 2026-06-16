<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.IncomingChangeSetAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| changeset | Incoming changeset. |
| changesetID | Incoming changesetid. |

### Description

Given an incoming changeset this will start a task to query the version control server for which assets are part of the changeset.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/ChangeSetAssets")]
    public static void ExampleChangeSetAssets()
    {
        Task t1 = Provider.IncomingChangeSetAssets("1111");
        t1.Wait();
        t1.assetList.ForEach(asset => Debug.Log(asset.name + " " + asset.state.ToString()));
    }
}
```

The code above will return the names and version control states for the assets belonging to the "1111" incoming changeset.
