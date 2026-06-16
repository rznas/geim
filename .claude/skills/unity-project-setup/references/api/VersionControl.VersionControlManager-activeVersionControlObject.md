<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlManager-activeVersionControlObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The VersionControlObject representing active VCS.

If there is no currently active VersionControlObject, this property returns **null**.

```csharp
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;static class Example
{
    [MenuItem("Example/Print Active VCS")]
    static void PrintActiveVCS()
    {
        var vco = VersionControlManager.activeVersionControlObject;
        if (vco != null)
            Debug.Log("Active VCS: " + vco.name);
        else
            Debug.Log("VCS is not activated.");
    }
}
```

Additional resources: VersionControlManager, VersionControlObject, Provider.
