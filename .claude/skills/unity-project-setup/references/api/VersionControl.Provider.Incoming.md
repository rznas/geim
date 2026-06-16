<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.Incoming.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Starts a task that queries the version control server for incoming changes.

The task returns the incoming changesets which then can be accessed through the task's Task.changeSets property once it has been completed.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Incoming")]
    public static void ExampleIncoming()
    {
        ChangeSets exampleChangesets = new ChangeSets();
        ChangeSet exampleChangeset = new ChangeSet();
        Task t1 = Provider.Incoming();
        t1.Wait();
        exampleChangesets = t1.changeSets;
        exampleChangeset = exampleChangesets[0];
        Task t2 = Provider.IncomingChangeSetAssets(exampleChangeset);
        t2.Wait();
        t2.assetList.ForEach(asset => Debug.Log(asset.name + " " + asset.state.ToString()));
    }
}
```

The code above fetches the incoming changesets using Provider.Incoming and parses it to Provider.IncomingChangeSetAssets in order to output the incoming asset file names and their status.
