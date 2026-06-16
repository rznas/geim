<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProviderGroupAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to register multiple SettingsProvider items. Use this attribute to decorate a function that returns an array of SettingsProvider instances. If the function returns null, no SettingsProvider appears in the Settings window.

```csharp
using System.IO;
using System.Linq;
using UnityEditor;class XRSettings : SettingsProvider
{
    const string k_XRSettingsFolder = "Assets/Editor/XRSettings";
    public XRSettings(string path, SettingsScope scope = SettingsScope.Project)
        : base(path, scope)
    {
    }    [SettingsProviderGroup]
    public static SettingsProvider[] CreateProviders()
    {
        var files = Directory.GetFileSystemEntries(k_XRSettingsFolder, "*.json");
        return files.Select(entry =>
        {
            // First parameter is the path of the settings in the Settings window.
            return new XRSettings("Project/XRSettings/" + Path.GetFileNameWithoutExtension(entry));
        }).ToArray();
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| SettingsProviderGroupAttribute | Creates a SettingsProviderGroupAttribute used to register multiple SettingsProviders. |
