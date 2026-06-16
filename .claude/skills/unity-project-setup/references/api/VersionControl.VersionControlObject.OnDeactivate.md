<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlObject.OnDeactivate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when your version control system is deactivated.

This happens when the user selects a different VCS from Version Control settings window, or if it gets deactivated from script, or when the Editor is closed.

Unity calls this method to inform VersionControlObject that it's no longer active and VCS operations such as checkout or submit should no longer be performed.

```csharp
using UnityEditor.VersionControl;
using UnityEngine;[VersionControl("Custom")]
public class CustomVersionControlObject : VersionControlObject
{
    public override void OnActivate()
    {
        Debug.Log("Custom VCS activated.");
    }    public override void OnDeactivate()
    {
        Debug.Log("Custom VCS deactivated.");
    }
}
```

Additional resources: VersionControlObject.
