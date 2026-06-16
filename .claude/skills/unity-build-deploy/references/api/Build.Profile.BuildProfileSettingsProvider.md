<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Profile.BuildProfileSettingsProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides the display information for a custom settings section in the Build Profile window.

Additional resources: BuildProfileSettingsProviderAttribute.

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

### Properties

| Property | Description |
| --- | --- |
| canAddSetting | Callback that determines if the settings object this provider describes can be added to the given build profile. |
| displayName | Display name for the settings section in the Build Profile window. |
| hasCustomEditor | When the value is true, Unity uses a custom implementation of an Editor. Otherwise, Unity displays the default inspector for the settings object. |
| tooltip | Tooltip text for the custom settings section. If this value is empty, no tooltip is displayed. |
