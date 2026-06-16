<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.UserBuildSettings.DebugSymbols-format.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the format for the symbols package.

You can package symbols as a zip file, directly embed those into the app bundle (aab), or use both methods.

**Note:** Unity doesn’t embed symbols into an apk. In this case, upload a separate zip file with symbols.

```csharp
using UnityEditor.Android;
using Unity.Android.Types;public class Settings
{
    public void Setup()
    {
        UserBuildSettings.DebugSymbols.format = DebugSymbolFormat.IncludeInBundle | DebugSymbolFormat.Zip | DebugSymbolFormat.LegacyExtensions;
    }
}
```
