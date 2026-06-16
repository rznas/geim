<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlObject.OnActivate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when your version control system is activated.

This happens when user selects new VCS from Version Control settings window, when it gets activated from script, or during Unity startup.

Unity calls this method to inform your VersionControlObject that it's now active and that it's safe to perform VCS operations such as checkout or submit.

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
