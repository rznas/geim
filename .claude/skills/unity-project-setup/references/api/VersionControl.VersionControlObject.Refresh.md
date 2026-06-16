<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlObject.Refresh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when the cached state should be discarded and the new state should be retrieved from the underlying VCS.

Unity calls this method when it regains application focus. The user might have made some changes to the state of version-controlled files outside of Unity and so your VersionControlObject should retrieve the updated state. Do not overwrite this method if there's no cached state to update.

```csharp
using UnityEditor.VersionControl;
using UnityEngine;[VersionControl("Custom")]
public class CustomVersionControlObject : VersionControlObject
{
    public override void Refresh()
    {
        Debug.Log("Custom VCS refresh.");
    }
}
```

Additional resources: VersionControlObject.
