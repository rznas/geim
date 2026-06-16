<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SettingsProviderAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to register a new SettingsProvider. Use this attribute to decorate a function that returns an instance of a SettingsProvider. If the function returns null, no SettingsProvider appears in the Settings window.

```csharp
using System.IO;
using System.Linq;
using UnityEditor;class MyCustomSettingsProvider : SettingsProvider
{
    const string k_MyCustomSettingsPath = "Resources/MyCustomSettings.asset";
    public MyCustomSettingsProvider(string path, SettingsScope scope)
        : base(path, scope) {}    public static bool IsSettingsAvailable()
    {
        return File.Exists(k_MyCustomSettingsPath);
    }    [SettingsProvider]
    public static SettingsProvider CreateMyCustomSettingsProvider()
    {
        if (IsSettingsAvailable())
        {
            return new MyCustomSettingsProvider("MyCustomSettings", SettingsScope.Project);
        }        // Settings Asset doesn't exist yet. No need to display anything in the Settings window.
        return null;
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| SettingsProviderAttribute | Creates a new SettingsProviderAttribute used to register new SettingsProvider. |
