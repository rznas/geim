<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Provider.ChangeSets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets a list of pending changesets owned by the current user.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("Version Control/Changesets")]
    static void ExampleChangeSets()
    {
        Task t = Provider.ChangeSets();
        t.Wait();
        t.changeSets.ForEach(changeset => Debug.Log(changeset.id + " : " + changeset.description));
    }
}
```

The code above will output all of the currently active changesets to the console.
