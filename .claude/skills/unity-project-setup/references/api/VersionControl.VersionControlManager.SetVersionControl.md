<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlManager.SetVersionControl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Unique version control system name. |

### Returns

**bool** Returns **true** if VCS has been activated. **false** otherwise.

### Description

Sets the active version control system.

If a different VCS was previously active, it will be deactivated. You can use the versionControlDescriptors property to retrieve all the available version control systems. You can check the newly activated VersionControlObject by using the activeVersionControlObject property.

```csharp
using UnityEditor;
using UnityEditor.VersionControl;
using UnityEngine;static class Example
{
    [MenuItem("Example/Set Custom VCS")]
    static void SetCustomVCS()
    {
        if (!VersionControlManager.SetVersionControl("Custom"))
            Debug.LogWarning("Failed to set custom VCS.");
    }
}
```

Additional resources: VersionControlManager, VersionControlObject, VersionControlDescriptor, Provider.
