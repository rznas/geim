<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to mark a class as a version control system object.

This attribute enables Unity to detect custom VCS implementations. Your VCS object must also derive from VersionControlObject.

```csharp
using UnityEditor.VersionControl;[VersionControl("Custom")]
public class CustomVersionControlObject : VersionControlObject
{
}
```

VCS object name must be unique within Unity project.

Additional resources: VersionControlObject, VersionControlManager, VersionControlDescriptor.

### Properties

| Property | Description |
| --- | --- |
| displayName | Version control system display name. |
| name | Version control system name. |

### Constructors

| Constructor | Description |
| --- | --- |
| VersionControlAttribute | Constructs VersionControlAttribute. |
