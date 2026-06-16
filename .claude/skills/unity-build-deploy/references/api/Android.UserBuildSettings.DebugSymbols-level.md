<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.UserBuildSettings.DebugSymbols-level.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the type of debug metadata to include in the symbol files.

You can choose to include either a symbol table that translates active memory addresses into method names, or complete debugging information for in-depth debugging.

```csharp
using UnityEditor.Android;
using Unity.Android.Types;public class Settings
{
    public void Setup()
    {
        UserBuildSettings.DebugSymbols.level = DebugSymbolLevel.SymbolTable;
    }
}
```
