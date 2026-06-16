<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Profile.BuildProfileSettingsProviderAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies if a settings object applies for a build profile and makes it available as a new section in the Build Profile window.

When defined, this class lets a user add a settings object to a build profile using the **Add Settings** option in the Build Profile window. This class expects a static method that returns a BuildProfileSettingsProvider instance for a settings type. Settings objects must be a subclass of ScriptableObject.

**Note:** Only implementations from Unity registry packages are supported.

Additional resources: BuildProfileSettingsProvider.

```csharp
using UnityEngine;
using UnityEditor.Build.Profile;class SampleSettings : ScriptableObject
{
    public bool myBoolSetting;
 
    [BuildProfileSettingsProvider(typeof(SampleSettings))]
    static BuildProfileSettingsProvider createProvider() => new  BuildProfileSettingsProvider("MySampleSettings")
    {
        tooltip = "Sample settings provider for a ScriptableObject."
    };
}
```
