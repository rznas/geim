<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.VersionControlAttribute-displayName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Version control system display name.

Can be localized. Used in UI.

```csharp
using UnityEditor.VersionControl;
using UnityEngine;public class CustomVersionControlAttribute : VersionControlAttribute
{
    static string GetDisplayName()
    {
        return $"Custom ({Application.systemLanguage})";
    }    public CustomVersionControlAttribute()
        : base("Custom", GetDisplayName())
    {
    }
}[CustomVersionControl]
public class CustomVersionControlObject : VersionControlObject
{
}
```

Additional resources: VersionControlAttribute, VersionControlObject, VersionControlManager, VersionControlDescriptor.
