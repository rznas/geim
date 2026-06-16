<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlManager-versionControlDescriptors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array containing all available version control systems.

Each VersionControlDescriptor contains a unique VCS name. You can pass the VCS name to SetVersionControl to activate that VCS.

```csharp
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;static class Example
{
    [MenuItem("Example/Print Available VCS")]
    static void PrintAvailableVCS()
    {
        var message = "Available version control systems:";
        foreach (var descriptor in VersionControlManager.versionControlDescriptors)
            message += " " + descriptor.displayName;
        Debug.Log(message);
    }
}
```

Additional resources: VersionControlManager, VersionControlObject, VersionControlDescriptor.
