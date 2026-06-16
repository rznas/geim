<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.GetScriptingDefineSymbols.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildTarget | The NamedBuildTarget. |

### Description

Gets the array of symbols for script compilation for the build target you select. Symbols are semicolon-separated. For example, "SYMBOL1;SYMBOL2".

```csharp
using UnityEditor;
using UnityEditor.Build;
using UnityEngine;public class GetScriptingDefineSymbolsExample
{
    [MenuItem("Tools/Log Scripting Define Symbols")]
    static void LogScriptingDefineSymbols()
    {
        // Using built-in constants.
        string standaloneDefines = PlayerSettings.GetScriptingDefineSymbols(NamedBuildTarget.Standalone);
        UnityEngine.Debug.Log("Standalone: " + standaloneDefines);        // Migrating from BuildTargetGroup.
        NamedBuildTarget namedTarget = NamedBuildTarget.FromBuildTargetGroup(BuildTargetGroup.Android);
        string androidDefines = PlayerSettings.GetScriptingDefineSymbols(namedTarget);
        UnityEngine.Debug.Log("Android: " + androidDefines);
    }
}
```

### Description

Gets the array of user-specified symbols for script compilation for the build target you select.
