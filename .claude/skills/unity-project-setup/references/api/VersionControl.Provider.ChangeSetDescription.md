<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.ChangeSetDescription.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| changeset | Changeset to query description of. |

### Description

Given a changeset only containing the changeset ID, this will start a task for quering the description of the changeset.

The resulting description can be retrieved using the task's "text" property.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Changeset Description")]
    static void ExampleChangeSetDescription()
    {
        AssetList assets = new AssetList();
        ChangeSet changeset = new ChangeSet("Unknown Description", "1111");
        Task t = Provider.ChangeSetDescription(changeset);
        t.Wait();
        Debug.Log(t.text);
    }
}
```

The code above will check the description of the changeset with the ID of "1111" and output it to the console.
