<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Version control system name. |
| displayName | Version control system display name. |

### Description

Constructs VersionControlAttribute.

Display name is optional. Regular name will be used if not specified.

```csharp
using UnityEditor.VersionControl;[VersionControl("Custom", "Custom VCS")]
public class CustomVersionControlObject : VersionControlObject
{
}
```

Additional resources: VersionControlAttribute, VersionControlObject, VersionControlManager, VersionControlDescriptor.
